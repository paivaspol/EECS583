; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Parser.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { i8*, i32, i32 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { {}*, {}*, i32 (%struct.sv*, %struct.magic*)*, {}*, {}*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.xpv = type { i8*, i64, i64 }
%struct.p_state = type { i32, %struct.sv*, i64, i64, i64, i8, i8, i8*, i8, i8, i8*, %struct.sv*, i8, i64, i64, i64, %struct.sv*, i32, %struct.av*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sv*, [9 x %struct.p_handler], i8, %struct.hv*, %struct.hv*, %struct.hv*, %struct.sv*, i32, %struct.hv*, %struct.sv* }
%struct.p_handler = type { %struct.sv*, %struct.sv* }
%struct.token_pos = type { i8*, i8* }
%struct.literal_tag = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"tokenpos\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"token0\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"tagname\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"@attr\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"attrseq\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"dtext\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"is_cdata\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"skipped_text\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"offset_end\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@argname = global [20 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str19, i32 0, i32 0)], align 16
@vtbl_free_pstate = global { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* } { i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* null, i32 (%struct.sv*, %struct.magic*)* @magic_free_pstate, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)* null, i32 (%struct.magic*, %struct.clone_params*)* null }, align 8
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str20 = private unnamed_addr constant [41 x i8] c"Usage: HTML::Parser::_alloc_pstate(self)\00", align 1
@.str21 = private unnamed_addr constant [26 x i8] c"Not a reference to a hash\00", align 1
@.str22 = private unnamed_addr constant [28 x i8] c"HTML::Entities::entity2char\00", align 1
@.str23 = private unnamed_addr constant [18 x i8] c"_hparser_xs_state\00", align 1
@.str24 = private unnamed_addr constant [40 x i8] c"Usage: HTML::Parser::parse(self, chunk)\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"Parse loop not allowed\00", align 1
@PL_markstack_max = external global i32*
@PL_errgv = external global %struct.gv*
@PL_Xpv = external global %struct.xpv*
@.str26 = private unnamed_addr constant [31 x i8] c"Usage: HTML::Parser::eof(self)\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"Usage: %s(pstate, ...)\00", align 1
@.str28 = private unnamed_addr constant [31 x i8] c"Unknown boolean attribute (%d)\00", align 1
@PL_sv_yes = external global %struct.sv
@PL_sv_no = external global %struct.sv
@.str29 = private unnamed_addr constant [58 x i8] c"Usage: HTML::Parser::boolean_attribute_value(pstate, ...)\00", align 1
@PL_sv_undef = external global %struct.sv
@.str30 = private unnamed_addr constant [32 x i8] c"Unknown tag-list attribute (%d)\00", align 1
@PL_op = external global %struct.op*
@.str31 = private unnamed_addr constant [27 x i8] c"Can't report tag lists yet\00", align 1
@.str32 = private unnamed_addr constant [42 x i8] c"Tag list must be plain scalars and arrays\00", align 1
@.str33 = private unnamed_addr constant [53 x i8] c"Usage: HTML::Parser::handler(pstate, eventname, ...)\00", align 1
@event_id_str = internal unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str79, i32 0, i32 0)], align 16
@.str34 = private unnamed_addr constant [25 x i8] c"No handler for %s events\00", align 1
@.str35 = private unnamed_addr constant [36 x i8] c"Can't inline decode readonly string\00", align 1
@.str36 = private unnamed_addr constant [63 x i8] c"Usage: HTML::Entities::_decode_entities(string, entities, ...)\00", align 1
@.str37 = private unnamed_addr constant [36 x i8] c"2nd argument must be hash reference\00", align 1
@.str38 = private unnamed_addr constant [52 x i8] c"Usage: HTML::Entities::_probably_utf8_chunk(string)\00", align 1
@.str39 = private unnamed_addr constant [41 x i8] c"Usage: HTML::Entities::UNICODE_SUPPORT()\00", align 1
@PL_curpad = external global %struct.sv**
@.str40 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Parser.c\00", align 1
@.str41 = private unnamed_addr constant [28 x i8] c"HTML::Parser::_alloc_pstate\00", align 1
@.str42 = private unnamed_addr constant [20 x i8] c"HTML::Parser::parse\00", align 1
@.str43 = private unnamed_addr constant [18 x i8] c"HTML::Parser::eof\00", align 1
@.str44 = private unnamed_addr constant [32 x i8] c"HTML::Parser::closing_plaintext\00", align 1
@.str45 = private unnamed_addr constant [25 x i8] c"HTML::Parser::strict_end\00", align 1
@.str46 = private unnamed_addr constant [30 x i8] c"HTML::Parser::marked_sections\00", align 1
@.str47 = private unnamed_addr constant [29 x i8] c"HTML::Parser::case_sensitive\00", align 1
@.str48 = private unnamed_addr constant [28 x i8] c"HTML::Parser::unbroken_text\00", align 1
@.str49 = private unnamed_addr constant [29 x i8] c"HTML::Parser::strict_comment\00", align 1
@.str50 = private unnamed_addr constant [23 x i8] c"HTML::Parser::xml_mode\00", align 1
@.str51 = private unnamed_addr constant [27 x i8] c"HTML::Parser::attr_encoded\00", align 1
@.str52 = private unnamed_addr constant [27 x i8] c"HTML::Parser::strict_names\00", align 1
@.str53 = private unnamed_addr constant [24 x i8] c"HTML::Parser::utf8_mode\00", align 1
@.str54 = private unnamed_addr constant [38 x i8] c"HTML::Parser::boolean_attribute_value\00", align 1
@.str55 = private unnamed_addr constant [26 x i8] c"HTML::Parser::ignore_tags\00", align 1
@.str56 = private unnamed_addr constant [30 x i8] c"HTML::Parser::ignore_elements\00", align 1
@.str57 = private unnamed_addr constant [26 x i8] c"HTML::Parser::report_tags\00", align 1
@.str58 = private unnamed_addr constant [22 x i8] c"HTML::Parser::handler\00", align 1
@.str59 = private unnamed_addr constant [32 x i8] c"HTML::Entities::decode_entities\00", align 1
@.str60 = private unnamed_addr constant [33 x i8] c"HTML::Entities::_decode_entities\00", align 1
@.str61 = private unnamed_addr constant [37 x i8] c"HTML::Entities::_probably_utf8_chunk\00", align 1
@.str62 = private unnamed_addr constant [32 x i8] c"HTML::Entities::UNICODE_SUPPORT\00", align 1
@.str63 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_utf8skip = external constant [0 x i8]
@PL_hexdigit = external global i8*
@PL_Sv = external global %struct.sv*
@.str64 = private unnamed_addr constant [49 x i8] c"Only code or array references allowed as handler\00", align 1
@hctype = internal unnamed_addr constant [256 x i8] c"xxxxxxxxx\01\01x\01\01xxxxxxxxxxxxxxxxxx\01xxxxxxxxxxxx||X||||||||||~xx(\00xx~~~~~~~~~~~~~~~~~~~~~~~~~~xxxx~x~~~~~~~~~~~~~~~~~~~~~~~~~~xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", align 16
@.str65 = private unnamed_addr constant [40 x i8] c"Unrecognized identifier %.*s in argspec\00", align 1
@.str66 = private unnamed_addr constant [51 x i8] c"Literal string is longer than 255 chars in argspec\00", align 1
@.str67 = private unnamed_addr constant [49 x i8] c"Backslash reserved for literal string in argspec\00", align 1
@.str68 = private unnamed_addr constant [39 x i8] c"Unterminated literal string in argspec\00", align 1
@.str69 = private unnamed_addr constant [17 x i8] c"Bad argspec (%s)\00", align 1
@.str70 = private unnamed_addr constant [37 x i8] c"Bad argspec: stuff after @{...} (%s)\00", align 1
@.str71 = private unnamed_addr constant [35 x i8] c"Missing comma separator in argspec\00", align 1
@.str72 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str74 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str75 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str76 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str77 = private unnamed_addr constant [15 x i8] c"start_document\00", align 1
@.str78 = private unnamed_addr constant [13 x i8] c"end_document\00", align 1
@.str79 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str80 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@PL_dowarn = external global i8
@.str81 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"\C3\AF\C2\BB\C2\BF\00", align 1
@.str83 = private unnamed_addr constant [68 x i8] c"Parsing of undecoded UTF-8 will give garbage when decoding entities\00", align 1
@.str84 = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str85 = private unnamed_addr constant [44 x i8] c"Parsing string decoded with wrong endianess\00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c"\FE\FF\00\00\00", align 1
@.str88 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-32\00", align 1
@.str89 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@.str90 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-16\00", align 1
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@.str91 = private unnamed_addr constant [8 x i8] c"!##/#?#\00", align 1
@PL_stack_max = external global %struct.sv**
@.str92 = private unnamed_addr constant [15 x i8] c"Bad argspec %d\00", align 1
@.str93 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str94 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str95 = private unnamed_addr constant [8 x i8] c"DOCTYPE\00", align 1
@.str96 = private unnamed_addr constant [7 x i8] c"ENTITY\00", align 1
@.str97 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str98 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str99 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str100 = private unnamed_addr constant [9 x i8] c"textarea\00", align 1
@literal_mode_elem = internal unnamed_addr constant <{ { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] } }> <{ { i32, i8*, i32, [4 x i8] } { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str93, i32 0, i32 0), i32 1, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str94, i32 0, i32 0), i32 1, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str98, i32 0, i32 0), i32 1, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str80, i32 0, i32 0), i32 1, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str99, i32 0, i32 0), i32 0, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 8, i8* getelementptr inbounds ([9 x i8]* @.str100, i32 0, i32 0), i32 0, [4 x i8] undef }, { i32, i8*, i32, [4 x i8] } { i32 0, i8* null, i32 0, [4 x i8] undef } }>, align 16
@.str101 = private unnamed_addr constant [7 x i8] c"rcdata\00", align 1
@.str102 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@.str103 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str104 = private unnamed_addr constant [45 x i8] c"_hparser_xs_state element is not a reference\00", align 1
@.str105 = private unnamed_addr constant [60 x i8] c"Can't find '_hparser_xs_state' element in HTML::Parser hash\00", align 1
@.str106 = private unnamed_addr constant [43 x i8] c"Bad signature in parser state object at %p\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal i32 @magic_free_pstate(%struct.sv* %sv, %struct.magic* nocapture %mg) #0 {
entry:
  %call = tail call fastcc %struct.p_state* @get_pstate_iv(%struct.sv* %sv) #5
  %buf.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 1
  %0 = load %struct.sv** %buf.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %0) #6
  %pend_text.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 11
  %1 = load %struct.sv** %pend_text.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %1) #6
  %skipped_text.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 16
  %2 = load %struct.sv** %skipped_text.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %2) #6
  %ms_stack.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 18
  %3 = load %struct.av** %ms_stack.i, align 8, !tbaa !0
  %4 = bitcast %struct.av* %3 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %4) #6
  %bool_attr_val.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 29
  %5 = load %struct.sv** %bool_attr_val.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %5) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %cb.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 30, i64 %indvars.iv.i, i32 0
  %6 = load %struct.sv** %cb.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %6) #6
  %argspec.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 30, i64 %indvars.iv.i, i32 1
  %7 = load %struct.sv** %argspec.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %7) #6
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %free_pstate.exit, label %for.body.i

free_pstate.exit:                                 ; preds = %for.body.i
  %report_tags.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 32
  %8 = load %struct.hv** %report_tags.i, align 8, !tbaa !0
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %9) #6
  %ignore_tags.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 33
  %10 = load %struct.hv** %ignore_tags.i, align 8, !tbaa !0
  %11 = bitcast %struct.hv* %10 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %11) #6
  %ignore_elements.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 34
  %12 = load %struct.hv** %ignore_elements.i, align 8, !tbaa !0
  %13 = bitcast %struct.hv* %12 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %13) #6
  %ignoring_element.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 35
  %14 = load %struct.sv** %ignoring_element.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %14) #6
  %tmp.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 38
  %15 = load %struct.sv** %tmp.i, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %15) #6
  %signature.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 0
  store i32 0, i32* %signature.i, align 4, !tbaa !3
  %16 = bitcast %struct.p_state* %call to i8*
  tail call void @Perl_safesysfree(i8* %16) #6
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser__alloc_pstate(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str20, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %8, null
  br i1 %tobool, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv* %8, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %9, 255
  %cmp8 = icmp eq i32 %and, 11
  br i1 %cmp8, label %if.end11, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.then10
  %10 = bitcast %struct.sv* %8 to %struct.hv*
  %call = tail call i8* @Perl_safesysmalloc(i64 368) #6
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 368, i32 1, i1 false)
  %signature = bitcast i8* %call to i32*
  store i32 369695076, i32* %signature, align 4, !tbaa !3
  %call12 = tail call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([28 x i8]* @.str22, i64 0, i64 0), i32 1) #6
  %entity2char = getelementptr inbounds i8* %call, i64 352
  %11 = bitcast i8* %entity2char to %struct.hv**
  store %struct.hv* %call12, %struct.hv** %11, align 8, !tbaa !0
  %call13 = tail call %struct.sv* @Perl_newSV(i64 20) #6
  %tmp = getelementptr inbounds i8* %call, i64 360
  %12 = bitcast i8* %tmp to %struct.sv**
  store %struct.sv* %call13, %struct.sv** %12, align 8, !tbaa !0
  %13 = ptrtoint i8* %call to i64
  %call14 = tail call %struct.sv* @Perl_newSViv(i64 %13) #6
  tail call void @Perl_sv_magic(%struct.sv* %call14, %struct.sv* null, i32 126, i8* null, i32 0) #6
  %call15 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %call14, i32 126) #6
  %mg_virtual = getelementptr inbounds %struct.magic* %call15, i64 0, i32 1
  store %struct.mgvtbl* bitcast ({ i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }* @vtbl_free_pstate to %struct.mgvtbl*), %struct.mgvtbl** %mg_virtual, align 8, !tbaa !0
  %sv_flags16 = getelementptr inbounds %struct.sv* %call14, i64 0, i32 2
  %14 = load i32* %sv_flags16, align 4, !tbaa !3
  %or = or i32 %14, 8388608
  store i32 %or, i32* %sv_flags16, align 4, !tbaa !3
  %call17 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call14) #6
  %call18 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %10, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i32 17, %struct.sv* %call17, i32 0) #6
  %15 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr21.sum = add i64 %idxprom, -1
  %add.ptr22 = getelementptr inbounds %struct.sv** %15, i64 %add.ptr21.sum
  store %struct.sv** %add.ptr22, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare %struct.hv* @Perl_get_hv(i8*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #1

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_parse(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str24, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext173 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext173, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sext174 = add i64 %add.ptr.idx, 8589934592
  %idxprom11 = ashr exact i64 %sext174, 32
  %arrayidx12 = getelementptr inbounds %struct.sv** %5, i64 %idxprom11
  %7 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  %call = call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %6) #5
  %parsing = getelementptr inbounds %struct.p_state* %call, i64 0, i32 5
  %8 = load i8* %parsing, align 1, !tbaa !1
  %tobool = icmp eq i8 %8, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0)) #6
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13
  store i8 1, i8* %parsing, align 1, !tbaa !1
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %9 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %9, 524288
  %tobool16 = icmp eq i32 %and, 0
  br i1 %tobool16, label %if.else128, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  %11 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags17 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %12, 255
  %cmp19 = icmp eq i32 %and18, 12
  br i1 %cmp19, label %do.body.preheader, label %if.else128

do.body.preheader:                                ; preds = %land.lhs.true
  %eof126 = getelementptr inbounds %struct.p_state* %call, i64 0, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %sp.0 = phi %struct.sv** [ %41, %land.rhs ], [ %add.ptr8, %do.body.preheader ]
  %13 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr22 = getelementptr inbounds i32* %13, i64 1
  store i32* %incdec.ptr22, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %14 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp23 = icmp eq i32* %incdec.ptr22, %14
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body
  call void @Perl_markstack_grow() #6
  %.pre176 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.body
  %15 = phi i32* [ %.pre176, %if.then25 ], [ %incdec.ptr22, %do.body ]
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast27 = ptrtoint %struct.sv** %sp.0 to i64
  %sub.ptr.rhs.cast28 = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub.ptr.div30175 = lshr exact i64 %sub.ptr.sub29, 3
  %conv31 = trunc i64 %sub.ptr.div30175 to i32
  store i32 %conv31, i32* %15, align 4, !tbaa !3
  %call32 = call i32 @Perl_call_sv(%struct.sv* %7, i32 4) #6
  %17 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end26
  %incdec.ptr34 = getelementptr inbounds %struct.sv** %17, i64 -1
  %18 = load %struct.sv** %17, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.end26, %cond.true
  %sp.1 = phi %struct.sv** [ %incdec.ptr34, %cond.true ], [ %17, %if.end26 ]
  %cond = phi %struct.sv* [ %18, %cond.true ], [ null, %if.end26 ]
  store %struct.sv** %sp.1, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %19 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any35 = getelementptr inbounds %struct.gv* %19, i64 0, i32 0
  %20 = load %struct.xpvgv** %sv_any35, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %21, i64 0, i32 0
  %22 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool36 = icmp eq %struct.sv* %22, null
  br i1 %tobool36, label %if.end99, label %cond.false38

cond.false38:                                     ; preds = %cond.end
  %sv_flags42 = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags42, align 4, !tbaa !3
  %and43 = and i32 %23, 262144
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %cond.false62, label %cond.true45

cond.true45:                                      ; preds = %cond.false38
  %sv_any49 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %24 = load i8** %sv_any49, align 8, !tbaa !0
  %25 = bitcast i8* %24 to %struct.xpv*
  store %struct.xpv* %25, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool50 = icmp eq i8* %24, null
  br i1 %tobool50, label %if.end99, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %cond.true45
  %xpv_cur = getelementptr inbounds i8* %24, i64 8
  %26 = bitcast i8* %xpv_cur to i64*
  %27 = load i64* %26, align 8, !tbaa !4
  %cmp52 = icmp ugt i64 %27, 1
  br i1 %cmp52, label %if.then97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true51
  %tobool55 = icmp eq i64 %27, 0
  br i1 %tobool55, label %if.end99, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %24 to i8**
  %28 = load i8** %xpv_pv, align 8, !tbaa !0
  %29 = load i8* %28, align 1, !tbaa !1
  %cmp58 = icmp eq i8 %29, 48
  br i1 %cmp58, label %if.end99, label %if.then97

cond.false62:                                     ; preds = %cond.false38
  %and67 = and i32 %23, 65536
  %tobool68 = icmp eq i32 %and67, 0
  br i1 %tobool68, label %cond.false76, label %cond.true69

cond.true69:                                      ; preds = %cond.false62
  %sv_any73 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %30 = load i8** %sv_any73, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %30, i64 24
  %31 = bitcast i8* %xiv_iv to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  %cmp74 = icmp eq i64 %32, 0
  br i1 %cmp74, label %if.end99, label %if.then97

cond.false76:                                     ; preds = %cond.false62
  %and81 = and i32 %23, 131072
  %tobool82 = icmp eq i32 %and81, 0
  br i1 %tobool82, label %cond.false90, label %cond.true83

cond.true83:                                      ; preds = %cond.false76
  %sv_any87 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %33 = load i8** %sv_any87, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %33, i64 32
  %34 = bitcast i8* %xnv_nv to double*
  %35 = load double* %34, align 8, !tbaa !5
  %cmp88 = fcmp une double %35, 0.000000e+00
  br i1 %cmp88, label %if.then97, label %if.end99

cond.false90:                                     ; preds = %cond.false76
  %call94 = call signext i8 @Perl_sv_2bool(%struct.sv* %22) #6
  %tobool96 = icmp eq i8 %call94, 0
  br i1 %tobool96, label %if.end99, label %if.then97

if.then97:                                        ; preds = %land.lhs.true56, %cond.true69, %cond.false90, %land.lhs.true51, %cond.true83
  store i8 0, i8* %parsing, align 1, !tbaa !1
  store i8 0, i8* %eof126, align 1, !tbaa !1
  call void (i8*, ...)* @Perl_croak(i8* null) #6
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true56, %lor.lhs.false, %cond.true45, %cond.true69, %cond.false90, %cond.end, %if.then97, %cond.true83
  %tobool100 = icmp eq %struct.sv* %cond, null
  br i1 %tobool100, label %if.else, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end99
  %sv_flags102 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %36 = load i32* %sv_flags102, align 4, !tbaa !3
  %and103 = and i32 %36, 118423552
  %tobool104 = icmp eq i32 %and103, 0
  br i1 %tobool104, label %if.else, label %if.then105

if.then105:                                       ; preds = %land.lhs.true101
  %and107 = and i32 %36, 262144
  %cmp108 = icmp eq i32 %and107, 0
  br i1 %cmp108, label %cond.false115, label %cond.true110

cond.true110:                                     ; preds = %if.then105
  %sv_any111 = getelementptr inbounds %struct.sv* %cond, i64 0, i32 0
  %37 = load i8** %sv_any111, align 8, !tbaa !0
  %xpv_cur112 = getelementptr inbounds i8* %37, i64 8
  %38 = bitcast i8* %xpv_cur112 to i64*
  %39 = load i64* %38, align 8, !tbaa !4
  store i64 %39, i64* %len, align 8, !tbaa !4
  br label %if.end119

cond.false115:                                    ; preds = %if.then105
  %call116 = call i8* @Perl_sv_2pv_flags(%struct.sv* %cond, i64* %len, i32 2) #6
  %.pre177 = load i64* %len, align 8, !tbaa !4
  br label %if.end119

if.else:                                          ; preds = %land.lhs.true101, %if.end99
  store i64 0, i64* %len, align 8, !tbaa !4
  br label %if.end119

if.end119:                                        ; preds = %cond.true110, %cond.false115, %if.else
  %40 = phi i64 [ %39, %cond.true110 ], [ %.pre177, %cond.false115 ], [ 0, %if.else ]
  %tobool120 = icmp ne i64 %40, 0
  %cond124 = select i1 %tobool120, %struct.sv* %cond, %struct.sv* null
  call fastcc void @parse(%struct.p_state* %call, %struct.sv* %cond124, %struct.sv* %6) #5
  %41 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %42 = load i64* %len, align 8, !tbaa !4
  %tobool125 = icmp eq i64 %42, 0
  br i1 %tobool125, label %if.end129, label %land.rhs

land.rhs:                                         ; preds = %if.end119
  %43 = load i8* %eof126, align 1, !tbaa !1
  %lnot = icmp eq i8 %43, 0
  br i1 %lnot, label %do.body, label %if.end129

if.else128:                                       ; preds = %if.end14, %land.lhs.true
  call fastcc void @parse(%struct.p_state* %call, %struct.sv* %7, %struct.sv* %6) #5
  %44 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %eof131.pre = getelementptr inbounds %struct.p_state* %call, i64 0, i32 6
  br label %if.end129

if.end129:                                        ; preds = %if.end119, %land.rhs, %if.else128
  %eof131.pre-phi = phi i8* [ %eof131.pre, %if.else128 ], [ %eof126, %land.rhs ], [ %eof126, %if.end119 ]
  %sp.2 = phi %struct.sv** [ %44, %if.else128 ], [ %41, %land.rhs ], [ %41, %if.end119 ]
  store i8 0, i8* %parsing, align 1, !tbaa !1
  %45 = load i8* %eof131.pre-phi, align 1, !tbaa !1
  %tobool132 = icmp eq i8 %45, 0
  br i1 %tobool132, label %if.else137, label %if.then133

if.then133:                                       ; preds = %if.end129
  store i8 0, i8* %eof131.pre-phi, align 1, !tbaa !1
  %call135 = call %struct.sv* @Perl_sv_newmortal() #6
  %incdec.ptr136 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call135, %struct.sv** %incdec.ptr136, align 8, !tbaa !0
  br label %if.end139

if.else137:                                       ; preds = %if.end129
  %incdec.ptr138 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %6, %struct.sv** %incdec.ptr138, align 8, !tbaa !0
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then133
  %sp.3 = phi %struct.sv** [ %incdec.ptr136, %if.then133 ], [ %incdec.ptr138, %if.else137 ]
  store %struct.sv** %sp.3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.p_state* @get_pstate_hv(%struct.sv* nocapture %sv) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %0 to %struct.sv**
  %1 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([26 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %3 = bitcast %struct.sv* %1 to %struct.hv*
  %call = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %3, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i32 17, i32 0) #6
  %tobool1 = icmp eq %struct.sv** %call, null
  br i1 %tobool1, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct.sv** %call, align 8, !tbaa !0
  %sv_flags3 = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags3, align 4, !tbaa !3
  %and4 = and i32 %5, 524288
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then2
  %sv_any7 = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any7, align 8, !tbaa !0
  %xrv_rv8 = bitcast i8* %6 to %struct.sv**
  %7 = load %struct.sv** %xrv_rv8, align 8, !tbaa !0
  %call9 = tail call fastcc %struct.p_state* @get_pstate_iv(%struct.sv* %7) #5
  br label %return

if.else:                                          ; preds = %if.then2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([45 x i8]* @.str104, i64 0, i64 0)) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.else
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([60 x i8]* @.str105, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.end11, %if.then6
  %retval.0 = phi %struct.p_state* [ %call9, %if.then6 ], [ null, %if.end11 ]
  ret %struct.p_state* %retval.0
}

; Function Attrs: optsize
declare void @Perl_markstack_grow() #1

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse(%struct.p_state* %p_state, %struct.sv* %chunk, %struct.sv* %self) #0 {
entry:
  %len = alloca i64, align 8
  %empty = alloca [1 x i8], align 1
  %token = alloca %struct.token_pos, align 8
  %tobool = icmp eq %struct.sv* %chunk, null
  br i1 %tobool, label %if.then, label %if.end75

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 1
  %0 = load %struct.sv** %buf, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.sv* %0, null
  br i1 %tobool1, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.sv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 118423552
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end55, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %and7 = and i32 %1, 262144
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then4
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  store i64 %4, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %2 to i8**
  %5 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %0, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !4
  %.pre393 = load %struct.sv** %buf, align 8, !tbaa !0
  %sv_flags13.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre393, i64 0, i32 2
  %.pre397 = load i32* %sv_flags13.phi.trans.insert, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi i32 [ %1, %cond.true ], [ %.pre397, %cond.false ]
  %7 = phi i64 [ %4, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %5, %cond.true ], [ %call, %cond.false ]
  %add.ptr = getelementptr inbounds i8* %cond, i64 %7
  %and14 = and i32 %6, 536870912
  %cmp15389 = icmp sgt i64 %7, 0
  br i1 %cmp15389, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %literal_mode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 7
  %strict_comment = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 20
  %no_dash_dash_comment_end = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 9
  %closing_plaintext = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 27
  %pending_end_tag = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %s.0390 = phi i8* [ %cond, %while.body.lr.ph ], [ %s.0.be, %while.cond.backedge ]
  %8 = load i8** %literal_mode, align 8, !tbaa !0
  %tobool16 = icmp eq i8* %8, null
  br i1 %tobool16, label %if.end27, label %if.then17

if.then17:                                        ; preds = %while.body
  %call19 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([10 x i8]* @.str80, i64 0, i64 0)) #6
  %tobool20 = icmp eq i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %if.then17
  %9 = load i8* %closing_plaintext, align 1, !tbaa !1
  %tobool22 = icmp eq i8 %9, 0
  br i1 %tobool22, label %while.end, label %if.end

if.end:                                           ; preds = %land.lhs.true21, %if.then17
  store i8* %8, i8** %pending_end_tag, align 8, !tbaa !0
  store i8* null, i8** %literal_mode, align 8, !tbaa !0
  %call26 = call fastcc i8* @parse_buf(%struct.p_state* %p_state, i8* %s.0390, i8* %add.ptr, i32 %and14, %struct.sv* %self) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %if.then34
  %s.0.be = phi i8* [ %call26, %if.end ], [ %call36, %if.then34 ]
  %cmp15 = icmp ult i8* %s.0.be, %add.ptr
  br i1 %cmp15, label %while.body, label %while.end

if.end27:                                         ; preds = %while.body
  %10 = load i8* %strict_comment, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %10, 0
  br i1 %tobool28, label %land.lhs.true29, label %while.end

land.lhs.true29:                                  ; preds = %if.end27
  %11 = load i8* %no_dash_dash_comment_end, align 1, !tbaa !1
  %tobool30 = icmp eq i8 %11, 0
  %12 = load i8* %s.0390, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %12, 60
  br i1 %tobool30, label %land.lhs.true31, label %land.lhs.true40

land.lhs.true31:                                  ; preds = %land.lhs.true29
  br i1 %cmp32, label %if.then34, label %while.end

if.then34:                                        ; preds = %land.lhs.true31
  store i8 1, i8* %no_dash_dash_comment_end, align 1, !tbaa !1
  %call36 = call fastcc i8* @parse_buf(%struct.p_state* %p_state, i8* %s.0390, i8* %add.ptr, i32 %and14, %struct.sv* %self) #5
  br label %while.cond.backedge

land.lhs.true40:                                  ; preds = %land.lhs.true29
  br i1 %cmp32, label %while.end.thread, label %while.end

while.end.thread:                                 ; preds = %land.lhs.true40
  %add.ptr45 = getelementptr inbounds i8* %s.0390, i64 1
  %beg46 = getelementptr inbounds %struct.token_pos* %token, i64 0, i32 0
  store i8* %add.ptr45, i8** %beg46, align 8, !tbaa !0
  %end47 = getelementptr inbounds %struct.token_pos* %token, i64 0, i32 1
  store i8* %add.ptr, i8** %end47, align 8, !tbaa !0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %s.0390, i8* %add.ptr, i32 %and14, %struct.token_pos* %token, i32 1, %struct.sv* %self) #5
  br label %if.end52

while.end:                                        ; preds = %land.lhs.true31, %cond.end, %if.end27, %land.lhs.true21, %while.cond.backedge, %land.lhs.true40
  %s.0388 = phi i8* [ %s.0390, %land.lhs.true40 ], [ %cond, %cond.end ], [ %s.0390, %if.end27 ], [ %s.0390, %land.lhs.true21 ], [ %s.0.be, %while.cond.backedge ], [ %s.0390, %land.lhs.true31 ]
  %cmp49 = icmp ult i8* %s.0388, %add.ptr
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %while.end
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %s.0388, i8* %add.ptr, i32 %and14, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  br label %if.end52

if.end52:                                         ; preds = %while.end, %while.end.thread, %if.then51
  %13 = load %struct.sv** %buf, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %13) #6
  store %struct.sv* null, %struct.sv** %buf, align 8, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %if.then, %if.end52
  %pend_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 11
  %14 = load %struct.sv** %pend_text, align 8, !tbaa !0
  %tobool56 = icmp eq %struct.sv* %14, null
  br i1 %tobool56, label %if.end63, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.end55
  %sv_flags59 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags59, align 4, !tbaa !3
  %and60 = and i32 %15, 118423552
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %land.lhs.true57
  call fastcc void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #5
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true57, %if.end55, %if.then62
  %ignoring_element = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 35
  %16 = load %struct.sv** %ignoring_element, align 8, !tbaa !0
  %tobool64 = icmp eq %struct.sv* %16, null
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end63
  call void @Perl_sv_free(%struct.sv* %16) #6
  store %struct.sv* null, %struct.sv** %ignoring_element, align 8, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %if.then65
  %arraydecay = getelementptr inbounds [1 x i8]* %empty, i64 0, i64 0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 7, i8* %arraydecay, i8* %arraydecay, i32 0, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  %offset = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 2
  store i64 0, i64* %offset, align 8, !tbaa !4
  %line = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 3
  %17 = load i64* %line, align 8, !tbaa !4
  %tobool70 = icmp eq i64 %17, 0
  br i1 %tobool70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end68
  store i64 1, i64* %line, align 8, !tbaa !4
  br label %if.end73

if.end73:                                         ; preds = %if.end68, %if.then71
  %column = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 4
  store i64 0, i64* %column, align 8, !tbaa !4
  %literal_mode74 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 7
  store i8* null, i8** %literal_mode74, align 8, !tbaa !0
  %is_cdata = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  store i8 0, i8* %is_cdata, align 1, !tbaa !1
  br label %return

if.end75:                                         ; preds = %entry
  %utf8_mode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 28
  %18 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool76 = icmp eq i8 %18, 0
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end75
  %call78 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %chunk, i8 signext 0) #6
  br label %if.end79

if.end79:                                         ; preds = %if.end75, %if.then77
  %buf80 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 1
  %19 = load %struct.sv** %buf80, align 8, !tbaa !0
  %tobool81 = icmp eq %struct.sv* %19, null
  br i1 %tobool81, label %if.else, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end79
  %sv_flags84 = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %20 = load i32* %sv_flags84, align 4, !tbaa !3
  %and85 = and i32 %20, 118423552
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %if.else, label %if.then87

if.then87:                                        ; preds = %land.lhs.true82
  call void @Perl_sv_catsv_flags(%struct.sv* %19, %struct.sv* %chunk, i32 2) #6
  %21 = load %struct.sv** %buf80, align 8, !tbaa !0
  %sv_flags90 = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags90, align 4, !tbaa !3
  %and91 = and i32 %22, 262144
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %cond.false101, label %cond.true94

cond.true94:                                      ; preds = %if.then87
  %sv_any96 = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %23 = load i8** %sv_any96, align 8, !tbaa !0
  %xpv_cur97 = getelementptr inbounds i8* %23, i64 8
  %24 = bitcast i8* %xpv_cur97 to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  store i64 %25, i64* %len, align 8, !tbaa !4
  %xpv_pv100 = bitcast i8* %23 to i8**
  %26 = load i8** %xpv_pv100, align 8, !tbaa !0
  br label %cond.end104

cond.false101:                                    ; preds = %if.then87
  %call103 = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %len, i32 2) #6
  %.pre396 = load %struct.sv** %buf80, align 8, !tbaa !0
  %sv_flags107.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre396, i64 0, i32 2
  %.pre399 = load i32* %sv_flags107.phi.trans.insert, align 4, !tbaa !3
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false101, %cond.true94
  %27 = phi i32 [ %22, %cond.true94 ], [ %.pre399, %cond.false101 ]
  %cond105 = phi i8* [ %26, %cond.true94 ], [ %call103, %cond.false101 ]
  %and108 = and i32 %27, 536870912
  br label %if.end204thread-pre-split

if.else:                                          ; preds = %land.lhs.true82, %if.end79
  %sv_flags109 = getelementptr inbounds %struct.sv* %chunk, i64 0, i32 2
  %28 = load i32* %sv_flags109, align 4, !tbaa !3
  %and110 = and i32 %28, 262144
  %cmp111 = icmp eq i32 %and110, 0
  br i1 %cmp111, label %cond.false118, label %cond.true113

cond.true113:                                     ; preds = %if.else
  %sv_any114 = getelementptr inbounds %struct.sv* %chunk, i64 0, i32 0
  %29 = load i8** %sv_any114, align 8, !tbaa !0
  %xpv_cur115 = getelementptr inbounds i8* %29, i64 8
  %30 = bitcast i8* %xpv_cur115 to i64*
  %31 = load i64* %30, align 8, !tbaa !4
  store i64 %31, i64* %len, align 8, !tbaa !4
  %xpv_pv117 = bitcast i8* %29 to i8**
  %32 = load i8** %xpv_pv117, align 8, !tbaa !0
  br label %cond.end120

cond.false118:                                    ; preds = %if.else
  %call119 = call i8* @Perl_sv_2pv_flags(%struct.sv* %chunk, i64* %len, i32 2) #6
  %.pre394 = load i32* %sv_flags109, align 4, !tbaa !3
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false118, %cond.true113
  %33 = phi i32 [ %28, %cond.true113 ], [ %.pre394, %cond.false118 ]
  %cond121 = phi i8* [ %32, %cond.true113 ], [ %call119, %cond.false118 ]
  %and123 = and i32 %33, 536870912
  %offset124 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 2
  %34 = load i64* %offset124, align 8, !tbaa !4
  %cmp125 = icmp eq i64 %34, 0
  br i1 %cmp125, label %if.then127, label %if.end204thread-pre-split

if.then127:                                       ; preds = %cond.end120
  call fastcc void @report_event(%struct.p_state* %p_state, i32 6, i8* %cond121, i8* %cond121, i32 0, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  %35 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and129 = and i8 %35, 1
  %tobool130 = icmp eq i8 %and129, 0
  br i1 %tobool130, label %if.end159, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.then127
  %argspec_entity_decode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 31
  %36 = load i8* %argspec_entity_decode, align 1, !tbaa !1
  %tobool133 = icmp eq i8 %36, 0
  br i1 %tobool133, label %if.end159, label %land.lhs.true134

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %37 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool136 = icmp eq i8 %37, 0
  br i1 %tobool136, label %land.lhs.true137, label %if.end159

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %tobool138 = icmp ne i32 %and123, 0
  %.pre398 = load i64* %len, align 8, !tbaa !4
  br i1 %tobool138, label %land.lhs.true146, label %land.lhs.true139

land.lhs.true139:                                 ; preds = %land.lhs.true137
  %cmp140 = icmp ugt i64 %.pre398, 2
  br i1 %cmp140, label %land.lhs.true142, label %land.lhs.true154

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %call143 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([4 x i8]* @.str81, i64 0, i64 0), i64 3) #6
  %tobool144 = icmp eq i32 %call143, 0
  br i1 %tobool144, label %if.then158, label %land.lhs.true154

land.lhs.true146:                                 ; preds = %land.lhs.true137
  %cmp147 = icmp ugt i64 %.pre398, 5
  br i1 %cmp147, label %land.lhs.true149, label %if.end159

land.lhs.true149:                                 ; preds = %land.lhs.true146
  %call150 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([7 x i8]* @.str82, i64 0, i64 0), i64 6) #6
  %tobool151 = icmp eq i32 %call150, 0
  br i1 %tobool151, label %if.then158, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %land.lhs.true149
  br i1 %tobool138, label %if.end159, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %land.lhs.true142, %land.lhs.true139, %lor.lhs.false152
  %call155 = call fastcc signext i8 @probably_utf8_chunk(i8* %cond121, i64 %.pre398) #5
  %tobool157 = icmp eq i8 %call155, 0
  br i1 %tobool157, label %if.end159, label %if.then158

if.then158:                                       ; preds = %land.lhs.true142, %land.lhs.true149, %land.lhs.true154
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([68 x i8]* @.str83, i64 0, i64 0)) #6
  br label %if.end159

if.end159:                                        ; preds = %land.lhs.true154, %land.lhs.true146, %land.lhs.true134, %land.lhs.true131, %if.then127, %if.then158, %lor.lhs.false152
  %38 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and161 = and i8 %38, 1
  %tobool162 = icmp eq i8 %and161, 0
  %tobool164 = icmp eq i32 %and123, 0
  %or.cond = or i1 %tobool162, %tobool164
  br i1 %or.cond, label %if.end172, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %if.end159
  %39 = load i64* %len, align 8, !tbaa !4
  %cmp166 = icmp ugt i64 %39, 1
  br i1 %cmp166, label %land.lhs.true168, label %if.end172

land.lhs.true168:                                 ; preds = %land.lhs.true165
  %call169 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0), i64 2) #6
  %tobool170 = icmp eq i32 %call169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %land.lhs.true168
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([44 x i8]* @.str85, i64 0, i64 0)) #6
  %.pre395 = load i8* @PL_dowarn, align 1, !tbaa !1
  br label %if.end172

if.end172:                                        ; preds = %land.lhs.true168, %if.end159, %if.then171, %land.lhs.true165
  %40 = phi i8 [ %38, %land.lhs.true168 ], [ %38, %if.end159 ], [ %.pre395, %if.then171 ], [ %38, %land.lhs.true165 ]
  %and174 = and i8 %40, 1
  %tobool175 = icmp ne i8 %and174, 0
  %tobool177 = icmp eq i32 %and123, 0
  %or.cond401 = and i1 %tobool175, %tobool177
  br i1 %or.cond401, label %land.lhs.true178, label %if.end204thread-pre-split

land.lhs.true178:                                 ; preds = %if.end172
  %41 = load i64* %len, align 8, !tbaa !4
  %cmp179 = icmp ugt i64 %41, 3
  br i1 %cmp179, label %land.lhs.true181, label %land.lhs.true190

land.lhs.true181:                                 ; preds = %land.lhs.true178
  %strcmpload = load i8* %cond121, align 1
  %tobool183 = icmp eq i8 %strcmpload, 0
  br i1 %tobool183, label %if.then187, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %land.lhs.true181
  %call185 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([5 x i8]* @.str87, i64 0, i64 0), i64 4) #6
  %tobool186 = icmp eq i32 %call185, 0
  br i1 %tobool186, label %if.then187, label %land.lhs.true190

if.then187:                                       ; preds = %lor.lhs.false184, %land.lhs.true181
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([28 x i8]* @.str88, i64 0, i64 0)) #6
  br label %if.end204thread-pre-split

land.lhs.true190:                                 ; preds = %lor.lhs.false184, %land.lhs.true178
  %cmp191 = icmp ugt i64 %41, 1
  br i1 %cmp191, label %land.lhs.true193, label %if.end204

land.lhs.true193:                                 ; preds = %land.lhs.true190
  %call194 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([3 x i8]* @.str89, i64 0, i64 0), i64 2) #6
  %tobool195 = icmp eq i32 %call194, 0
  br i1 %tobool195, label %if.then199, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %land.lhs.true193
  %call197 = call i32 @strncmp(i8* %cond121, i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0), i64 2) #6
  %tobool198 = icmp eq i32 %call197, 0
  br i1 %tobool198, label %if.then199, label %if.end204thread-pre-split

if.then199:                                       ; preds = %lor.lhs.false196, %land.lhs.true193
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([28 x i8]* @.str90, i64 0, i64 0)) #6
  br label %if.end204thread-pre-split

if.end204thread-pre-split:                        ; preds = %if.end172, %cond.end120, %cond.end104, %if.then199, %if.then187, %lor.lhs.false196
  %beg.0.ph = phi i8* [ %cond121, %lor.lhs.false196 ], [ %cond121, %if.then187 ], [ %cond121, %if.then199 ], [ %cond105, %cond.end104 ], [ %cond121, %cond.end120 ], [ %cond121, %if.end172 ]
  %utf8.0.ph = phi i32 [ 0, %lor.lhs.false196 ], [ 0, %if.then187 ], [ 0, %if.then199 ], [ %and108, %cond.end104 ], [ %and123, %cond.end120 ], [ %and123, %if.end172 ]
  %.pr385 = load i64* %len, align 8, !tbaa !4
  br label %if.end204

if.end204:                                        ; preds = %if.end204thread-pre-split, %land.lhs.true190
  %42 = phi i64 [ %.pr385, %if.end204thread-pre-split ], [ %41, %land.lhs.true190 ]
  %beg.0 = phi i8* [ %beg.0.ph, %if.end204thread-pre-split ], [ %cond121, %land.lhs.true190 ]
  %utf8.0 = phi i32 [ %utf8.0.ph, %if.end204thread-pre-split ], [ 0, %land.lhs.true190 ]
  %tobool205 = icmp eq i64 %42, 0
  br i1 %tobool205, label %return, label %if.end207

if.end207:                                        ; preds = %if.end204
  %add.ptr208 = getelementptr inbounds i8* %beg.0, i64 %42
  %call209 = call fastcc i8* @parse_buf(%struct.p_state* %p_state, i8* %beg.0, i8* %add.ptr208, i32 %utf8.0, %struct.sv* %self) #5
  %cmp210 = icmp eq i8* %call209, %add.ptr208
  br i1 %cmp210, label %if.then215, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %if.end207
  %eof = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 6
  %43 = load i8* %eof, align 1, !tbaa !1
  %tobool214 = icmp eq i8 %43, 0
  br i1 %tobool214, label %if.else230, label %if.then215

if.then215:                                       ; preds = %lor.lhs.false212, %if.end207
  %44 = load %struct.sv** %buf80, align 8, !tbaa !0
  %tobool217 = icmp eq %struct.sv* %44, null
  br i1 %tobool217, label %return, label %if.then218

if.then218:                                       ; preds = %if.then215
  %sv_flags220 = getelementptr inbounds %struct.sv* %44, i64 0, i32 2
  %45 = load i32* %sv_flags220, align 4, !tbaa !3
  %and221 = and i32 %45, 1223753727
  store i32 %and221, i32* %sv_flags220, align 4, !tbaa !3
  %and224 = and i32 %45, 2097152
  %tobool225 = icmp eq i32 %and224, 0
  br i1 %tobool225, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.then218
  %call227 = call i32 @Perl_sv_backoff(%struct.sv* %44) #6
  br label %return

if.else230:                                       ; preds = %lor.lhs.false212
  %46 = load %struct.sv** %buf80, align 8, !tbaa !0
  %tobool232 = icmp eq %struct.sv* %46, null
  br i1 %tobool232, label %if.else252, label %if.then233

if.then233:                                       ; preds = %if.else230
  %sv_flags235 = getelementptr inbounds %struct.sv* %46, i64 0, i32 2
  %47 = load i32* %sv_flags235, align 4, !tbaa !3
  %and236 = and i32 %47, 118423552
  %tobool237 = icmp eq i32 %and236, 0
  br i1 %tobool237, label %if.else240, label %if.then238

if.then238:                                       ; preds = %if.then233
  call void @Perl_sv_chop(%struct.sv* %46, i8* %call209) #6
  br label %return

if.else240:                                       ; preds = %if.then233
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr208 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call209 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %46, i8* %call209, i64 %sub.ptr.sub) #6
  %tobool242 = icmp eq i32 %utf8.0, 0
  %48 = load %struct.sv** %buf80, align 8, !tbaa !0
  %sv_flags245 = getelementptr inbounds %struct.sv* %48, i64 0, i32 2
  %49 = load i32* %sv_flags245, align 4, !tbaa !3
  br i1 %tobool242, label %if.else246, label %if.then243

if.then243:                                       ; preds = %if.else240
  %or = or i32 %49, 536870912
  store i32 %or, i32* %sv_flags245, align 4, !tbaa !3
  br label %return

if.else246:                                       ; preds = %if.else240
  %and249 = and i32 %49, -536870913
  store i32 %and249, i32* %sv_flags245, align 4, !tbaa !3
  br label %return

if.else252:                                       ; preds = %if.else230
  %sub.ptr.lhs.cast253 = ptrtoint i8* %add.ptr208 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %call209 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %call256 = call %struct.sv* @Perl_newSVpv(i8* %call209, i64 %sub.ptr.sub255) #6
  store %struct.sv* %call256, %struct.sv** %buf80, align 8, !tbaa !0
  %tobool258 = icmp eq i32 %utf8.0, 0
  br i1 %tobool258, label %return, label %if.then259

if.then259:                                       ; preds = %if.else252
  %sv_flags261 = getelementptr inbounds %struct.sv* %call256, i64 0, i32 2
  %50 = load i32* %sv_flags261, align 4, !tbaa !3
  %or262 = or i32 %50, 536870912
  store i32 %or262, i32* %sv_flags261, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %land.rhs, %if.then218, %if.then215, %if.else252, %if.end204, %if.then259, %if.then238, %if.else246, %if.then243, %if.end73
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_eof(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %sext27 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext27, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %6) #5
  %parsing = getelementptr inbounds %struct.p_state* %call, i64 0, i32 5
  %7 = load i8* %parsing, align 1, !tbaa !1
  %tobool = icmp eq i8 %7, 0
  br i1 %tobool, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %eof = getelementptr inbounds %struct.p_state* %call, i64 0, i32 6
  store i8 1, i8* %eof, align 1, !tbaa !1
  br label %if.end13

if.else:                                          ; preds = %if.end
  store i8 1, i8* %parsing, align 1, !tbaa !1
  tail call fastcc void @parse(%struct.p_state* %call, %struct.sv* null, %struct.sv* %6) #5
  store i8 0, i8* %parsing, align 1, !tbaa !1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %add.ptr8.sum = sub i64 1, %idx.ext7
  %incdec.ptr14 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum
  store %struct.sv* %6, %struct.sv** %incdec.ptr14, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr14, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_strict_comment(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4123 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4123 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %6 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name, align 8, !tbaa !0
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i8* %8) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %10) #5
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
    i32 4, label %sw.bb12
    i32 5, label %sw.bb13
    i32 6, label %sw.bb14
    i32 7, label %sw.bb15
    i32 8, label %sw.bb16
    i32 9, label %sw.bb17
    i32 10, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %strict_comment = getelementptr inbounds %struct.p_state* %call, i64 0, i32 20
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %strict_names = getelementptr inbounds %struct.p_state* %call, i64 0, i32 21
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %xml_mode = getelementptr inbounds %struct.p_state* %call, i64 0, i32 23
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %unbroken_text = getelementptr inbounds %struct.p_state* %call, i64 0, i32 24
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %marked_sections = getelementptr inbounds %struct.p_state* %call, i64 0, i32 19
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %attr_encoded = getelementptr inbounds %struct.p_state* %call, i64 0, i32 25
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %case_sensitive = getelementptr inbounds %struct.p_state* %call, i64 0, i32 26
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %strict_end = getelementptr inbounds %struct.p_state* %call, i64 0, i32 22
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %closing_plaintext = getelementptr inbounds %struct.p_state* %call, i64 0, i32 27
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %utf8_mode = getelementptr inbounds %struct.p_state* %call, i64 0, i32 28
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str28, i64 0, i64 0), i32 %5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  %attr.0 = phi i8* [ undef, %sw.default ], [ %utf8_mode, %sw.bb18 ], [ %closing_plaintext, %sw.bb17 ], [ %strict_end, %sw.bb16 ], [ %case_sensitive, %sw.bb15 ], [ %attr_encoded, %sw.bb14 ], [ %marked_sections, %sw.bb13 ], [ %unbroken_text, %sw.bb12 ], [ %xml_mode, %sw.bb11 ], [ %strict_names, %sw.bb10 ], [ %strict_comment, %sw.bb ]
  %11 = load i8* %attr.0, align 1, !tbaa !1
  %tobool = icmp ne i8 %11, 0
  %cond = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %cmp20 = icmp sgt i32 %conv5, 1
  br i1 %cmp20, label %if.then22, label %if.end89

if.then22:                                        ; preds = %sw.epilog
  %sext124 = add i64 %add.ptr.idx, 8589934592
  %idxprom24 = ashr exact i64 %sext124, 32
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds %struct.sv** %12, i64 %idxprom24
  %13 = load %struct.sv** %arrayidx25, align 8, !tbaa !0
  %tobool26 = icmp eq %struct.sv* %13, null
  br i1 %tobool26, label %cond.end86, label %cond.false

cond.false:                                       ; preds = %if.then22
  %sv_flags = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %14, 262144
  %tobool30 = icmp eq i32 %and, 0
  br i1 %tobool30, label %cond.false47, label %cond.true31

cond.true31:                                      ; preds = %cond.false
  %sv_any35 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %15 = load i8** %sv_any35, align 8, !tbaa !0
  %16 = bitcast i8* %15 to %struct.xpv*
  store %struct.xpv* %16, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool36 = icmp eq i8* %15, null
  br i1 %tobool36, label %land.end45, label %land.rhs

land.rhs:                                         ; preds = %cond.true31
  %xpv_cur = getelementptr inbounds i8* %15, i64 8
  %17 = bitcast i8* %xpv_cur to i64*
  %18 = load i64* %17, align 8, !tbaa !4
  %cmp37 = icmp ugt i64 %18, 1
  br i1 %cmp37, label %land.end45, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool40 = icmp eq i64 %18, 0
  br i1 %tobool40, label %land.end45, label %land.rhs41

land.rhs41:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %15 to i8**
  %19 = load i8** %xpv_pv, align 8, !tbaa !0
  %20 = load i8* %19, align 1, !tbaa !1
  %cmp43 = icmp ne i8 %20, 48
  br label %land.end45

land.end45:                                       ; preds = %lor.rhs, %cond.true31, %land.rhs, %land.rhs41
  %21 = phi i1 [ false, %cond.true31 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp43, %land.rhs41 ]
  %cond46 = zext i1 %21 to i8
  br label %cond.end86

cond.false47:                                     ; preds = %cond.false
  %and52 = and i32 %14, 65536
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %cond.false61, label %cond.true54

cond.true54:                                      ; preds = %cond.false47
  %sv_any58 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %22 = load i8** %sv_any58, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %22, i64 24
  %23 = bitcast i8* %xiv_iv to i64*
  %24 = load i64* %23, align 8, !tbaa !4
  %cmp59 = icmp ne i64 %24, 0
  %conv60 = zext i1 %cmp59 to i8
  br label %cond.end86

cond.false61:                                     ; preds = %cond.false47
  %and66 = and i32 %14, 131072
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %cond.false75, label %cond.true68

cond.true68:                                      ; preds = %cond.false61
  %sv_any72 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %25 = load i8** %sv_any72, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %25, i64 32
  %26 = bitcast i8* %xnv_nv to double*
  %27 = load double* %26, align 8, !tbaa !5
  %cmp73 = fcmp une double %27, 0.000000e+00
  %conv74 = zext i1 %cmp73 to i8
  br label %cond.end86

cond.false75:                                     ; preds = %cond.false61
  %call79 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %13) #6
  br label %cond.end86

cond.end86:                                       ; preds = %if.then22, %land.end45, %cond.true68, %cond.false75, %cond.true54
  %cond87 = phi i8 [ 0, %if.then22 ], [ %cond46, %land.end45 ], [ %conv60, %cond.true54 ], [ %conv74, %cond.true68 ], [ %call79, %cond.false75 ]
  store i8 %cond87, i8* %attr.0, align 1, !tbaa !1
  br label %if.end89

if.end89:                                         ; preds = %cond.end86, %sw.epilog
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds %struct.sv** %28, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %arrayidx92, align 8, !tbaa !0
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds %struct.sv** %29, i64 %idxprom
  %30 = load %struct.sv** %arrayidx95, align 8, !tbaa !0
  %call96 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %30) #6
  %31 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr98 = getelementptr inbounds %struct.sv** %31, i64 %idxprom
  store %struct.sv** %add.ptr98, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_boolean_attribute_value(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div440 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div440 to i32
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([58 x i8]* @.str29, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %5) #5
  %bool_attr_val = getelementptr inbounds %struct.p_state* %call, i64 0, i32 29
  %6 = load %struct.sv** %bool_attr_val, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %6, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %call9 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %6) #6
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.sv* [ %call9, %cond.true ], [ @PL_sv_undef, %if.end ]
  %cmp10 = icmp sgt i32 %conv5, 1
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %cond.end
  %7 = load %struct.sv** %bool_attr_val, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %7) #6
  %sext41 = add i64 %add.ptr.idx, 8589934592
  %idxprom15 = ashr exact i64 %sext41, 32
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds %struct.sv** %8, i64 %idxprom15
  %9 = load %struct.sv** %arrayidx16, align 8, !tbaa !0
  %call17 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %9) #6
  store %struct.sv* %call17, %struct.sv** %bool_attr_val, align 8, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.then12, %cond.end
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %arrayidx22, align 8, !tbaa !0
  %11 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds %struct.sv** %11, i64 %idxprom
  %12 = load %struct.sv** %arrayidx25, align 8, !tbaa !0
  %call26 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %12) #6
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr28 = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv** %add.ptr28, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_ignore_tags(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add nsw i64 %idx.ext, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4116 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4116 to i32
  %sv_any = getelementptr inbounds %struct.cv* %cv, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %5 = load i32* %any_i32, align 4, !tbaa !3
  %cmp = icmp slt i32 %conv5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %xcv_gv = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 12
  %6 = load %struct.gv** %xcv_gv, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_name = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name, align 8, !tbaa !0
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i8* %8) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  %10 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %10) #5
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %report_tags = getelementptr inbounds %struct.p_state* %call, i64 0, i32 32
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %ignore_tags = getelementptr inbounds %struct.p_state* %call, i64 0, i32 33
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %ignore_elements = getelementptr inbounds %struct.p_state* %call, i64 0, i32 34
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str30, i64 0, i64 0), i32 %5) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %sw.bb
  %attr.0 = phi %struct.hv** [ undef, %sw.default ], [ %ignore_elements, %sw.bb11 ], [ %ignore_tags, %sw.bb10 ], [ %report_tags, %sw.bb ]
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %11, i64 0, i32 6
  %12 = load i8* %op_flags, align 1, !tbaa !1
  %conv12 = zext i8 %12 to i32
  %and = and i32 %conv12, 3
  switch i32 %and, label %cond.false28 [
    i32 1, label %if.end37
    i32 2, label %if.then36
    i32 3, label %if.then36
  ]

cond.false28:                                     ; preds = %sw.epilog
  %call29 = tail call i32 @Perl_block_gimme() #6
  %phitmp = icmp eq i32 %call29, 128
  br i1 %phitmp, label %if.end37, label %if.then36

if.then36:                                        ; preds = %cond.false28, %sw.epilog, %sw.epilog
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([27 x i8]* @.str31, i64 0, i64 0)) #6
  br label %if.end37

if.end37:                                         ; preds = %cond.false28, %sw.epilog, %if.then36
  %dec = add i32 %conv5, -1
  %tobool = icmp eq i32 %dec, 0
  %13 = load %struct.hv** %attr.0, align 8, !tbaa !0
  %tobool39 = icmp ne %struct.hv* %13, null
  br i1 %tobool, label %if.else81, label %if.then38

if.then38:                                        ; preds = %if.end37
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then38
  tail call void @Perl_hv_clear(%struct.hv* %13) #6
  br label %for.cond.preheader

if.else:                                          ; preds = %if.then38
  %call41 = tail call %struct.hv* @Perl_newHV() #6
  store %struct.hv* %call41, %struct.hv** %attr.0, align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then40
  %cmp43119 = icmp sgt i32 %dec, 0
  br i1 %cmp43119, label %for.body.lr.ph, label %if.end85

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sext122 = shl i64 %add, 32
  %14 = ashr exact i64 %sext122, 32
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.backedge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = add nsw i64 %indvars.iv.next, %14
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds %struct.sv** %16, i64 %15
  %17 = load %struct.sv** %arrayidx48, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %17, i64 0, i32 2
  %18 = load i32* %sv_flags, align 4, !tbaa !3
  %and49 = and i32 %18, 524288
  %tobool50 = icmp eq i32 %and49, 0
  br i1 %tobool50, label %if.else74, label %if.then51

if.then51:                                        ; preds = %for.body
  %sv_any52 = getelementptr inbounds %struct.sv* %17, i64 0, i32 0
  %19 = load i8** %sv_any52, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %19 to %struct.sv**
  %20 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags53 = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %21 = load i32* %sv_flags53, align 4, !tbaa !3
  %and54 = and i32 %21, 255
  %cmp55 = icmp eq i32 %and54, 10
  br i1 %cmp55, label %if.then57, label %if.else72

if.then57:                                        ; preds = %if.then51
  %22 = bitcast %struct.sv* %20 to %struct.av*
  %call58 = tail call i32 @Perl_av_len(%struct.av* %22) #6
  %add59 = add nsw i32 %call58, 1
  %conv60 = sext i32 %add59 to i64
  %cmp62117 = icmp eq i32 %add59, 0
  br i1 %cmp62117, label %for.cond.backedge, label %for.body64

for.body64:                                       ; preds = %if.then57, %for.inc
  %j.0118 = phi i64 [ %inc, %for.inc ], [ 0, %if.then57 ]
  %conv65 = trunc i64 %j.0118 to i32
  %call66 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %22, i32 %conv65, i32 0) #6
  %tobool67 = icmp eq %struct.sv** %call66, null
  br i1 %tobool67, label %for.inc, label %if.then68

if.then68:                                        ; preds = %for.body64
  %23 = load %struct.hv** %attr.0, align 8, !tbaa !0
  %24 = load %struct.sv** %call66, align 8, !tbaa !0
  %call69 = tail call %struct.sv* @Perl_newSViv(i64 0) #6
  %call70 = tail call %struct.he* @Perl_hv_store_ent(%struct.hv* %23, %struct.sv* %24, %struct.sv* %call69, i32 0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body64, %if.then68
  %inc = add i64 %j.0118, 1
  %cmp62 = icmp ult i64 %inc, %conv60
  br i1 %cmp62, label %for.body64, label %for.cond.backedge

if.else72:                                        ; preds = %if.then51
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str32, i64 0, i64 0)) #6
  br label %for.cond.backedge

if.else74:                                        ; preds = %for.body
  %25 = load %struct.hv** %attr.0, align 8, !tbaa !0
  %call75 = tail call %struct.sv* @Perl_newSViv(i64 0) #6
  %call76 = tail call %struct.he* @Perl_hv_store_ent(%struct.hv* %25, %struct.sv* %17, %struct.sv* %call75, i32 0) #6
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then57, %for.inc, %if.else74, %if.else72
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dec
  br i1 %exitcond, label %if.end85, label %for.body

if.else81:                                        ; preds = %if.end37
  br i1 %tobool39, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.else81
  %26 = bitcast %struct.hv* %13 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %26) #6
  store %struct.hv* null, %struct.hv** %attr.0, align 8, !tbaa !0
  br label %if.end85

if.end85:                                         ; preds = %for.cond.preheader, %for.cond.backedge, %if.else81, %if.then83
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr87.sum = add i64 %idxprom, -1
  %add.ptr88 = getelementptr inbounds %struct.sv** %27, i64 %add.ptr87.sum
  store %struct.sv** %add.ptr88, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #1

; Function Attrs: optsize
declare void @Perl_hv_clear(%struct.hv*) #1

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #1

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_store_ent(%struct.hv*, %struct.sv*, %struct.sv*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Parser_handler(%struct.cv* nocapture %cv) #0 {
entry:
  %len.i = alloca i64, align 8
  %c.i = alloca i8, align 1
  %c83.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  %name_len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div498 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div498 to i32
  %cmp = icmp slt i32 %conv5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([53 x i8]* @.str33, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %sext99 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext99, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call fastcc %struct.p_state* @get_pstate_hv(%struct.sv* %5) #5
  %sext100 = add i64 %add.ptr.idx, 8589934592
  %idxprom11 = ashr exact i64 %sext100, 32
  %6 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %6, i64 %idxprom11
  %7 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 262144
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %10 = bitcast i8* %xpv_cur to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  store i64 %11, i64* %name_len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %9 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call16 = call i8* @Perl_sv_2pv_flags(%struct.sv* %7, i64* %name_len, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call16, %cond.false ]
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.0124, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp17 = icmp slt i32 %13, 9
  br i1 %cmp17, label %for.body, label %if.then26

for.body:                                         ; preds = %cond.end, %for.cond
  %indvars.iv = phi i64 [ 0, %cond.end ], [ %indvars.iv.next, %for.cond ]
  %i.0124 = phi i32 [ 0, %cond.end ], [ %inc, %for.cond ]
  %arrayidx20 = getelementptr inbounds [9 x i8*]* @event_id_str, i64 0, i64 %indvars.iv
  %14 = load i8** %arrayidx20, align 8, !tbaa !0
  %call21 = call i32 @strcmp(i8* %cond, i8* %14) #6
  %tobool = icmp eq i32 %call21, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %tobool, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %cmp24 = icmp slt i32 %i.0124, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.cond, %for.end
  %event.0115 = phi i32 [ %i.0124, %for.end ], [ -1, %for.cond ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str34, i64 0, i64 0), i8* %cond) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end
  %event.0114 = phi i32 [ %event.0115, %if.then26 ], [ %i.0124, %for.end ]
  %idxprom28 = sext i32 %event.0114 to i64
  %cb = getelementptr inbounds %struct.p_state* %call, i64 0, i32 30, i64 %idxprom28, i32 0
  %15 = load %struct.sv** %cb, align 8, !tbaa !0
  %tobool30 = icmp eq %struct.sv* %15, null
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end27
  %sv_flags33 = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags33, align 4, !tbaa !3
  %and34 = and i32 %16, 255
  %cmp35 = icmp eq i32 %and34, 10
  br i1 %cmp35, label %cond.true37, label %cond.false41

cond.true37:                                      ; preds = %if.then31
  %call39 = call %struct.sv* @Perl_newRV(%struct.sv* %15) #6
  %call40 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call39) #6
  br label %cond.end45

cond.false41:                                     ; preds = %if.then31
  %call43 = call %struct.sv* @Perl_newSVsv(%struct.sv* %15) #6
  %call44 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call43) #6
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false41, %cond.true37
  %cond46 = phi %struct.sv* [ %call40, %cond.true37 ], [ %call44, %cond.false41 ]
  %add.ptr8.sum103 = sub i64 1, %idx.ext7
  %incdec.ptr47 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum103
  store %struct.sv* %cond46, %struct.sv** %incdec.ptr47, align 8, !tbaa !0
  br label %if.end49

if.else:                                          ; preds = %if.end27
  %add.ptr8.sum = sub i64 1, %idx.ext7
  %incdec.ptr48 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr8.sum
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr48, align 8, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.else, %cond.end45
  %sp.0 = phi %struct.sv** [ %incdec.ptr47, %cond.end45 ], [ %incdec.ptr48, %if.else ]
  %cmp50 = icmp sgt i32 %conv5, 3
  br i1 %cmp50, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.end49
  %argspec = getelementptr inbounds %struct.p_state* %call, i64 0, i32 30, i64 %idxprom28, i32 1
  %17 = load %struct.sv** %argspec, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %17) #6
  store %struct.sv* null, %struct.sv** %argspec, align 8, !tbaa !0
  %sext102 = add i64 %add.ptr.idx, 17179869184
  %idxprom55 = ashr exact i64 %sext102, 32
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds %struct.sv** %18, i64 %idxprom55
  %19 = load %struct.sv** %arrayidx56, align 8, !tbaa !0
  %20 = bitcast i64* %len.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  call void @llvm.lifetime.start(i64 1, i8* %c.i) #2
  call void @llvm.lifetime.start(i64 1, i8* %c83.i) #2
  %21 = getelementptr inbounds [2 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2, i8* %21) #2
  %call.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0), i64 0) #6
  %sv_flags.i = getelementptr inbounds %struct.sv* %19, i64 0, i32 2
  %22 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %22, 262144
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then52
  %sv_any.i = getelementptr inbounds %struct.sv* %19, i64 0, i32 0
  %23 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %23, i64 8
  %24 = bitcast i8* %xpv_cur.i to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  store i64 %25, i64* %len.i, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %23 to i8**
  %26 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then52
  %call2.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %19, i64* %len.i, i32 2) #6
  %.pre.i = load i64* %len.i, align 8, !tbaa !4
  %.pre327.i = load i32* %sv_flags.i, align 4, !tbaa !3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %27 = phi i32 [ %22, %cond.true.i ], [ %.pre327.i, %cond.false.i ]
  %28 = phi i64 [ %25, %cond.true.i ], [ %.pre.i, %cond.false.i ]
  %cond.i = phi i8* [ %26, %cond.true.i ], [ %call2.i, %cond.false.i ]
  %add.ptr.i = getelementptr inbounds i8* %cond.i, i64 %28
  %and4.i = and i32 %27, 536870912
  %tobool.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.i, label %while.cond.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end.i
  %sv_flags5.i = getelementptr inbounds %struct.sv* %call.i, i64 0, i32 2
  %29 = load i32* %sv_flags5.i, align 4, !tbaa !3
  %or.i = or i32 %29, 536870912
  store i32 %or.i, i32* %sv_flags5.i, align 4, !tbaa !3
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then.i, %cond.end.i, %while.cond.i
  %s.0.i = phi i8* [ %incdec.ptr.i, %while.cond.i ], [ %cond.i, %cond.end.i ], [ %cond.i, %if.then.i ]
  %30 = load i8* %s.0.i, align 1, !tbaa !1
  %idxprom.i = zext i8 %30 to i64
  %arrayidx.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom.i
  %31 = load i8* %arrayidx.i, align 1, !tbaa !1
  %and6.i = and i8 %31, 1
  %tobool7.i = icmp eq i8 %and6.i, 0
  %incdec.ptr.i = getelementptr inbounds i8* %s.0.i, i64 1
  br i1 %tobool7.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %cmp9.i = icmp eq i8 %30, 64
  br i1 %cmp9.i, label %while.cond13.i, label %while.cond39.preheader.i

while.cond13.i:                                   ; preds = %while.end.i, %while.cond13.i
  %s.0.pn.i = phi i8* [ %tmp.0.i, %while.cond13.i ], [ %s.0.i, %while.end.i ]
  %tmp.0.i = getelementptr inbounds i8* %s.0.pn.i, i64 1
  %32 = load i8* %tmp.0.i, align 1, !tbaa !1
  %idxprom14.i = zext i8 %32 to i64
  %arrayidx15.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom14.i
  %33 = load i8* %arrayidx15.i, align 1, !tbaa !1
  %and17.i = and i8 %33, 1
  %tobool18.i = icmp eq i8 %and17.i, 0
  br i1 %tobool18.i, label %while.end21.i, label %while.cond13.i

while.end21.i:                                    ; preds = %while.cond13.i
  %cmp23.i = icmp eq i8 %32, 123
  br i1 %cmp23.i, label %if.then25.i, label %while.cond39.preheader.i

if.then25.i:                                      ; preds = %while.end21.i
  store i8 22, i8* %c.i, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* %c.i, i64 1, i32 2) #6
  br label %while.cond28.i

while.cond28.i:                                   ; preds = %while.cond28.i, %if.then25.i
  %tmp.0.pn.i = phi i8* [ %tmp.0.i, %if.then25.i ], [ %tmp.1.i, %while.cond28.i ]
  %tmp.1.i = getelementptr inbounds i8* %tmp.0.pn.i, i64 1
  %34 = load i8* %tmp.1.i, align 1, !tbaa !1
  %idxprom29.i = zext i8 %34 to i64
  %arrayidx30.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom29.i
  %35 = load i8* %arrayidx30.i, align 1, !tbaa !1
  %and32.i = and i8 %35, 1
  %tobool33.i = icmp eq i8 %and32.i, 0
  br i1 %tobool33.i, label %while.cond39.preheader.i, label %while.cond28.i

while.cond39.preheader.i:                         ; preds = %while.cond28.i, %while.end21.i, %while.end.i
  %36 = phi i8 [ %30, %while.end.i ], [ 64, %while.end21.i ], [ %34, %while.cond28.i ]
  %s.1.ph.i = phi i8* [ %s.0.i, %while.end.i ], [ %s.0.i, %while.end21.i ], [ %tmp.1.i, %while.cond28.i ]
  %cmp40318.i = icmp ult i8* %s.1.ph.i, %add.ptr.i
  br i1 %cmp40318.i, label %while.body42.lr.ph.i, label %argspec_compile.exit

while.body42.lr.ph.i:                             ; preds = %while.cond39.preheader.i
  %arrayidx163.i = getelementptr inbounds [2 x i8]* %buf.i, i64 0, i64 1
  %line.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 3
  %skipped_text.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 16
  %argspec_entity_decode.i = getelementptr inbounds %struct.p_state* %call, i64 0, i32 31
  %sv_any191.i = getelementptr inbounds %struct.sv* %call.i, i64 0, i32 0
  %idxprom43.phi.trans.insert.i = zext i8 %36 to i64
  %arrayidx44.phi.trans.insert.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom43.phi.trans.insert.i
  %.pre328.i = load i8* %arrayidx44.phi.trans.insert.i, align 1, !tbaa !1
  br label %while.body42.i

while.cond39.loopexit.i:                          ; preds = %while.cond223.i
  %cmp40.i = icmp ult i8* %s.7.i, %add.ptr.i
  br i1 %cmp40.i, label %while.body42.i, label %argspec_compile.exit

while.body42.i:                                   ; preds = %while.cond39.loopexit.i, %while.body42.lr.ph.i
  %37 = phi i8 [ %.pre328.i, %while.body42.lr.ph.i ], [ %58, %while.cond39.loopexit.i ]
  %38 = phi i8 [ %36, %while.body42.lr.ph.i ], [ %57, %while.cond39.loopexit.i ]
  %s.1319.i = phi i8* [ %s.1.ph.i, %while.body42.lr.ph.i ], [ %s.7.i, %while.cond39.loopexit.i ]
  %and46.i = and i8 %37, 2
  %tobool47.i = icmp ne i8 %and46.i, 0
  %cmp49.i = icmp eq i8 %38, 64
  %or.cond.i = or i1 %tobool47.i, %cmp49.i
  br i1 %or.cond.i, label %while.cond56.i, label %if.else120.i

while.cond56.i:                                   ; preds = %while.body42.i, %while.cond56.i
  %s.1.pn311.i = phi i8* [ %s.2.i, %while.cond56.i ], [ %s.1319.i, %while.body42.i ]
  %s.2.i = getelementptr inbounds i8* %s.1.pn311.i, i64 1
  %39 = load i8* %s.2.i, align 1, !tbaa !1
  %idxprom57.i = zext i8 %39 to i64
  %arrayidx58.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom57.i
  %40 = load i8* %arrayidx58.i, align 1, !tbaa !1
  %and60.i = and i8 %40, 4
  %tobool61.i = icmp eq i8 %and60.i, 0
  br i1 %tobool61.i, label %for.cond.loopexit.i, label %while.cond56.i

for.cond.loopexit.i:                              ; preds = %while.cond56.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %s.2.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %s.1319.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.cond.loopexit.i
  %arg_name.0315.i = phi i8** [ getelementptr inbounds ([20 x i8*]* @argname, i64 0, i64 0), %for.cond.loopexit.i ], [ %incdec.ptr78.i, %for.inc.i ]
  %a.0314.i = phi i32 [ 1, %for.cond.loopexit.i ], [ %inc.i, %for.inc.i ]
  %41 = load i8** %arg_name.0315.i, align 8, !tbaa !0
  %call67.i = call i32 @strncmp(i8* %41, i8* %s.1319.i, i64 %sub.ptr.sub.i) #6
  %tobool68.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx72.i = getelementptr inbounds i8* %41, i64 %sub.ptr.sub.i
  %42 = load i8* %arrayidx72.i, align 1, !tbaa !1
  %cmp74.i = icmp eq i8 %42, 0
  br i1 %cmp74.i, label %if.then81.i, label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %inc.i = add nsw i32 %a.0314.i, 1
  %incdec.ptr78.i = getelementptr inbounds i8** %arg_name.0315.i, i64 1
  %cmp65.i = icmp slt i32 %inc.i, 21
  br i1 %cmp65.i, label %for.body.i, label %if.else.i

if.then81.i:                                      ; preds = %land.lhs.true.i
  %conv84.i = trunc i32 %a.0314.i to i8
  store i8 %conv84.i, i8* %c83.i, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* %c83.i, i64 1, i32 2) #6
  %a.0.off.i = add i32 %a.0314.i, -17
  %43 = icmp ult i32 %a.0.off.i, 2
  br i1 %43, label %if.then90.i, label %if.end95.i

if.then90.i:                                      ; preds = %if.then81.i
  %44 = load i64* %line.i, align 8, !tbaa !4
  %tobool91.i = icmp eq i64 %44, 0
  br i1 %tobool91.i, label %if.then92.i, label %if.end95.i

if.then92.i:                                      ; preds = %if.then90.i
  store i64 1, i64* %line.i, align 8, !tbaa !4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then92.i, %if.then90.i, %if.then81.i
  %cmp96.i = icmp eq i32 %a.0314.i, 13
  br i1 %cmp96.i, label %if.then98.i, label %if.end104.i

if.then98.i:                                      ; preds = %if.end95.i
  %45 = load %struct.sv** %skipped_text.i, align 8, !tbaa !0
  %tobool99.i = icmp eq %struct.sv* %45, null
  br i1 %tobool99.i, label %if.then100.i, label %if.end104.i

if.then100.i:                                     ; preds = %if.then98.i
  %call101.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0), i64 0) #6
  store %struct.sv* %call101.i, %struct.sv** %skipped_text.i, align 8, !tbaa !0
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then100.i, %if.then98.i, %if.end95.i
  %a.0.off310.i = add i32 %a.0314.i, -7
  %46 = icmp ult i32 %a.0.off310.i, 2
  %cmp111.i = icmp eq i32 %a.0314.i, 11
  %or.cond234.i = or i1 %46, %cmp111.i
  br i1 %or.cond234.i, label %if.then113.i, label %while.cond178.i

if.then113.i:                                     ; preds = %if.end104.i
  %47 = load i8* %argspec_entity_decode.i, align 1, !tbaa !1
  %inc114.i = add i8 %47, 1
  store i8 %inc114.i, i8* %argspec_entity_decode.i, align 1, !tbaa !1
  br label %while.cond178.i

if.else.i:                                        ; preds = %for.inc.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([40 x i8]* @.str65, i64 0, i64 0), i64 %sub.ptr.sub.i, i8* %s.1319.i) #6
  br label %while.cond178.i

if.else120.i:                                     ; preds = %while.body42.i
  switch i8 %38, label %if.else175.i [
    i8 34, label %while.cond131.i
    i8 39, label %while.cond131.i
  ]

while.cond131.i:                                  ; preds = %if.else120.i, %if.else120.i, %land.lhs.true134.i
  %s.1.pn.i = phi i8* [ %s.3.i, %land.lhs.true134.i ], [ %s.1319.i, %if.else120.i ], [ %s.1319.i, %if.else120.i ]
  %s.3.i = getelementptr inbounds i8* %s.1.pn.i, i64 1
  %cmp132.i = icmp ult i8* %s.3.i, %add.ptr.i
  %48 = load i8* %s.3.i, align 1, !tbaa !1
  br i1 %cmp132.i, label %land.lhs.true134.i, label %while.end144.i

land.lhs.true134.i:                               ; preds = %while.cond131.i
  %cmp140.i = icmp ne i8 %48, 92
  %not.cmp137.i = icmp ne i8 %48, %38
  %.cmp140.i = and i1 %cmp140.i, %not.cmp137.i
  br i1 %.cmp140.i, label %while.cond131.i, label %while.end144.i

while.end144.i:                                   ; preds = %land.lhs.true134.i, %while.cond131.i
  %cmp147.i = icmp eq i8 %48, %38
  br i1 %cmp147.i, label %if.then149.i, label %if.else167.i

if.then149.i:                                     ; preds = %while.end144.i
  %sub.ptr.lhs.cast152.i = ptrtoint i8* %s.3.i to i64
  %sub.ptr.rhs.cast153.i = ptrtoint i8* %s.1319.i to i64
  %sub.ptr.sub154.i = sub i64 %sub.ptr.lhs.cast152.i, %sub.ptr.rhs.cast153.i
  %sub.i = add nsw i64 %sub.ptr.sub154.i, 4294967295
  %conv155.i = trunc i64 %sub.i to i32
  %cmp157.i = icmp sgt i32 %conv155.i, 255
  br i1 %cmp157.i, label %if.then159.i, label %if.end160.i

if.then159.i:                                     ; preds = %if.then149.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([51 x i8]* @.str66, i64 0, i64 0)) #6
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then159.i, %if.then149.i
  store i8 21, i8* %21, align 1, !tbaa !1
  %conv162.i = trunc i64 %sub.i to i8
  store i8 %conv162.i, i8* %arrayidx163.i, align 1, !tbaa !1
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* %21, i64 2, i32 2) #6
  %add.ptr164.i = getelementptr inbounds i8* %s.1319.i, i64 1
  %sext.i = shl i64 %sub.i, 32
  %conv165.i = ashr exact i64 %sext.i, 32
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* %add.ptr164.i, i64 %conv165.i, i32 2) #6
  %incdec.ptr166.i = getelementptr inbounds i8* %s.1.pn.i, i64 2
  br label %while.cond178.i

if.else167.i:                                     ; preds = %while.end144.i
  %cmp169.i = icmp eq i8 %48, 92
  br i1 %cmp169.i, label %if.then171.i, label %if.else172.i

if.then171.i:                                     ; preds = %if.else167.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([49 x i8]* @.str67, i64 0, i64 0)) #6
  br label %while.cond178.i

if.else172.i:                                     ; preds = %if.else167.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str68, i64 0, i64 0)) #6
  br label %while.cond178.i

if.else175.i:                                     ; preds = %if.else120.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([17 x i8]* @.str69, i64 0, i64 0), i8* %s.1319.i) #6
  br label %while.cond178.i

while.cond178.i:                                  ; preds = %if.else175.i, %if.else172.i, %if.then171.i, %if.end160.i, %if.else.i, %if.then113.i, %if.end104.i, %while.cond178.i
  %s.4.i = phi i8* [ %incdec.ptr185.i, %while.cond178.i ], [ %s.1319.i, %if.else175.i ], [ %s.3.i, %if.else172.i ], [ %s.3.i, %if.then171.i ], [ %incdec.ptr166.i, %if.end160.i ], [ %s.2.i, %if.else.i ], [ %s.2.i, %if.then113.i ], [ %s.2.i, %if.end104.i ]
  %49 = load i8* %s.4.i, align 1, !tbaa !1
  %idxprom179.i = zext i8 %49 to i64
  %arrayidx180.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom179.i
  %50 = load i8* %arrayidx180.i, align 1, !tbaa !1
  %and182.i = and i8 %50, 1
  %tobool183.i = icmp eq i8 %and182.i, 0
  %incdec.ptr185.i = getelementptr inbounds i8* %s.4.i, i64 1
  br i1 %tobool183.i, label %while.end186.i, label %while.cond178.i

while.end186.i:                                   ; preds = %while.cond178.i
  %cmp188.i = icmp eq i8 %49, 125
  br i1 %cmp188.i, label %land.lhs.true190.i, label %if.end212.i

land.lhs.true190.i:                               ; preds = %while.end186.i
  %51 = load i8** %sv_any191.i, align 8, !tbaa !0
  %xpv_pv192.i = bitcast i8* %51 to i8**
  %52 = load i8** %xpv_pv192.i, align 8, !tbaa !0
  %53 = load i8* %52, align 1, !tbaa !1
  %cmp195.i = icmp eq i8 %53, 22
  br i1 %cmp195.i, label %while.cond199.i, label %if.end212.i

while.cond199.i:                                  ; preds = %land.lhs.true190.i, %while.cond199.i
  %s.4.pn.i = phi i8* [ %s.5.i, %while.cond199.i ], [ %s.4.i, %land.lhs.true190.i ]
  %s.5.i = getelementptr inbounds i8* %s.4.pn.i, i64 1
  %54 = load i8* %s.5.i, align 1, !tbaa !1
  %idxprom200.i = zext i8 %54 to i64
  %arrayidx201.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom200.i
  %55 = load i8* %arrayidx201.i, align 1, !tbaa !1
  %and203.i = and i8 %55, 1
  %tobool204.i = icmp eq i8 %and203.i, 0
  br i1 %tobool204.i, label %while.end207.i, label %while.cond199.i

while.end207.i:                                   ; preds = %while.cond199.i
  %cmp208.i = icmp ult i8* %s.5.i, %add.ptr.i
  br i1 %cmp208.i, label %if.then210.i, label %if.end212.i

if.then210.i:                                     ; preds = %while.end207.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str70, i64 0, i64 0), i8* %s.5.i) #6
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then210.i, %while.end207.i, %land.lhs.true190.i, %while.end186.i
  %s.6.i = phi i8* [ %s.5.i, %if.then210.i ], [ %s.5.i, %while.end207.i ], [ %s.4.i, %land.lhs.true190.i ], [ %s.4.i, %while.end186.i ]
  %cmp213.i = icmp eq i8* %s.6.i, %add.ptr.i
  br i1 %cmp213.i, label %argspec_compile.exit, label %if.end216.i

if.end216.i:                                      ; preds = %if.end212.i
  %56 = load i8* %s.6.i, align 1, !tbaa !1
  %cmp218.i = icmp eq i8 %56, 44
  br i1 %cmp218.i, label %while.cond223.i, label %if.then220.i

if.then220.i:                                     ; preds = %if.end216.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str71, i64 0, i64 0)) #6
  br label %while.cond223.i

while.cond223.i:                                  ; preds = %if.then220.i, %if.end216.i, %while.cond223.i
  %s.6.pn.i = phi i8* [ %s.7.i, %while.cond223.i ], [ %s.6.i, %if.end216.i ], [ %s.6.i, %if.then220.i ]
  %s.7.i = getelementptr inbounds i8* %s.6.pn.i, i64 1
  %57 = load i8* %s.7.i, align 1, !tbaa !1
  %idxprom224.i = zext i8 %57 to i64
  %arrayidx225.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom224.i
  %58 = load i8* %arrayidx225.i, align 1, !tbaa !1
  %and227.i = and i8 %58, 1
  %tobool228.i = icmp eq i8 %and227.i, 0
  br i1 %tobool228.i, label %while.cond39.loopexit.i, label %while.cond223.i

argspec_compile.exit:                             ; preds = %while.cond39.loopexit.i, %if.end212.i, %while.cond39.preheader.i
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  call void @llvm.lifetime.end(i64 1, i8* %c.i) #2
  call void @llvm.lifetime.end(i64 1, i8* %c83.i) #2
  call void @llvm.lifetime.end(i64 2, i8* %21) #2
  store %struct.sv* %call.i, %struct.sv** %argspec, align 8, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %argspec_compile.exit, %if.end49
  %cmp60 = icmp sgt i32 %conv5, 2
  br i1 %cmp60, label %if.then62, label %if.end70

if.then62:                                        ; preds = %if.end59
  %59 = load %struct.sv** %cb, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %59) #6
  store %struct.sv* null, %struct.sv** %cb, align 8, !tbaa !0
  %sext101 = add i64 %add.ptr.idx, 12884901888
  %idxprom66 = ashr exact i64 %sext101, 32
  %60 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds %struct.sv** %60, i64 %idxprom66
  %61 = load %struct.sv** %arrayidx67, align 8, !tbaa !0
  %sv_flags.i104 = getelementptr inbounds %struct.sv* %61, i64 0, i32 2
  %62 = load i32* %sv_flags.i104, align 4, !tbaa !3
  %and.i105 = and i32 %62, 524288
  %tobool.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.i106, label %if.end11.i, label %if.then.i108

if.then.i108:                                     ; preds = %if.then62
  %sv_any.i107 = getelementptr inbounds %struct.sv* %61, i64 0, i32 0
  %63 = load i8** %sv_any.i107, align 8, !tbaa !0
  %xrv_rv.i = bitcast i8* %63 to %struct.sv**
  %64 = load %struct.sv** %xrv_rv.i, align 8, !tbaa !0
  %sv_flags1.i = getelementptr inbounds %struct.sv* %64, i64 0, i32 2
  %65 = load i32* %sv_flags1.i, align 4, !tbaa !3
  %and2.i = and i32 %65, 255
  switch i32 %and2.i, label %if.end10.i [
    i32 12, label %if.then3.i
    i32 10, label %if.then7.i
  ]

if.then3.i:                                       ; preds = %if.then.i108
  %call.i109 = call %struct.sv* @Perl_newSVsv(%struct.sv* %61) #6
  br label %check_handler.exit

if.then7.i:                                       ; preds = %if.then.i108
  store %struct.sv* %64, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool8.i = icmp eq %struct.sv* %64, null
  br i1 %tobool8.i, label %check_handler.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then7.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv* %64, i64 0, i32 1
  %66 = load i32* %sv_refcnt.i, align 4, !tbaa !3
  %inc.i110 = add i32 %66, 1
  store i32 %inc.i110, i32* %sv_refcnt.i, align 4, !tbaa !3
  br label %check_handler.exit

if.end10.i:                                       ; preds = %if.then.i108
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([49 x i8]* @.str64, i64 0, i64 0)) #6
  %.pre.i111 = load i32* %sv_flags.i104, align 4, !tbaa !3
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end10.i, %if.then62
  %67 = phi i32 [ %62, %if.then62 ], [ %.pre.i111, %if.end10.i ]
  %and13.i = and i32 %67, 118423552
  %tobool14.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.i, label %check_handler.exit, label %cond.true.i112

cond.true.i112:                                   ; preds = %if.end11.i
  %call15.i = call %struct.sv* @Perl_newSVsv(%struct.sv* %61) #6
  br label %check_handler.exit

check_handler.exit:                               ; preds = %if.then3.i, %if.then7.i, %land.rhs.i, %if.end11.i, %cond.true.i112
  %retval.0.i = phi %struct.sv* [ %call.i109, %if.then3.i ], [ %call15.i, %cond.true.i112 ], [ null, %if.end11.i ], [ null, %if.then7.i ], [ %64, %land.rhs.i ]
  store %struct.sv* %retval.0.i, %struct.sv** %cb, align 8, !tbaa !0
  br label %if.end70

if.end70:                                         ; preds = %check_handler.exit, %if.end59
  store %struct.sv** %sp.0, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Entities_decode_entities(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add = add i32 %3, 1
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div499 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div499 to i32
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext6 = ashr exact i64 %sext, 32
  %call = tail call %struct.hv* @Perl_get_hv(i8* getelementptr inbounds ([28 x i8]* @.str22, i64 0, i64 0), i32 0) #6
  %4 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags = getelementptr inbounds %struct.op* %4, i64 0, i32 6
  %5 = load i8* %op_flags, align 1, !tbaa !1
  %conv8 = zext i8 %5 to i32
  %and = and i32 %conv8, 3
  switch i32 %and, label %cond.false23 [
    i32 1, label %if.end
    i32 2, label %land.lhs.true.critedge
    i32 3, label %if.end
  ]

cond.false23:                                     ; preds = %entry
  %call24 = tail call i32 @Perl_block_gimme() #6
  %phitmp = icmp eq i32 %call24, 0
  %cmp31 = icmp sgt i32 %conv5, 1
  %or.cond = and i1 %phitmp, %cmp31
  br i1 %or.cond, label %for.body.lr.ph, label %if.end

land.lhs.true.critedge:                           ; preds = %entry
  %cmp31.old = icmp sgt i32 %conv5, 1
  br i1 %cmp31.old, label %for.body.lr.ph, label %if.end

if.end:                                           ; preds = %entry, %entry, %land.lhs.true.critedge, %cond.false23
  %cmp33112 = icmp sgt i32 %conv5, 0
  br i1 %cmp33112, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.false23, %land.lhs.true.critedge, %if.end
  %items.0119 = phi i32 [ %conv5, %if.end ], [ 1, %land.lhs.true.critedge ], [ 1, %cond.false23 ]
  %6 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %if.end78, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end78 ]
  %7 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags35 = getelementptr inbounds %struct.op* %7, i64 0, i32 6
  %8 = load i8* %op_flags35, align 1, !tbaa !1
  %conv36 = zext i8 %8 to i32
  %and37 = and i32 %conv36, 3
  %cmp38 = icmp eq i32 %and37, 1
  br i1 %cmp38, label %cond.end61.thread107, label %cond.false41

cond.end61.thread107:                             ; preds = %for.body
  %9 = add nsw i64 %indvars.iv, %6
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds %struct.sv** %10, i64 %9
  %11 = load %struct.sv** %arrayidx110, align 8, !tbaa !0
  br label %if.else

cond.false41:                                     ; preds = %for.body
  %and37.off = add i32 %and37, -2
  %switch = icmp ult i32 %and37.off, 2
  br i1 %switch, label %cond.end61.thread, label %cond.end61

cond.end61.thread:                                ; preds = %cond.false41
  %12 = add nsw i64 %indvars.iv, %6
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds %struct.sv** %13, i64 %12
  %14 = load %struct.sv** %arrayidx104, align 8, !tbaa !0
  br label %if.then65

cond.end61:                                       ; preds = %cond.false41
  %call56 = tail call i32 @Perl_block_gimme() #6
  %phitmp100 = icmp eq i32 %call56, 128
  %15 = add nsw i64 %indvars.iv, %6
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %16, i64 %15
  %17 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br i1 %phitmp100, label %if.else, label %if.then65

if.then65:                                        ; preds = %cond.end61, %cond.end61.thread
  %18 = phi %struct.sv* [ %14, %cond.end61.thread ], [ %17, %cond.end61 ]
  %idxprom105 = phi i64 [ %12, %cond.end61.thread ], [ %15, %cond.end61 ]
  %call67 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %18) #6
  %call68 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67) #6
  %19 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds %struct.sv** %19, i64 %idxprom105
  store %struct.sv* %call68, %struct.sv** %arrayidx71, align 8, !tbaa !0
  br label %if.end78

if.else:                                          ; preds = %cond.end61, %cond.end61.thread107
  %20 = phi %struct.sv* [ %11, %cond.end61.thread107 ], [ %17, %cond.end61 ]
  %idxprom111 = phi i64 [ %9, %cond.end61.thread107 ], [ %15, %cond.end61 ]
  %sv_flags = getelementptr inbounds %struct.sv* %20, i64 0, i32 2
  %21 = load i32* %sv_flags, align 4, !tbaa !3
  %and75 = and i32 %21, 8388608
  %tobool = icmp eq i32 %and75, 0
  br i1 %tobool, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.else
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str35, i64 0, i64 0)) #6
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then76, %if.then65
  %idxprom106 = phi i64 [ %idxprom111, %if.else ], [ %idxprom111, %if.then76 ], [ %idxprom105, %if.then65 ]
  %22 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.sv** %22, i64 %idxprom106
  %23 = load %struct.sv** %arrayidx81, align 8, !tbaa !0
  tail call fastcc void @decode_entities(%struct.sv* %23, %struct.hv* %call, i8 signext 0) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %items.0119
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end78, %if.end
  %items.0118 = phi i32 [ %conv5, %if.end ], [ %items.0119, %if.end78 ]
  %idx.ext83 = sext i32 %items.0118 to i64
  %add.ptr7.sum = sub i64 %idx.ext83, %idx.ext6
  %add.ptr84 = getelementptr inbounds %struct.sv** %0, i64 %add.ptr7.sum
  store %struct.sv** %add.ptr84, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @decode_entities(%struct.sv* %sv, %struct.hv* %entity2char, i8 signext %allow_unterminated) #0 {
entry:
  %len = alloca i64, align 8
  %repl_len = alloca i64, align 8
  %buf = alloca [13 x i8], align 1
  %before_gap_len = alloca i64, align 8
  %after_gap_len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #6
  %.pre = load i64* %len, align 8, !tbaa !4
  %sv_any.i.pre = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sv_any.i.pre-phi = phi i8** [ %sv_any.i.pre, %cond.false ], [ %sv_any, %cond.true ]
  %5 = phi i64 [ %.pre, %cond.false ], [ %3, %cond.true ]
  %cond = phi i8* [ %call, %cond.false ], [ %4, %cond.true ]
  %add.ptr = getelementptr inbounds i8* %cond, i64 %5
  %tobool148 = icmp eq %struct.hv* %entity2char, null
  %tobool174 = icmp eq i8 %allow_unterminated, 0
  %arrayidx = getelementptr inbounds [13 x i8]* %buf, i64 0, i64 0
  %sub.ptr.rhs.cast109 = ptrtoint [13 x i8]* %buf to i64
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.end281, %if.then283, %cond.end
  %add.ptr29.i58.ph = phi i8* [ %cond, %cond.end ], [ %add.ptr29.i59, %if.then283 ], [ %add.ptr29.i59, %while.end281 ]
  %add.ptr.i46.ph = phi i8* [ %cond, %cond.end ], [ %add.ptr.i50, %if.then283 ], [ %add.ptr.i50, %while.end281 ]
  %add.ptr30.i42.ph = phi i8* [ %add.ptr, %cond.end ], [ %add.ptr30.i43, %if.then283 ], [ %add.ptr30.i43, %while.end281 ]
  %high_surrogate.0.ph = phi i32 [ 0, %cond.end ], [ %high_surrogate.2., %if.then283 ], [ %high_surrogate.2., %while.end281 ]
  br label %while.cond.outer100

while.cond.outer100:                              ; preds = %while.cond286.preheader, %while.body289, %while.cond.outer
  %add.ptr29.i58.ph101 = phi i8* [ %add.ptr29.i58.ph, %while.cond.outer ], [ %add.ptr29.i5362.ph, %while.body289 ], [ %add.ptr29.i5362.ph, %while.cond286.preheader ]
  %add.ptr.i46.ph102 = phi i8* [ %add.ptr.i46.ph, %while.cond.outer ], [ %incdec.ptr291, %while.body289 ], [ %incdec.ptr3, %while.cond286.preheader ]
  %high_surrogate.0.ph103 = phi i32 [ %high_surrogate.0.ph, %while.cond.outer ], [ %high_surrogate.263.ph, %while.body289 ], [ %high_surrogate.263.ph, %while.cond286.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer100, %while.body
  %add.ptr29.i58 = phi i8* [ %incdec.ptr, %while.body ], [ %add.ptr29.i58.ph101, %while.cond.outer100 ]
  %add.ptr.i46 = phi i8* [ %incdec.ptr3, %while.body ], [ %add.ptr.i46.ph102, %while.cond.outer100 ]
  %cmp2 = icmp ult i8* %add.ptr29.i58, %add.ptr30.i42.ph
  br i1 %cmp2, label %while.body, label %while.end294

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %add.ptr29.i58, i64 1
  %6 = load i8* %add.ptr29.i58, align 1, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8* %add.ptr.i46, i64 1
  store i8 %6, i8* %add.ptr.i46, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %6, 38
  br i1 %cmp4, label %if.end, label %while.cond

if.end:                                           ; preds = %while.body
  %sub.ptr.rhs.cast152 = ptrtoint i8* %incdec.ptr to i64
  %7 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %7, 35
  br i1 %cmp7, label %if.then9, label %while.cond115

if.then9:                                         ; preds = %if.end
  %incdec.ptr10 = getelementptr inbounds i8* %add.ptr29.i58, i64 2
  %8 = load i8* %incdec.ptr10, align 1, !tbaa !1
  switch i8 %8, label %while.cond33.preheader [
    i8 120, label %while.cond19.preheader
    i8 88, label %while.cond19.preheader
  ]

while.cond33.preheader:                           ; preds = %if.then9
  %.off7791 = add i8 %8, -48
  %9 = icmp ult i8 %.off7791, 10
  br i1 %9, label %while.body40, label %while.cond286.preheader

while.cond19.preheader:                           ; preds = %if.then9, %if.then9
  %10 = load i8** @PL_hexdigit, align 8, !tbaa !0
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  br label %while.cond19

while.cond19:                                     ; preds = %while.cond19.preheader, %if.end25
  %add.ptr29.i57 = phi i8* [ %storemerge, %if.end25 ], [ %incdec.ptr10, %while.cond19.preheader ]
  %prev.0 = phi i64 [ %or, %if.end25 ], [ 0, %while.cond19.preheader ]
  %ok.0 = phi i32 [ 1, %if.end25 ], [ 0, %while.cond19.preheader ]
  %storemerge = getelementptr inbounds i8* %add.ptr29.i57, i64 1
  %11 = load i8* %storemerge, align 1, !tbaa !1
  %tobool = icmp eq i8 %11, 0
  br i1 %tobool, label %if.end51, label %while.body20

while.body20:                                     ; preds = %while.cond19
  %conv21 = sext i8 %11 to i32
  %call22 = call i8* @strchr(i8* %10, i32 %conv21) #6
  %tobool23 = icmp eq i8* %call22, null
  br i1 %tobool23, label %if.end51, label %if.end25

if.end25:                                         ; preds = %while.body20
  %shl = shl i64 %prev.0, 4
  %sub.ptr.lhs.cast = ptrtoint i8* %call22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and26 = and i64 %sub.ptr.sub, 15
  %or = or i64 %and26, %shl
  %tobool27 = icmp eq i64 %prev.0, 0
  %cmp28 = icmp ugt i64 %or, %prev.0
  %or.cond = or i1 %tobool27, %cmp28
  br i1 %or.cond, label %while.cond19, label %while.cond286.preheader

while.cond33:                                     ; preds = %while.body40
  %12 = load i8* %incdec.ptr49, align 1, !tbaa !1
  %.off77 = add i8 %12, -48
  %13 = icmp ult i8 %.off77, 10
  br i1 %13, label %while.body40, label %if.then53

while.body40:                                     ; preds = %while.cond33.preheader, %while.cond33
  %14 = phi i8 [ %12, %while.cond33 ], [ %8, %while.cond33.preheader ]
  %prev.193 = phi i64 [ %add, %while.cond33 ], [ 0, %while.cond33.preheader ]
  %add.ptr29.i5692 = phi i8* [ %incdec.ptr49, %while.cond33 ], [ %incdec.ptr10, %while.cond33.preheader ]
  %conv34 = sext i8 %14 to i64
  %mul = mul i64 %prev.193, 10
  %sub = add i64 %mul, -48
  %add = add i64 %sub, %conv34
  %tobool43 = icmp ne i64 %prev.193, 0
  %cmp45 = icmp ult i64 %add, %prev.193
  %or.cond4 = and i1 %tobool43, %cmp45
  %incdec.ptr49 = getelementptr inbounds i8* %add.ptr29.i5692, i64 1
  br i1 %or.cond4, label %while.cond286.preheader, label %while.cond33

if.end51:                                         ; preds = %while.body20, %while.cond19
  %tobool52 = icmp eq i32 %ok.0, 0
  br i1 %tobool52, label %while.cond286.preheader, label %if.then53

if.then53:                                        ; preds = %while.cond33, %if.end51
  %num.2133 = phi i64 [ %prev.0, %if.end51 ], [ %add, %while.cond33 ]
  %add.ptr29.i55132 = phi i8* [ %storemerge, %if.end51 ], [ %incdec.ptr49, %while.cond33 ]
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and55 = and i32 %15, 536870912
  %tobool56 = icmp eq i32 %and55, 0
  %cmp58 = icmp ult i64 %num.2133, 256
  %or.cond5 = and i1 %tobool56, %cmp58
  br i1 %or.cond5, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.then53
  %conv61 = trunc i64 %num.2133 to i8
  store i8 %conv61, i8* %arrayidx, align 1, !tbaa !1
  store i64 1, i64* %repl_len, align 8, !tbaa !4
  br label %if.then212

if.else62:                                        ; preds = %if.then53
  %and65 = and i64 %num.2133, 4294966272
  switch i64 %and65, label %if.else87 [
    i64 56320, label %if.then68
    i64 55296, label %if.then85
  ]

if.then68:                                        ; preds = %if.else62
  %cmp69 = icmp eq i32 %high_surrogate.0.ph103, 0
  br i1 %cmp69, label %if.end103, label %if.then71

if.then71:                                        ; preds = %if.then68
  %add.ptr72 = getelementptr inbounds i8* %add.ptr.i46, i64 -2
  %sub73 = shl i32 %high_surrogate.0.ph103, 10
  %shl74 = add i32 %sub73, -56623104
  %conv75 = sext i32 %shl74 to i64
  %add77 = add i64 %conv75, 9216
  %add78 = add i64 %add77, %num.2133
  br label %if.end103

if.then85:                                        ; preds = %if.else62
  %conv86 = trunc i64 %num.2133 to i32
  br label %if.end103

if.else87:                                        ; preds = %if.else62
  %num.2.off = add i64 %num.2133, -64976
  %16 = icmp ult i64 %num.2.off, 32
  br i1 %16, label %if.then100, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.else87
  %and94 = and i64 %num.2133, 65534
  %cmp95 = icmp eq i64 %and94, 65534
  %cmp98 = icmp ugt i64 %num.2133, 1114111
  %or.cond302 = or i1 %cmp95, %cmp98
  br i1 %or.cond302, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.else87, %lor.lhs.false93
  br label %if.end103

if.end103:                                        ; preds = %if.then68, %if.then85, %lor.lhs.false93, %if.then100, %if.then71
  %add.ptr.i49 = phi i8* [ %add.ptr72, %if.then71 ], [ %incdec.ptr3, %if.then85 ], [ %incdec.ptr3, %if.then100 ], [ %incdec.ptr3, %lor.lhs.false93 ], [ %incdec.ptr3, %if.then68 ]
  %num.3 = phi i64 [ %add78, %if.then71 ], [ 65533, %if.then85 ], [ 65533, %if.then100 ], [ %num.2133, %lor.lhs.false93 ], [ 65533, %if.then68 ]
  %high_surrogate.1 = phi i32 [ 0, %if.then71 ], [ %conv86, %if.then85 ], [ 0, %if.then100 ], [ 0, %lor.lhs.false93 ], [ 0, %if.then68 ]
  %call105 = call i8* @Perl_uvuni_to_utf8(i8* %arrayidx, i64 %num.3) #6
  %sub.ptr.lhs.cast108 = ptrtoint i8* %call105 to i64
  %sub.ptr.sub110 = sub i64 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  store i64 %sub.ptr.sub110, i64* %repl_len, align 8, !tbaa !4
  br label %if.then212

while.cond115:                                    ; preds = %if.end, %while.body142
  %17 = phi i8 [ %.pre128, %while.body142 ], [ %7, %if.end ]
  %add.ptr29.i54 = phi i8* [ %incdec.ptr143, %while.body142 ], [ %incdec.ptr, %if.end ]
  %.off = add i8 %17, -65
  %18 = icmp ult i8 %.off, 26
  %.off75 = add i8 %17, -97
  %19 = icmp ult i8 %.off75, 26
  %or.cond80 = or i1 %18, %19
  br i1 %or.cond80, label %while.body142, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %while.cond115
  %.off76 = add i8 %17, -48
  %20 = icmp ult i8 %.off76, 10
  %cmp140 = icmp eq i8 %17, 95
  %or.cond74 = or i1 %20, %cmp140
  br i1 %or.cond74, label %while.body142, label %while.end144

while.body142:                                    ; preds = %lor.lhs.false131, %while.cond115
  %incdec.ptr143 = getelementptr inbounds i8* %add.ptr29.i54, i64 1
  %.pre128 = load i8* %incdec.ptr143, align 1, !tbaa !1
  br label %while.cond115

while.end144:                                     ; preds = %lor.lhs.false131
  %cmp145 = icmp eq i8* %incdec.ptr, %add.ptr29.i54
  %or.cond9 = or i1 %cmp145, %tobool148
  br i1 %or.cond9, label %while.cond286.preheader, label %if.then149

if.then149:                                       ; preds = %while.end144
  %sub.ptr.lhs.cast151 = ptrtoint i8* %add.ptr29.i54 to i64
  %sub.ptr.sub153 = sub i64 %sub.ptr.lhs.cast151, %sub.ptr.rhs.cast152
  %conv154 = trunc i64 %sub.ptr.sub153 to i32
  %call155 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %entity2char, i8* %incdec.ptr, i32 %conv154, i32 0) #6
  %tobool156 = icmp eq %struct.sv** %call155, null
  br i1 %tobool156, label %if.else173, label %if.then157

if.then157:                                       ; preds = %if.then149
  %21 = load %struct.sv** %call155, align 8, !tbaa !0
  %sv_flags158 = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags158, align 4, !tbaa !3
  %and159 = and i32 %22, 262144
  %cmp160 = icmp eq i32 %and159, 0
  br i1 %cmp160, label %cond.false167, label %cond.true162

cond.true162:                                     ; preds = %if.then157
  %sv_any163 = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %23 = load i8** %sv_any163, align 8, !tbaa !0
  %xpv_cur164 = getelementptr inbounds i8* %23, i64 8
  %24 = bitcast i8* %xpv_cur164 to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  store i64 %25, i64* %repl_len, align 8, !tbaa !4
  %xpv_pv166 = bitcast i8* %23 to i8**
  %26 = load i8** %xpv_pv166, align 8, !tbaa !0
  br label %if.end210

cond.false167:                                    ; preds = %if.then157
  %call168 = call i8* @Perl_sv_2pv_flags(%struct.sv* %21, i64* %repl_len, i32 2) #6
  br label %if.end210

if.else173:                                       ; preds = %if.then149
  br i1 %tobool174, label %while.cond286.preheader, label %while.cond178

while.cond178:                                    ; preds = %if.else173, %while.body181
  %.pn = phi i8* [ %ss.0, %while.body181 ], [ %add.ptr29.i54, %if.else173 ]
  %ss.0 = getelementptr inbounds i8* %.pn, i64 -1
  %cmp179 = icmp ugt i8* %ss.0, %incdec.ptr
  br i1 %cmp179, label %while.body181, label %while.cond286.preheader

while.body181:                                    ; preds = %while.cond178
  %sub.ptr.lhs.cast182 = ptrtoint i8* %ss.0 to i64
  %sub.ptr.sub184 = sub i64 %sub.ptr.lhs.cast182, %sub.ptr.rhs.cast152
  %conv185 = trunc i64 %sub.ptr.sub184 to i32
  %call186 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %entity2char, i8* %incdec.ptr, i32 %conv185, i32 0) #6
  %tobool187 = icmp eq %struct.sv** %call186, null
  br i1 %tobool187, label %while.cond178, label %if.then188

if.then188:                                       ; preds = %while.body181
  %27 = load %struct.sv** %call186, align 8, !tbaa !0
  %sv_flags189 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %28 = load i32* %sv_flags189, align 4, !tbaa !3
  %and190 = and i32 %28, 262144
  %cmp191 = icmp eq i32 %and190, 0
  br i1 %cmp191, label %cond.false198, label %cond.true193

cond.true193:                                     ; preds = %if.then188
  %sv_any194 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %29 = load i8** %sv_any194, align 8, !tbaa !0
  %xpv_cur195 = getelementptr inbounds i8* %29, i64 8
  %30 = bitcast i8* %xpv_cur195 to i64*
  %31 = load i64* %30, align 8, !tbaa !4
  store i64 %31, i64* %repl_len, align 8, !tbaa !4
  %xpv_pv197 = bitcast i8* %29 to i8**
  %32 = load i8** %xpv_pv197, align 8, !tbaa !0
  br label %if.end210

cond.false198:                                    ; preds = %if.then188
  %call199 = call i8* @Perl_sv_2pv_flags(%struct.sv* %27, i64* %repl_len, i32 2) #6
  br label %if.end210

if.end210:                                        ; preds = %cond.true193, %cond.false198, %cond.true162, %cond.false167
  %.pn78.in = phi %struct.sv** [ %call155, %cond.false167 ], [ %call155, %cond.true162 ], [ %call186, %cond.false198 ], [ %call186, %cond.true193 ]
  %add.ptr29.i53 = phi i8* [ %add.ptr29.i54, %cond.false167 ], [ %add.ptr29.i54, %cond.true162 ], [ %ss.0, %cond.false198 ], [ %ss.0, %cond.true193 ]
  %repl.1 = phi i8* [ %call168, %cond.false167 ], [ %26, %cond.true162 ], [ %call199, %cond.false198 ], [ %32, %cond.true193 ]
  %tobool211 = icmp eq i8* %repl.1, null
  br i1 %tobool211, label %while.cond286.preheader, label %if.then212.loopexit

if.then212.loopexit:                              ; preds = %if.end210
  %.pn78 = load %struct.sv** %.pn78.in, align 8
  %.sink.in = getelementptr inbounds %struct.sv* %.pn78, i64 0, i32 2
  %.sink = load i32* %.sink.in, align 4
  %and172 = and i32 %.sink, 536870912
  %phitmp = icmp eq i32 %and172, 0
  br label %if.then212

if.then212:                                       ; preds = %if.then212.loopexit, %if.then60, %if.end103
  %repl.173 = phi i8* [ %arrayidx, %if.end103 ], [ %arrayidx, %if.then60 ], [ %repl.1, %if.then212.loopexit ]
  %repl_utf8.272 = phi i1 [ false, %if.end103 ], [ true, %if.then60 ], [ %phitmp, %if.then212.loopexit ]
  %high_surrogate.271 = phi i32 [ %high_surrogate.1, %if.end103 ], [ %high_surrogate.0.ph103, %if.then60 ], [ 0, %if.then212.loopexit ]
  %add.ptr.i4870 = phi i8* [ %add.ptr.i49, %if.end103 ], [ %incdec.ptr3, %if.then60 ], [ %incdec.ptr3, %if.then212.loopexit ]
  %add.ptr29.i5369 = phi i8* [ %add.ptr29.i55132, %if.end103 ], [ %add.ptr29.i55132, %if.then60 ], [ %add.ptr29.i53, %if.then212.loopexit ]
  %33 = load i8* %add.ptr29.i5369, align 1, !tbaa !1
  %cmp215 = icmp eq i8 %33, 59
  %incdec.ptr218 = getelementptr inbounds i8* %add.ptr29.i5369, i64 1
  %incdec.ptr218.add.ptr29.i5369 = select i1 %cmp215, i8* %incdec.ptr218, i8* %add.ptr29.i5369
  %incdec.ptr220 = getelementptr inbounds i8* %add.ptr.i4870, i64 -1
  %34 = load i8* %incdec.ptr218.add.ptr29.i5369, align 1, !tbaa !1
  %cmp222 = icmp eq i8 %34, 38
  %high_surrogate.2. = select i1 %cmp222, i32 %high_surrogate.271, i32 0
  %35 = load i32* %sv_flags, align 4, !tbaa !3
  %and227 = and i32 %35, 536870912
  %tobool228 = icmp ne i32 %and227, 0
  %or.cond10 = or i1 %tobool228, %repl_utf8.272
  br i1 %or.cond10, label %if.else257, label %if.then231

if.then231:                                       ; preds = %if.then212
  %36 = load i8** %sv_any.i.pre-phi, align 8, !tbaa !0
  %xpv_pv234 = bitcast i8* %36 to i8**
  %37 = load i8** %xpv_pv234, align 8, !tbaa !0
  %sub.ptr.lhs.cast235 = ptrtoint i8* %incdec.ptr220 to i64
  %sub.ptr.rhs.cast236 = ptrtoint i8* %37 to i64
  %sub.ptr.sub237 = sub i64 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236
  store i64 %sub.ptr.sub237, i64* %before_gap_len, align 8, !tbaa !4
  %call241 = call i8* @Perl_bytes_to_utf8(i8* %37, i64* %before_gap_len) #6
  %sub.ptr.lhs.cast243 = ptrtoint i8* %add.ptr30.i42.ph to i64
  %sub.ptr.rhs.cast244 = ptrtoint i8* %incdec.ptr218.add.ptr29.i5369 to i64
  %sub.ptr.sub245 = sub i64 %sub.ptr.lhs.cast243, %sub.ptr.rhs.cast244
  store i64 %sub.ptr.sub245, i64* %after_gap_len, align 8, !tbaa !4
  %call247 = call i8* @Perl_bytes_to_utf8(i8* %incdec.ptr218.add.ptr29.i5369, i64* %after_gap_len) #6
  %38 = load i64* %before_gap_len, align 8, !tbaa !4
  call void @Perl_sv_setpvn(%struct.sv* %sv, i8* %call241, i64 %38) #6
  %39 = load i64* %after_gap_len, align 8, !tbaa !4
  call void @Perl_sv_catpvn_flags(%struct.sv* %sv, i8* %call247, i64 %39, i32 2) #6
  %40 = load i32* %sv_flags, align 4, !tbaa !3
  %or249 = or i32 %40, 536870912
  store i32 %or249, i32* %sv_flags, align 4, !tbaa !3
  call void @Perl_safesysfree(i8* %call241) #6
  call void @Perl_safesysfree(i8* %call247) #6
  %41 = load i8** %sv_any.i.pre-phi, align 8, !tbaa !0
  %xpv_pv251 = bitcast i8* %41 to i8**
  %42 = load i8** %xpv_pv251, align 8, !tbaa !0
  %43 = load i64* %before_gap_len, align 8, !tbaa !4
  %add.ptr252 = getelementptr inbounds i8* %42, i64 %43
  %44 = load i64* %after_gap_len, align 8, !tbaa !4
  %add.ptr255.sum = add i64 %44, %43
  %add.ptr256 = getelementptr inbounds i8* %42, i64 %add.ptr255.sum
  br label %if.end266

if.else257:                                       ; preds = %if.then212
  %or.cond11 = and i1 %tobool228, %repl_utf8.272
  br i1 %or.cond11, label %if.then263, label %if.end266

if.then263:                                       ; preds = %if.else257
  %call264 = call i8* @Perl_bytes_to_utf8(i8* %repl.173, i64* %repl_len) #6
  br label %if.end266

if.end266:                                        ; preds = %if.else257, %if.then263, %if.then231
  %add.ptr29.i51 = phi i8* [ %incdec.ptr218.add.ptr29.i5369, %if.then263 ], [ %add.ptr252, %if.then231 ], [ %incdec.ptr218.add.ptr29.i5369, %if.else257 ]
  %add.ptr.i45 = phi i8* [ %incdec.ptr220, %if.then263 ], [ %add.ptr252, %if.then231 ], [ %incdec.ptr220, %if.else257 ]
  %add.ptr30.i44 = phi i8* [ %add.ptr30.i42.ph, %if.then263 ], [ %add.ptr256, %if.then231 ], [ %add.ptr30.i42.ph, %if.else257 ]
  %repl_allocated.0 = phi i8* [ %call264, %if.then263 ], [ null, %if.then231 ], [ null, %if.else257 ]
  %repl.2 = phi i8* [ %call264, %if.then263 ], [ %repl.173, %if.then231 ], [ %repl.173, %if.else257 ]
  %45 = load i64* %repl_len, align 8, !tbaa !4
  %add.ptr267 = getelementptr inbounds i8* %add.ptr.i45, i64 %45
  %cmp268 = icmp ugt i8* %add.ptr267, %add.ptr29.i51
  br i1 %cmp268, label %if.then270, label %while.cond276

if.then270:                                       ; preds = %if.end266
  %sub.ptr.lhs.cast271 = ptrtoint i8* %add.ptr29.i51 to i64
  %sub.ptr.rhs.cast272 = ptrtoint i8* %add.ptr.i45 to i64
  %sub.ptr.sub2731 = sub i64 %sub.ptr.rhs.cast272, %sub.ptr.lhs.cast271
  %sub274 = add i64 %45, %sub.ptr.sub2731
  %46 = load i8** %sv_any.i.pre-phi, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %46 to i8**
  %47 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %sub.ptr.rhs.cast.i = ptrtoint i8* %47 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.rhs.cast272, %sub.ptr.rhs.cast.i
  %sub.ptr.sub5.i = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast.i
  %sub.ptr.lhs.cast8.i = ptrtoint i8* %add.ptr30.i44 to i64
  %sub.ptr.sub10.i = sub i64 %sub.ptr.lhs.cast8.i, %sub.ptr.rhs.cast.i
  %xpv_len.i = getelementptr inbounds i8* %46, i64 16
  %48 = bitcast i8* %xpv_len.i to i64*
  %49 = load i64* %48, align 8, !tbaa !4
  %add.i = add i64 %sub274, 1
  %add12.i = add i64 %add.i, %sub.ptr.sub10.i
  %cmp.i = icmp ult i64 %49, %add12.i
  br i1 %cmp.i, label %cond.true.i, label %grow_gap.exit

cond.true.i:                                      ; preds = %if.then270
  %call.i = call i8* @Perl_sv_grow(%struct.sv* %sv, i64 %add12.i) #6
  %.pre.i = load i8** %sv_any.i.pre-phi, align 8, !tbaa !0
  %xpv_pv18.phi.trans.insert.i = bitcast i8* %.pre.i to i8**
  %.pre53.i = load i8** %xpv_pv18.phi.trans.insert.i, align 8, !tbaa !0
  br label %grow_gap.exit

grow_gap.exit:                                    ; preds = %if.then270, %cond.true.i
  %50 = phi i8* [ %47, %if.then270 ], [ %.pre53.i, %cond.true.i ]
  %add.ptr.i = getelementptr inbounds i8* %50, i64 %sub.ptr.sub.i
  %add.ptr21.i = getelementptr inbounds i8* %50, i64 %sub.ptr.sub5.i
  %add.ptr21.i.sum = add i64 %sub.ptr.sub5.i, %sub274
  %add.ptr25.i = getelementptr inbounds i8* %50, i64 %add.ptr21.i.sum
  %51 = sub i64 %sub.ptr.sub10.i, %sub.ptr.sub5.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr25.i, i8* %add.ptr21.i, i64 %51, i32 1, i1 false) #2
  %add.ptr24.i.sum = add i64 %sub.ptr.sub10.i, %sub274
  %add.ptr30.i = getelementptr inbounds i8* %50, i64 %add.ptr24.i.sum
  br label %while.cond276thread-pre-split

while.cond276thread-pre-split:                    ; preds = %while.body278, %grow_gap.exit
  %add.ptr29.i59.ph = phi i8* [ %add.ptr25.i, %grow_gap.exit ], [ %add.ptr29.i59, %while.body278 ]
  %add.ptr.i50.ph = phi i8* [ %add.ptr.i, %grow_gap.exit ], [ %incdec.ptr280, %while.body278 ]
  %add.ptr30.i43.ph = phi i8* [ %add.ptr30.i, %grow_gap.exit ], [ %add.ptr30.i43, %while.body278 ]
  %repl.3.ph = phi i8* [ %repl.2, %grow_gap.exit ], [ %incdec.ptr279, %while.body278 ]
  %.pr = load i64* %repl_len, align 8, !tbaa !4
  br label %while.cond276

while.cond276:                                    ; preds = %while.cond276thread-pre-split, %if.end266
  %52 = phi i64 [ %.pr, %while.cond276thread-pre-split ], [ %45, %if.end266 ]
  %add.ptr29.i59 = phi i8* [ %add.ptr29.i59.ph, %while.cond276thread-pre-split ], [ %add.ptr29.i51, %if.end266 ]
  %add.ptr.i50 = phi i8* [ %add.ptr.i50.ph, %while.cond276thread-pre-split ], [ %add.ptr.i45, %if.end266 ]
  %add.ptr30.i43 = phi i8* [ %add.ptr30.i43.ph, %while.cond276thread-pre-split ], [ %add.ptr30.i44, %if.end266 ]
  %repl.3 = phi i8* [ %repl.3.ph, %while.cond276thread-pre-split ], [ %repl.2, %if.end266 ]
  %dec = add i64 %52, -1
  store i64 %dec, i64* %repl_len, align 8, !tbaa !4
  %tobool277 = icmp eq i64 %52, 0
  br i1 %tobool277, label %while.end281, label %while.body278

while.body278:                                    ; preds = %while.cond276
  %incdec.ptr279 = getelementptr inbounds i8* %repl.3, i64 1
  %53 = load i8* %repl.3, align 1, !tbaa !1
  %incdec.ptr280 = getelementptr inbounds i8* %add.ptr.i50, i64 1
  store i8 %53, i8* %add.ptr.i50, align 1, !tbaa !1
  br label %while.cond276thread-pre-split

while.end281:                                     ; preds = %while.cond276
  %tobool282 = icmp eq i8* %repl_allocated.0, null
  br i1 %tobool282, label %while.cond.outer, label %if.then283

if.then283:                                       ; preds = %while.end281
  call void @Perl_safesysfree(i8* %repl_allocated.0) #6
  br label %while.cond.outer

while.cond286.preheader:                          ; preds = %while.cond33.preheader, %while.body40, %if.end25, %while.cond178, %if.end210, %if.end51, %if.else173, %while.end144
  %high_surrogate.263.ph = phi i32 [ 0, %while.end144 ], [ 0, %if.else173 ], [ %high_surrogate.0.ph103, %if.end51 ], [ 0, %if.end210 ], [ 0, %while.cond178 ], [ %high_surrogate.0.ph103, %if.end25 ], [ %high_surrogate.0.ph103, %while.body40 ], [ %high_surrogate.0.ph103, %while.cond33.preheader ]
  %add.ptr29.i5362.ph = phi i8* [ %add.ptr29.i54, %while.end144 ], [ %add.ptr29.i54, %if.else173 ], [ %storemerge, %if.end51 ], [ %add.ptr29.i53, %if.end210 ], [ %add.ptr29.i54, %while.cond178 ], [ %storemerge, %if.end25 ], [ %add.ptr29.i5692, %while.body40 ], [ %incdec.ptr10, %while.cond33.preheader ]
  %cmp28796 = icmp ult i8* %incdec.ptr, %add.ptr29.i5362.ph
  br i1 %cmp28796, label %while.body289, label %while.cond.outer100

while.body289:                                    ; preds = %while.body289, %while.cond286.preheader
  %ent_start.098 = phi i8* [ %incdec.ptr, %while.cond286.preheader ], [ %incdec.ptr290, %while.body289 ]
  %add.ptr.i4797 = phi i8* [ %incdec.ptr3, %while.cond286.preheader ], [ %incdec.ptr291, %while.body289 ]
  %incdec.ptr290 = getelementptr inbounds i8* %ent_start.098, i64 1
  %54 = load i8* %ent_start.098, align 1, !tbaa !1
  %incdec.ptr291 = getelementptr inbounds i8* %add.ptr.i4797, i64 1
  store i8 %54, i8* %add.ptr.i4797, align 1, !tbaa !1
  %exitcond = icmp eq i8* %incdec.ptr290, %add.ptr29.i5362.ph
  br i1 %exitcond, label %while.cond.outer100, label %while.body289

while.end294:                                     ; preds = %while.cond
  store i8 0, i8* %add.ptr.i46, align 1, !tbaa !1
  %55 = load i8** %sv_any.i.pre-phi, align 8, !tbaa !0
  %xpv_pv296 = bitcast i8* %55 to i8**
  %56 = load i8** %xpv_pv296, align 8, !tbaa !0
  %sub.ptr.lhs.cast297 = ptrtoint i8* %add.ptr.i46 to i64
  %sub.ptr.rhs.cast298 = ptrtoint i8* %56 to i64
  %sub.ptr.sub299 = sub i64 %sub.ptr.lhs.cast297, %sub.ptr.rhs.cast298
  %xpv_cur301 = getelementptr inbounds i8* %55, i64 8
  %57 = bitcast i8* %xpv_cur301 to i64*
  store i64 %sub.ptr.sub299, i64* %57, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Entities__decode_entities(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4120 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4120 to i32
  %cmp = icmp slt i32 %conv5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([63 x i8]* @.str36, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.sv** [ %.pre, %if.then ], [ %1, %entry ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %4, i64 %idxprom
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sext121 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext121, 32
  %arrayidx10 = getelementptr inbounds %struct.sv** %4, i64 %idxprom9
  %6 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %cmp11 = icmp sgt i32 %conv5, 2
  br i1 %cmp11, label %cond.true, label %cond.end76

cond.true:                                        ; preds = %if.end
  %sext122 = add i64 %add.ptr.idx, 12884901888
  %idxprom14 = ashr exact i64 %sext122, 32
  %arrayidx15 = getelementptr inbounds %struct.sv** %4, i64 %idxprom14
  %7 = load %struct.sv** %arrayidx15, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %7, null
  br i1 %tobool, label %cond.end76, label %cond.false

cond.false:                                       ; preds = %cond.true
  %sv_flags = getelementptr inbounds %struct.sv* %7, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 262144
  %tobool20 = icmp eq i32 %and, 0
  br i1 %tobool20, label %cond.false35, label %cond.true21

cond.true21:                                      ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %10 = bitcast i8* %9 to %struct.xpv*
  store %struct.xpv* %10, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool25 = icmp eq i8* %9, null
  br i1 %tobool25, label %land.end34, label %land.rhs

land.rhs:                                         ; preds = %cond.true21
  %xpv_cur = getelementptr inbounds i8* %9, i64 8
  %11 = bitcast i8* %xpv_cur to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %cmp26 = icmp ugt i64 %12, 1
  br i1 %cmp26, label %land.end34, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool29 = icmp eq i64 %12, 0
  br i1 %tobool29, label %land.end34, label %land.rhs30

land.rhs30:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %9 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !0
  %14 = load i8* %13, align 1, !tbaa !1
  %cmp32 = icmp ne i8 %14, 48
  br label %land.end34

land.end34:                                       ; preds = %lor.rhs, %cond.true21, %land.rhs, %land.rhs30
  %15 = phi i1 [ false, %cond.true21 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp32, %land.rhs30 ]
  %cond = zext i1 %15 to i8
  br label %cond.end76

cond.false35:                                     ; preds = %cond.false
  %and40 = and i32 %8, 65536
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %cond.false49, label %cond.true42

cond.true42:                                      ; preds = %cond.false35
  %sv_any46 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %16 = load i8** %sv_any46, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %16, i64 24
  %17 = bitcast i8* %xiv_iv to i64*
  %18 = load i64* %17, align 8, !tbaa !4
  %cmp47 = icmp ne i64 %18, 0
  %conv48 = zext i1 %cmp47 to i8
  br label %cond.end76

cond.false49:                                     ; preds = %cond.false35
  %and54 = and i32 %8, 131072
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %cond.false63, label %cond.true56

cond.true56:                                      ; preds = %cond.false49
  %sv_any60 = getelementptr inbounds %struct.sv* %7, i64 0, i32 0
  %19 = load i8** %sv_any60, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %19, i64 32
  %20 = bitcast i8* %xnv_nv to double*
  %21 = load double* %20, align 8, !tbaa !5
  %cmp61 = fcmp une double %21, 0.000000e+00
  %conv62 = zext i1 %cmp61 to i8
  br label %cond.end76

cond.false63:                                     ; preds = %cond.false49
  %call = tail call signext i8 @Perl_sv_2bool(%struct.sv* %7) #6
  br label %cond.end76

cond.end76:                                       ; preds = %cond.true, %if.end, %cond.true42, %cond.false63, %cond.true56, %land.end34
  %cond77 = phi i8 [ 0, %cond.true ], [ %cond, %land.end34 ], [ %conv48, %cond.true42 ], [ %conv62, %cond.true56 ], [ %call, %cond.false63 ], [ 0, %if.end ]
  %sv_flags79 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %22 = load i32* %sv_flags79, align 4, !tbaa !3
  %and80 = and i32 %22, 118423552
  %tobool81 = icmp eq i32 %and80, 0
  br i1 %tobool81, label %if.end96, label %if.then82

if.then82:                                        ; preds = %cond.end76
  %and84 = and i32 %22, 524288
  %tobool85 = icmp eq i32 %and84, 0
  br i1 %tobool85, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then82
  %sv_any86 = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %23 = load i8** %sv_any86, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %23 to %struct.sv**
  %24 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags87 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags87, align 4, !tbaa !3
  %and88 = and i32 %25, 255
  %cmp89 = icmp eq i32 %and88, 11
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %land.lhs.true
  %26 = bitcast %struct.sv* %24 to %struct.hv*
  br label %if.end96

if.else:                                          ; preds = %if.then82, %land.lhs.true
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str37, i64 0, i64 0)) #6
  br label %if.end96

if.end96:                                         ; preds = %cond.end76, %if.then91, %if.else
  %entities_hv.0 = phi %struct.hv* [ %26, %if.then91 ], [ undef, %if.else ], [ null, %cond.end76 ]
  %sv_flags97 = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %27 = load i32* %sv_flags97, align 4, !tbaa !3
  %and98 = and i32 %27, 8388608
  %tobool99 = icmp eq i32 %and98, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end96
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str35, i64 0, i64 0)) #6
  br label %if.end101

if.end101:                                        ; preds = %if.end96, %if.then100
  tail call fastcc void @decode_entities(%struct.sv* %5, %struct.hv* %entities_hv.0, i8 signext %cond77) #5
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr104.sum = add i64 %idxprom, -1
  %add.ptr105 = getelementptr inbounds %struct.sv** %28, i64 %add.ptr104.sum
  store %struct.sv** %add.ptr105, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Entities__probably_utf8_chunk(%struct.cv* nocapture %cv) #0 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str38, i64 0, i64 0)) #6
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %6, i8 signext 0) #6
  %sv_flags = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 262144
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %8, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  store i64 %10, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %8 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call11 = call i8* @Perl_sv_2pv_flags(%struct.sv* %6, i64* %len, i32 2) #6
  %.pre34 = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %12 = phi i64 [ %10, %cond.true ], [ %.pre34, %cond.false ]
  %cond = phi i8* [ %11, %cond.true ], [ %call11, %cond.false ]
  %call12 = call fastcc signext i8 @probably_utf8_chunk(i8* %cond, i64 %12) #5
  %tobool = icmp ne i8 %call12, 0
  %cond14 = select i1 %tobool, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv* %cond14, %struct.sv** %arrayidx17, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  %15 = load %struct.sv** %arrayidx20, align 8, !tbaa !0
  %call21 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %15) #6
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr23 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv** %add.ptr23, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc signext i8 @probably_utf8_chunk(i8* %s, i64 %len) #0 {
entry:
  %add.ptr = getelementptr inbounds i8* %s, i64 %len
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %e.0 = phi i8* [ %add.ptr, %entry ], [ %add.ptr1, %land.rhs ]
  %cmp = icmp ugt i8* %e.0, %s
  br i1 %cmp, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %while.cond
  %add.ptr1 = getelementptr inbounds i8* %e.0, i64 -1
  %0 = load i8* %add.ptr1, align 1, !tbaa !1
  %cmp2 = icmp slt i8 %0, 0
  %cmp7 = icmp ult i8 %0, -64
  %or.cond = and i1 %cmp2, %cmp7
  br i1 %or.cond, label %while.cond, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %.off = add i8 %0, 64
  %1 = icmp ult i8 %.off, 62
  %incdec.ptr21.e.0 = select i1 %1, i8* %add.ptr1, i8* %e.0
  br label %if.end

if.end:                                           ; preds = %while.cond, %land.lhs.true
  %e.1 = phi i8* [ %incdec.ptr21.e.0, %land.lhs.true ], [ %e.0, %while.cond ]
  %sub.ptr.lhs.cast = ptrtoint i8* %e.1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub58, %len
  %tobool = icmp eq i64 %sub, 0
  br i1 %tobool, label %if.end28, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end
  %2 = load i8* %e.1, align 1, !tbaa !1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8]* @PL_utf8skip, i64 0, i64 %idxprom
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %conv23 = zext i8 %3 to i64
  %cmp24 = icmp eq i64 %conv23, %sub
  %add.ptr.e.1 = select i1 %cmp24, i8* %add.ptr, i8* %e.1
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true22, %if.end
  %e.2 = phi i8* [ %e.1, %if.end ], [ %add.ptr.e.1, %land.lhs.true22 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end28
  %s.addr.0.i = phi i8* [ %s, %if.end28 ], [ %incdec.ptr.i, %while.body.i ]
  %cmp.i = icmp ult i8* %s.addr.0.i, %e.2
  br i1 %cmp.i, label %while.body.i, label %return

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %s.addr.0.i, i64 1
  %4 = load i8* %s.addr.0.i, align 1, !tbaa !1
  %cmp1.i = icmp sgt i8 %4, -1
  br i1 %cmp1.i, label %while.cond.i, label %if.end31

if.end31:                                         ; preds = %while.body.i
  %sub.ptr.lhs.cast32 = ptrtoint i8* %e.2 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast
  %call35 = tail call signext i8 @Perl_is_utf8_string(i8* %s, i64 %sub.ptr.sub34) #6
  br label %return

return:                                           ; preds = %while.cond.i, %if.end31
  %retval.0 = phi i8 [ %call35, %if.end31 ], [ 0, %while.cond.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @XS_HTML__Entities_UNICODE_SUPPORT(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str39, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext8 = ashr exact i64 %sext, 32
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 1) #6
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %11 = load i32* %sv_flags, align 4, !tbaa !3
  %and12 = and i32 %11, 16384
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %cond.end
  %call15 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #6
  br label %if.end16

if.end16:                                         ; preds = %cond.end, %if.then14
  %incdec.ptr17 = getelementptr inbounds %struct.sv** %10, i64 %idx.ext8
  store %struct.sv* %cond, %struct.sv** %incdec.ptr17, align 8, !tbaa !0
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr19 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext8
  store %struct.sv** %add.ptr19, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #1

; Function Attrs: nounwind optsize uwtable
define void @boot_HTML__Parser(%struct.cv* nocapture %cv) #0 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext104 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext104, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser__alloc_pstate, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str42, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_parse, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([18 x i8]* @.str43, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_eof, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8]* @.str44, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any = getelementptr inbounds %struct.cv* %call9, i64 0, i32 0
  %2 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %2, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  store i32 9, i32* %any_i32, align 4, !tbaa !3
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str45, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any11 = getelementptr inbounds %struct.cv* %call10, i64 0, i32 0
  %3 = load %struct.xpvcv** %sv_any11, align 8, !tbaa !0
  %xcv_xsubany12 = getelementptr inbounds %struct.xpvcv* %3, i64 0, i32 11
  %any_i3213 = bitcast %union.any* %xcv_xsubany12 to i32*
  store i32 8, i32* %any_i3213, align 4, !tbaa !3
  %call14 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([30 x i8]* @.str46, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any15 = getelementptr inbounds %struct.cv* %call14, i64 0, i32 0
  %4 = load %struct.xpvcv** %sv_any15, align 8, !tbaa !0
  %xcv_xsubany16 = getelementptr inbounds %struct.xpvcv* %4, i64 0, i32 11
  %any_i3217 = bitcast %union.any* %xcv_xsubany16 to i32*
  store i32 5, i32* %any_i3217, align 4, !tbaa !3
  %call18 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any19 = getelementptr inbounds %struct.cv* %call18, i64 0, i32 0
  %5 = load %struct.xpvcv** %sv_any19, align 8, !tbaa !0
  %xcv_xsubany20 = getelementptr inbounds %struct.xpvcv* %5, i64 0, i32 11
  %any_i3221 = bitcast %union.any* %xcv_xsubany20 to i32*
  store i32 7, i32* %any_i3221, align 4, !tbaa !3
  %call22 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([28 x i8]* @.str48, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any23 = getelementptr inbounds %struct.cv* %call22, i64 0, i32 0
  %6 = load %struct.xpvcv** %sv_any23, align 8, !tbaa !0
  %xcv_xsubany24 = getelementptr inbounds %struct.xpvcv* %6, i64 0, i32 11
  %any_i3225 = bitcast %union.any* %xcv_xsubany24 to i32*
  store i32 4, i32* %any_i3225, align 4, !tbaa !3
  %call26 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([29 x i8]* @.str49, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any27 = getelementptr inbounds %struct.cv* %call26, i64 0, i32 0
  %7 = load %struct.xpvcv** %sv_any27, align 8, !tbaa !0
  %xcv_xsubany28 = getelementptr inbounds %struct.xpvcv* %7, i64 0, i32 11
  %any_i3229 = bitcast %union.any* %xcv_xsubany28 to i32*
  store i32 1, i32* %any_i3229, align 4, !tbaa !3
  %call30 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str50, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any31 = getelementptr inbounds %struct.cv* %call30, i64 0, i32 0
  %8 = load %struct.xpvcv** %sv_any31, align 8, !tbaa !0
  %xcv_xsubany32 = getelementptr inbounds %struct.xpvcv* %8, i64 0, i32 11
  %any_i3233 = bitcast %union.any* %xcv_xsubany32 to i32*
  store i32 3, i32* %any_i3233, align 4, !tbaa !3
  %call34 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8]* @.str51, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any35 = getelementptr inbounds %struct.cv* %call34, i64 0, i32 0
  %9 = load %struct.xpvcv** %sv_any35, align 8, !tbaa !0
  %xcv_xsubany36 = getelementptr inbounds %struct.xpvcv* %9, i64 0, i32 11
  %any_i3237 = bitcast %union.any* %xcv_xsubany36 to i32*
  store i32 6, i32* %any_i3237, align 4, !tbaa !3
  %call38 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([27 x i8]* @.str52, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any39 = getelementptr inbounds %struct.cv* %call38, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any39, align 8, !tbaa !0
  %xcv_xsubany40 = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 11
  %any_i3241 = bitcast %union.any* %xcv_xsubany40 to i32*
  store i32 2, i32* %any_i3241, align 4, !tbaa !3
  %call42 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str53, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_strict_comment, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any43 = getelementptr inbounds %struct.cv* %call42, i64 0, i32 0
  %11 = load %struct.xpvcv** %sv_any43, align 8, !tbaa !0
  %xcv_xsubany44 = getelementptr inbounds %struct.xpvcv* %11, i64 0, i32 11
  %any_i3245 = bitcast %union.any* %xcv_xsubany44 to i32*
  store i32 10, i32* %any_i3245, align 4, !tbaa !3
  %call46 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([38 x i8]* @.str54, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_boolean_attribute_value, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call47 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str55, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any48 = getelementptr inbounds %struct.cv* %call47, i64 0, i32 0
  %12 = load %struct.xpvcv** %sv_any48, align 8, !tbaa !0
  %xcv_xsubany49 = getelementptr inbounds %struct.xpvcv* %12, i64 0, i32 11
  %any_i3250 = bitcast %union.any* %xcv_xsubany49 to i32*
  store i32 2, i32* %any_i3250, align 4, !tbaa !3
  %call51 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([30 x i8]* @.str56, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any52 = getelementptr inbounds %struct.cv* %call51, i64 0, i32 0
  %13 = load %struct.xpvcv** %sv_any52, align 8, !tbaa !0
  %xcv_xsubany53 = getelementptr inbounds %struct.xpvcv* %13, i64 0, i32 11
  %any_i3254 = bitcast %union.any* %xcv_xsubany53 to i32*
  store i32 3, i32* %any_i3254, align 4, !tbaa !3
  %call55 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str57, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_ignore_tags, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %sv_any56 = getelementptr inbounds %struct.cv* %call55, i64 0, i32 0
  %14 = load %struct.xpvcv** %sv_any56, align 8, !tbaa !0
  %xcv_xsubany57 = getelementptr inbounds %struct.xpvcv* %14, i64 0, i32 11
  %any_i3258 = bitcast %union.any* %xcv_xsubany57 to i32*
  store i32 1, i32* %any_i3258, align 4, !tbaa !3
  %call59 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([22 x i8]* @.str58, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Parser_handler, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call60 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8]* @.str59, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Entities_decode_entities, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call61 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([33 x i8]* @.str60, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Entities__decode_entities, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call62 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([37 x i8]* @.str61, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Entities__probably_utf8_chunk, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %call63 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([32 x i8]* @.str62, i64 0, i64 0), void (%struct.cv*)* @XS_HTML__Entities_UNICODE_SUPPORT, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #6
  %15 = bitcast %struct.cv* %call63 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %15, i8* getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0)) #6
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr66 = getelementptr inbounds %struct.sv** %17, i64 %idxprom
  store %struct.sv** %add.ptr66, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare signext i8 @Perl_is_utf8_string(i8*, i64) #1

; Function Attrs: optsize
declare i8* @Perl_sv_pvn_force_flags(%struct.sv*, i64*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: optsize
declare i8* @Perl_uvuni_to_utf8(i8*, i64) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #1

; Function Attrs: optsize
declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #1

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @parse_buf(%struct.p_state* %p_state, i8* %beg, i8* %end, i32 %utf8, %struct.sv* %self) #0 {
entry:
  %token_pos.i = alloca %struct.token_pos, align 8
  %token_buf.i.i = alloca [4 x %struct.token_pos], align 16
  %token_lim.i.i = alloca i32, align 4
  %tokens.i.i = alloca %struct.token_pos*, align 8
  %token.i.i = alloca %struct.token_pos, align 8
  %token86.i.i = alloca %struct.token_pos, align 8
  %token.i498 = alloca %struct.token_pos, align 8
  %token_buf.i499 = alloca [8 x %struct.token_pos], align 16
  %token_lim.i500 = alloca i32, align 4
  %tokens.i501 = alloca %struct.token_pos*, align 8
  %token314.i = alloca %struct.token_pos, align 8
  %tagname.i = alloca %struct.token_pos, align 8
  %token.i = alloca %struct.token_pos, align 8
  %token_buf.i = alloca [16 x %struct.token_pos], align 16
  %token_lim.i = alloca i32, align 4
  %tokens.i = alloca %struct.token_pos*, align 8
  %end_token = alloca %struct.token_pos, align 8
  %eof = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 6
  %0 = load i8* %eof, align 1, !tbaa !1
  %lnot682 = icmp eq i8 %0, 0
  br i1 %lnot682, label %while.cond1.preheader.lr.ph, label %DONE

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %literal_mode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 7
  %ms = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 17
  %ms_stack = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 18
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %1 = bitcast %struct.token_pos* %tagname.i to i8*
  %2 = bitcast %struct.token_pos* %token.i to i8*
  %strict_names.i480 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 21
  %xml_mode.i482 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 23
  %strict_comment.i = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 20
  %beg49.i = getelementptr inbounds %struct.token_pos* %token.i, i64 0, i32 0
  %end50.i = getelementptr inbounds %struct.token_pos* %token.i, i64 0, i32 1
  %beg7.i = getelementptr inbounds %struct.token_pos* %tagname.i, i64 0, i32 0
  %end16.i = getelementptr inbounds %struct.token_pos* %tagname.i, i64 0, i32 1
  %strict_end.i = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 22
  %3 = bitcast %struct.token_pos* %token.i498 to i8*
  %4 = bitcast i32* %token_lim.i500 to i8*
  %5 = bitcast %struct.token_pos** %tokens.i501 to i8*
  %6 = bitcast %struct.token_pos* %token314.i to i8*
  %7 = bitcast [8 x %struct.token_pos]* %token_buf.i499 to i8*
  %arraydecay.i507 = getelementptr inbounds [8 x %struct.token_pos]* %token_buf.i499, i64 0, i64 0
  %beg94.i = getelementptr inbounds [8 x %struct.token_pos]* %token_buf.i499, i64 0, i64 0, i32 0
  %end98.i = getelementptr inbounds [8 x %struct.token_pos]* %token_buf.i499, i64 0, i64 0, i32 1
  %beg316.i = getelementptr inbounds %struct.token_pos* %token314.i, i64 0, i32 0
  %end317.i = getelementptr inbounds %struct.token_pos* %token314.i, i64 0, i32 1
  %8 = bitcast i32* %token_lim.i.i to i8*
  %9 = bitcast %struct.token_pos** %tokens.i.i to i8*
  %10 = bitcast %struct.token_pos* %token.i.i to i8*
  %11 = bitcast %struct.token_pos* %token86.i.i to i8*
  %no_dash_dash_comment_end.i.i = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 9
  %beg87.i.i = getelementptr inbounds %struct.token_pos* %token86.i.i, i64 0, i32 0
  %end99203.i.i = getelementptr inbounds %struct.token_pos* %token86.i.i, i64 0, i32 1
  %beg66.i.i = getelementptr inbounds %struct.token_pos* %token.i.i, i64 0, i32 0
  %end78.c.i.i = getelementptr inbounds %struct.token_pos* %token.i.i, i64 0, i32 1
  %12 = bitcast [4 x %struct.token_pos]* %token_buf.i.i to i8*
  %arraydecay.i.i = getelementptr inbounds [4 x %struct.token_pos]* %token_buf.i.i, i64 0, i64 0
  %marked_sections.i.i = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 19
  %tobool35.i.i = icmp eq i32 %utf8, 0
  %beg36.i = getelementptr inbounds %struct.token_pos* %token.i498, i64 0, i32 0
  %end37.i = getelementptr inbounds %struct.token_pos* %token.i498, i64 0, i32 1
  %13 = bitcast %struct.token_pos* %token_pos.i to i8*
  %beg1.i = getelementptr inbounds %struct.token_pos* %token_pos.i, i64 0, i32 0
  %end4.i = getelementptr inbounds %struct.token_pos* %token_pos.i, i64 0, i32 1
  %14 = bitcast i32* %token_lim.i to i8*
  %15 = bitcast %struct.token_pos** %tokens.i to i8*
  %16 = bitcast [16 x %struct.token_pos]* %token_buf.i to i8*
  %arraydecay.i = getelementptr inbounds [16 x %struct.token_pos]* %token_buf.i, i64 0, i64 0
  %beg18.i = getelementptr inbounds [16 x %struct.token_pos]* %token_buf.i, i64 0, i64 0, i32 0
  %is_cdata324.i = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  %closing_plaintext = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 27
  %beg96 = getelementptr inbounds %struct.token_pos* %end_token, i64 0, i32 0
  %end97 = getelementptr inbounds %struct.token_pos* %end_token, i64 0, i32 1
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.cond.backedge, %while.cond1.preheader.lr.ph
  %s.0684 = phi i8* [ %beg, %while.cond1.preheader.lr.ph ], [ %s.0.be, %while.cond.backedge ]
  %t.0683 = phi i8* [ %beg, %while.cond1.preheader.lr.ph ], [ %t.0.be, %while.cond.backedge ]
  %17 = load i8** %literal_mode, align 8, !tbaa !0
  %tobool2580661 = icmp eq i8* %17, null
  br i1 %tobool2580661, label %while.cond118.outer, label %while.body3

while.body3:                                      ; preds = %while.cond1.preheader, %while.cond1.backedge
  %s.1581 = phi i8* [ %s.1.be, %while.cond1.backedge ], [ %s.0684, %while.cond1.preheader ]
  %call = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8]* @.str93, i64 0, i64 0)) #6
  %tobool5 = icmp eq i32 %call, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.body3
  %call6 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8]* @.str94, i64 0, i64 0)) #6
  %lnot8 = icmp eq i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %while.body3, %lor.rhs
  %18 = phi i1 [ true, %while.body3 ], [ %lnot8, %lor.rhs ]
  %cmp562 = icmp ult i8* %s.1581, %end
  br i1 %cmp562, label %while.body11, label %while.end

while.body11:                                     ; preds = %if.end57, %lor.end
  %s.2565 = phi i8* [ %s.1581, %lor.end ], [ %incdec.ptr, %if.end57 ]
  %escape_next.0564 = phi i8 [ 0, %lor.end ], [ %escape_next.1, %if.end57 ]
  %inside_quote.0563 = phi i8 [ 0, %lor.end ], [ %inside_quote.1, %if.end57 ]
  %19 = load i8* %s.2565, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %19, 60
  %tobool15 = icmp eq i8 %inside_quote.0563, 0
  %or.cond = and i1 %cmp13, %tobool15
  br i1 %or.cond, label %while.end, label %if.end

if.end:                                           ; preds = %while.body11
  br i1 %18, label %if.then17, label %if.end57

if.then17:                                        ; preds = %if.end
  %tobool18 = icmp eq i8 %escape_next.0564, 0
  br i1 %tobool18, label %if.else, label %if.end57

if.else:                                          ; preds = %if.then17
  %cmp21 = icmp eq i8 %19, 92
  br i1 %cmp21, label %if.end57, label %if.else24

if.else24:                                        ; preds = %if.else
  %tobool26 = icmp ne i8 %inside_quote.0563, 0
  %cmp30 = icmp eq i8 %19, %inside_quote.0563
  %or.cond476 = and i1 %tobool26, %cmp30
  br i1 %or.cond476, label %if.end57, label %if.else33

if.else33:                                        ; preds = %if.else24
  switch i8 %19, label %if.else41 [
    i8 13, label %if.end57
    i8 10, label %if.end57
  ]

if.else41:                                        ; preds = %if.else33
  br i1 %tobool15, label %land.lhs.true43, label %if.end57

land.lhs.true43:                                  ; preds = %if.else41
  switch i8 %19, label %if.end57 [
    i8 34, label %if.then51
    i8 39, label %if.then51
  ]

if.then51:                                        ; preds = %land.lhs.true43, %land.lhs.true43
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true43, %if.else33, %if.else33, %if.else24, %if.else, %if.then17, %if.else41, %if.then51, %if.end
  %inside_quote.1 = phi i8 [ %inside_quote.0563, %if.else41 ], [ %19, %if.then51 ], [ %inside_quote.0563, %if.end ], [ %inside_quote.0563, %if.then17 ], [ %inside_quote.0563, %if.else ], [ 0, %if.else24 ], [ 0, %if.else33 ], [ 0, %if.else33 ], [ 0, %land.lhs.true43 ]
  %escape_next.1 = phi i8 [ 0, %if.else41 ], [ 0, %if.then51 ], [ %escape_next.0564, %if.end ], [ 0, %if.then17 ], [ 1, %if.else ], [ 0, %if.else24 ], [ 0, %if.else33 ], [ 0, %if.else33 ], [ 0, %land.lhs.true43 ]
  %incdec.ptr = getelementptr inbounds i8* %s.2565, i64 1
  %cmp = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp, label %while.body11, label %while.end

while.end:                                        ; preds = %if.end57, %while.body11, %lor.end
  %s.2.lcssa = phi i8* [ %s.1581, %lor.end ], [ %s.2565, %while.body11 ], [ %incdec.ptr, %if.end57 ]
  %cmp58 = icmp eq i8* %s.2.lcssa, %end
  br i1 %cmp58, label %DONE, label %if.end61

if.end61:                                         ; preds = %while.end
  %incdec.ptr62 = getelementptr inbounds i8* %s.2.lcssa, i64 1
  %20 = load i8* %incdec.ptr62, align 1, !tbaa !1
  %cmp64 = icmp eq i8 %20, 47
  br i1 %cmp64, label %if.then66, label %while.cond1.backedge

if.then66:                                        ; preds = %if.end61
  %incdec.ptr67 = getelementptr inbounds i8* %s.2.lcssa, i64 2
  %21 = load i8* %17, align 1, !tbaa !1
  %tobool70570 = icmp eq i8 %21, 0
  br i1 %tobool70570, label %land.lhs.true88, label %land.rhs

land.rhs:                                         ; preds = %if.then66, %while.body83
  %22 = phi i8 [ %25, %while.body83 ], [ %21, %if.then66 ]
  %s.3572 = phi i8* [ %incdec.ptr84, %while.body83 ], [ %incdec.ptr67, %if.then66 ]
  %l.0571 = phi i8* [ %incdec.ptr85, %while.body83 ], [ %17, %if.then66 ]
  %23 = load i8* %s.3572, align 1, !tbaa !1
  %conv71 = sext i8 %23 to i32
  %.off552 = add i8 %23, -65
  %24 = icmp ult i8 %.off552, 26
  %add = add nsw i32 %conv71, 32
  %add.conv71 = select i1 %24, i32 %add, i32 %conv71
  %conv80 = sext i8 %22 to i32
  %cmp81 = icmp eq i32 %add.conv71, %conv80
  br i1 %cmp81, label %while.body83, label %while.cond1.backedge

while.body83:                                     ; preds = %land.rhs
  %incdec.ptr84 = getelementptr inbounds i8* %s.3572, i64 1
  %incdec.ptr85 = getelementptr inbounds i8* %l.0571, i64 1
  %25 = load i8* %incdec.ptr85, align 1, !tbaa !1
  %tobool70 = icmp eq i8 %25, 0
  br i1 %tobool70, label %land.lhs.true88, label %land.rhs

land.lhs.true88:                                  ; preds = %if.then66, %while.body83
  %s.3569 = phi i8* [ %incdec.ptr67, %if.then66 ], [ %incdec.ptr84, %while.body83 ]
  %call90 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8]* @.str80, i64 0, i64 0)) #6
  %tobool91 = icmp eq i32 %call90, 0
  br i1 %tobool91, label %lor.lhs.false92, label %if.then95

lor.lhs.false92:                                  ; preds = %land.lhs.true88
  %26 = load i8* %closing_plaintext, align 1, !tbaa !1
  %tobool94 = icmp eq i8 %26, 0
  br i1 %tobool94, label %while.cond1.backedge, label %if.then95

if.then95:                                        ; preds = %lor.lhs.false92, %land.lhs.true88
  store i8* %incdec.ptr67, i8** %beg96, align 8, !tbaa !0
  store i8* %s.3569, i8** %end97, align 8, !tbaa !0
  br label %while.cond98

while.cond98:                                     ; preds = %while.cond98, %if.then95
  %s.4 = phi i8* [ %s.3569, %if.then95 ], [ %incdec.ptr102, %while.cond98 ]
  %27 = load i8* %s.4, align 1, !tbaa !1
  %idxprom = zext i8 %27 to i64
  %arrayidx = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom
  %28 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %28, 1
  %tobool100 = icmp eq i8 %and, 0
  %incdec.ptr102 = getelementptr inbounds i8* %s.4, i64 1
  br i1 %tobool100, label %while.end103, label %while.cond98

while.end103:                                     ; preds = %while.cond98
  %cmp105 = icmp eq i8 %27, 62
  br i1 %cmp105, label %if.then107, label %while.cond1.backedge

while.cond1.backedge:                             ; preds = %land.rhs, %while.end103, %if.end61, %lor.lhs.false92
  %s.1.be = phi i8* [ %s.4, %while.end103 ], [ %s.3569, %lor.lhs.false92 ], [ %incdec.ptr62, %if.end61 ], [ %s.3572, %land.rhs ]
  %tobool2 = icmp eq i8* %17, null
  br i1 %tobool2, label %while.cond118.outer, label %while.body3

if.then107:                                       ; preds = %while.end103
  %cmp109 = icmp eq i8* %t.0683, %s.2.lcssa
  br i1 %cmp109, label %while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge, label %if.then111

if.then111:                                       ; preds = %if.then107
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %t.0683, i8* %s.2.lcssa, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  br label %while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge

while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge: ; preds = %if.then111, %if.then107
  call fastcc void @report_event(%struct.p_state* %p_state, i32 3, i8* %s.2.lcssa, i8* %incdec.ptr102, i32 %utf8, %struct.token_pos* %end_token, i32 1, %struct.sv* %self) #5
  store i8* null, i8** %literal_mode, align 8, !tbaa !0
  store i8 0, i8* %is_cdata324.i, align 1, !tbaa !1
  br label %while.cond118.outer

while.cond118.outer:                              ; preds = %while.cond1.backedge, %while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge, %while.cond1.preheader, %if.end158
  %t.2.ph = phi i8* [ %incdec.ptr154, %if.end158 ], [ %t.0683, %while.cond1.backedge ], [ %incdec.ptr102, %while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge ], [ %t.0683, %while.cond1.preheader ]
  %s.5.ph = phi i8* [ %incdec.ptr154, %if.end158 ], [ %s.1.be, %while.cond1.backedge ], [ %incdec.ptr102, %while.cond1.outer.while.cond118.loopexit.loopexit_crit_edge ], [ %s.0684, %while.cond1.preheader ]
  %29 = load i32* %ms, align 4, !tbaa !6
  %.off = add i32 %29, -2
  %switch = icmp ult i32 %.off, 2
  br label %while.cond118

while.cond118:                                    ; preds = %while.cond118.outer, %if.end162
  %s.5 = phi i8* [ %s.7, %if.end162 ], [ %s.5.ph, %while.cond118.outer ]
  %cmp129587 = icmp ult i8* %s.5, %end
  br i1 %switch, label %while.cond128.preheader, label %while.cond168.loopexit

while.cond128.preheader:                          ; preds = %while.cond118
  %30 = load i8* %s.5, align 1, !tbaa !1
  %cmp133588 = icmp eq i8 %30, 93
  br i1 %cmp129587, label %land.rhs131, label %while.end138

while.cond128:                                    ; preds = %land.rhs131
  %cmp129 = icmp ult i8* %incdec.ptr137, %end
  %31 = load i8* %incdec.ptr137, align 1, !tbaa !1
  %cmp133 = icmp eq i8 %31, 93
  br i1 %cmp129, label %land.rhs131, label %while.end138

land.rhs131:                                      ; preds = %while.cond128.preheader, %while.cond128
  %cmp133590 = phi i1 [ %cmp133, %while.cond128 ], [ %cmp133588, %while.cond128.preheader ]
  %s.6589 = phi i8* [ %incdec.ptr137, %while.cond128 ], [ %s.5, %while.cond128.preheader ]
  %incdec.ptr137 = getelementptr inbounds i8* %s.6589, i64 1
  br i1 %cmp133590, label %if.then142, label %while.cond128

while.end138:                                     ; preds = %while.cond128, %while.cond128.preheader
  %cmp133.lcssa = phi i1 [ %cmp133588, %while.cond128.preheader ], [ %cmp133, %while.cond128 ]
  %s.6.lcssa = phi i8* [ %s.5, %while.cond128.preheader ], [ %incdec.ptr137, %while.cond128 ]
  br i1 %cmp133.lcssa, label %if.then142, label %if.end162

if.then142:                                       ; preds = %land.rhs131, %while.end138
  %s.6585 = phi i8* [ %s.6.lcssa, %while.end138 ], [ %s.6589, %land.rhs131 ]
  %incdec.ptr144 = getelementptr inbounds i8* %s.6585, i64 1
  %32 = load i8* %incdec.ptr144, align 1, !tbaa !1
  %cmp146 = icmp eq i8 %32, 93
  br i1 %cmp146, label %if.then148, label %if.end162

if.then148:                                       ; preds = %if.then142
  %incdec.ptr149 = getelementptr inbounds i8* %s.6585, i64 2
  %33 = load i8* %incdec.ptr149, align 1, !tbaa !1
  %cmp151 = icmp eq i8 %33, 62
  br i1 %cmp151, label %if.then153, label %if.end162

if.then153:                                       ; preds = %if.then148
  %incdec.ptr154 = getelementptr inbounds i8* %s.6585, i64 3
  %cmp155 = icmp eq i8* %t.2.ph, %s.6585
  br i1 %cmp155, label %if.end158, label %if.then157

if.then157:                                       ; preds = %if.then153
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %t.2.ph, i8* %s.6585, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  br label %if.end158

if.end158:                                        ; preds = %if.then153, %if.then157
  call fastcc void @report_event(%struct.p_state* %p_state, i32 10, i8* %s.6585, i8* %incdec.ptr154, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  %34 = load %struct.av** %ms_stack, align 8, !tbaa !0
  %call159 = call %struct.sv* @Perl_av_pop(%struct.av* %34) #6
  call void @Perl_sv_free(%struct.sv* %call159) #6
  call fastcc void @marked_section_update(%struct.p_state* %p_state) #5
  br label %while.cond118.outer

if.end162:                                        ; preds = %if.then142, %if.then148, %while.end138
  %s.7 = phi i8* [ %incdec.ptr149, %if.then148 ], [ %incdec.ptr144, %if.then142 ], [ %s.6.lcssa, %while.end138 ]
  %cmp163 = icmp eq i8* %s.7, %end
  br i1 %cmp163, label %DONE, label %while.cond118

while.cond168.loopexit:                           ; preds = %while.cond118
  br i1 %cmp129587, label %land.rhs171.lr.ph, label %while.end202

land.rhs171.lr.ph:                                ; preds = %while.cond168.loopexit, %if.then194
  %s.8.ph677 = phi i8* [ %incdec.ptr195, %if.then194 ], [ %s.5, %while.cond168.loopexit ]
  %t.3.ph676 = phi i8* [ %incdec.ptr195, %if.then194 ], [ %t.2.ph, %while.cond168.loopexit ]
  br label %land.rhs171

land.rhs171:                                      ; preds = %if.end200, %land.rhs171.lr.ph
  %s.8600 = phi i8* [ %s.8.ph677, %land.rhs171.lr.ph ], [ %incdec.ptr201, %if.end200 ]
  %35 = load i8* %s.8600, align 1, !tbaa !1
  %cmp173 = icmp eq i8 %35, 60
  br i1 %cmp173, label %while.end202, label %while.body176

while.body176:                                    ; preds = %land.rhs171
  %36 = load i32* %ms, align 4, !tbaa !6
  %tobool178 = icmp ne i32 %36, 0
  %cmp181 = icmp eq i8 %35, 93
  %or.cond478 = and i1 %tobool178, %cmp181
  br i1 %or.cond478, label %if.then183, label %if.end200

if.then183:                                       ; preds = %while.body176
  %incdec.ptr185 = getelementptr inbounds i8* %s.8600, i64 1
  %37 = load i8* %incdec.ptr185, align 1, !tbaa !1
  %cmp187 = icmp eq i8 %37, 93
  br i1 %cmp187, label %if.then189, label %if.end200

if.then189:                                       ; preds = %if.then183
  %incdec.ptr190 = getelementptr inbounds i8* %s.8600, i64 2
  %38 = load i8* %incdec.ptr190, align 1, !tbaa !1
  %cmp192 = icmp eq i8 %38, 62
  br i1 %cmp192, label %if.then194, label %if.end200

if.then194:                                       ; preds = %if.then189
  %incdec.ptr195 = getelementptr inbounds i8* %s.8600, i64 3
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %t.3.ph676, i8* %s.8600, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  call fastcc void @report_event(%struct.p_state* %p_state, i32 10, i8* %s.8600, i8* %incdec.ptr195, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  %39 = load %struct.av** %ms_stack, align 8, !tbaa !0
  %call197 = call %struct.sv* @Perl_av_pop(%struct.av* %39) #6
  call void @Perl_sv_free(%struct.sv* %call197) #6
  call fastcc void @marked_section_update(%struct.p_state* %p_state) #5
  %cmp169599 = icmp ult i8* %incdec.ptr195, %end
  br i1 %cmp169599, label %land.rhs171.lr.ph, label %if.end266

if.end200:                                        ; preds = %while.body176, %if.then183, %if.then189
  %s.9 = phi i8* [ %incdec.ptr190, %if.then189 ], [ %incdec.ptr185, %if.then183 ], [ %s.8600, %while.body176 ]
  %incdec.ptr201 = getelementptr inbounds i8* %s.9, i64 1
  %cmp169 = icmp ult i8* %incdec.ptr201, %end
  br i1 %cmp169, label %land.rhs171, label %while.end202

while.end202:                                     ; preds = %while.cond168.loopexit, %if.end200, %land.rhs171
  %t.3.ph670 = phi i8* [ %t.3.ph676, %land.rhs171 ], [ %t.3.ph676, %if.end200 ], [ %t.2.ph, %while.cond168.loopexit ]
  %s.8.lcssa = phi i8* [ %s.8600, %land.rhs171 ], [ %incdec.ptr201, %if.end200 ], [ %s.5, %while.cond168.loopexit ]
  %cmp203 = icmp eq i8* %s.8.lcssa, %t.3.ph670
  br i1 %cmp203, label %if.end266, label %if.then205

if.then205:                                       ; preds = %while.end202
  %40 = load i8* %s.8.lcssa, align 1, !tbaa !1
  %cmp207 = icmp eq i8 %40, 60
  br i1 %cmp207, label %if.then209, label %if.else210

if.then209:                                       ; preds = %if.then205
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %t.3.ph670, i8* %s.8.lcssa, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  br label %if.end266

if.else210:                                       ; preds = %if.then205
  %incdec.ptr211 = getelementptr inbounds i8* %s.8.lcssa, i64 -1
  %41 = load i8* %incdec.ptr211, align 1, !tbaa !1
  %idxprom212 = zext i8 %41 to i64
  %arrayidx213 = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom212
  %42 = load i8* %arrayidx213, align 1, !tbaa !1
  %and215 = and i8 %42, 1
  %tobool216 = icmp eq i8 %and215, 0
  %cmp233555 = icmp ult i8* %incdec.ptr211, %t.3.ph670
  br i1 %tobool216, label %while.cond232.preheader, label %while.cond218.preheader

while.cond218.preheader:                          ; preds = %if.else210
  br i1 %cmp233555, label %if.end259, label %land.rhs221

while.cond232.preheader:                          ; preds = %if.else210
  br i1 %cmp233555, label %while.cond246.preheader, label %land.rhs235

while.cond218:                                    ; preds = %land.rhs221
  %cmp219 = icmp ult i8* %incdec.ptr229, %t.3.ph670
  br i1 %cmp219, label %if.end259, label %while.cond218.land.rhs221_crit_edge

while.cond218.land.rhs221_crit_edge:              ; preds = %while.cond218
  %.pre761 = load i8* %incdec.ptr229, align 1, !tbaa !1
  %idxprom222.phi.trans.insert = zext i8 %.pre761 to i64
  %arrayidx223.phi.trans.insert = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom222.phi.trans.insert
  %.pre762 = load i8* %arrayidx223.phi.trans.insert, align 1, !tbaa !1
  br label %land.rhs221

land.rhs221:                                      ; preds = %while.cond218.preheader, %while.cond218.land.rhs221_crit_edge
  %43 = phi i8 [ %.pre762, %while.cond218.land.rhs221_crit_edge ], [ %42, %while.cond218.preheader ]
  %s.10560 = phi i8* [ %incdec.ptr229, %while.cond218.land.rhs221_crit_edge ], [ %incdec.ptr211, %while.cond218.preheader ]
  %and225 = and i8 %43, 1
  %tobool226 = icmp eq i8 %and225, 0
  %incdec.ptr229 = getelementptr inbounds i8* %s.10560, i64 -1
  br i1 %tobool226, label %if.end259, label %while.cond218

while.cond232:                                    ; preds = %land.rhs235
  %cmp233 = icmp ult i8* %incdec.ptr244, %t.3.ph670
  br i1 %cmp233, label %while.cond246.preheader, label %while.cond232.land.rhs235_crit_edge

while.cond232.land.rhs235_crit_edge:              ; preds = %while.cond232
  %.pre = load i8* %incdec.ptr244, align 1, !tbaa !1
  %idxprom236.phi.trans.insert = zext i8 %.pre to i64
  %arrayidx237.phi.trans.insert = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom236.phi.trans.insert
  %.pre760 = load i8* %arrayidx237.phi.trans.insert, align 1, !tbaa !1
  br label %land.rhs235

while.cond246.preheader:                          ; preds = %while.cond232, %land.rhs235, %while.cond232.preheader
  %s.11.lcssa = phi i8* [ %incdec.ptr211, %while.cond232.preheader ], [ %s.11556, %land.rhs235 ], [ %incdec.ptr244, %while.cond232 ]
  %cmp247553 = icmp ult i8* %s.11.lcssa, %t.3.ph670
  br i1 %cmp247553, label %if.end259, label %land.rhs249

land.rhs235:                                      ; preds = %while.cond232.preheader, %while.cond232.land.rhs235_crit_edge
  %44 = phi i8 [ %.pre760, %while.cond232.land.rhs235_crit_edge ], [ %42, %while.cond232.preheader ]
  %s.11556 = phi i8* [ %incdec.ptr244, %while.cond232.land.rhs235_crit_edge ], [ %incdec.ptr211, %while.cond232.preheader ]
  %and239 = and i8 %44, 1
  %lnot241 = icmp eq i8 %and239, 0
  %incdec.ptr244 = getelementptr inbounds i8* %s.11556, i64 -1
  br i1 %lnot241, label %while.cond232, label %while.cond246.preheader

while.cond246:                                    ; preds = %land.rhs249
  %cmp247 = icmp ult i8* %incdec.ptr257, %t.3.ph670
  br i1 %cmp247, label %if.end259, label %land.rhs249

land.rhs249:                                      ; preds = %while.cond246, %while.cond246.preheader
  %s.12554 = phi i8* [ %s.11.lcssa, %while.cond246.preheader ], [ %incdec.ptr257, %while.cond246 ]
  %45 = load i8* %s.12554, align 1, !tbaa !1
  %idxprom250 = zext i8 %45 to i64
  %arrayidx251 = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom250
  %46 = load i8* %arrayidx251, align 1, !tbaa !1
  %and253 = and i8 %46, 1
  %tobool254 = icmp eq i8 %and253, 0
  %incdec.ptr257 = getelementptr inbounds i8* %s.12554, i64 -1
  br i1 %tobool254, label %if.end259, label %while.cond246

if.end259:                                        ; preds = %while.cond218.preheader, %land.rhs221, %while.cond218, %while.cond246.preheader, %land.rhs249, %while.cond246
  %s.13 = phi i8* [ %s.11.lcssa, %while.cond246.preheader ], [ %s.12554, %land.rhs249 ], [ %incdec.ptr257, %while.cond246 ], [ %incdec.ptr211, %while.cond218.preheader ], [ %s.10560, %land.rhs221 ], [ %incdec.ptr229, %while.cond218 ]
  %incdec.ptr260 = getelementptr inbounds i8* %s.13, i64 1
  %cmp261 = icmp eq i8* %incdec.ptr260, %t.3.ph670
  br i1 %cmp261, label %DONE, label %if.then263

if.then263:                                       ; preds = %if.end259
  call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %t.3.ph670, i8* %incdec.ptr260, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  br label %DONE

if.end266:                                        ; preds = %if.then194, %while.end202, %if.then209
  %s.8.lcssa768 = phi i8* [ %s.8.lcssa, %if.then209 ], [ %s.8.lcssa, %while.end202 ], [ %incdec.ptr195, %if.then194 ]
  %t.4 = phi i8* [ %s.8.lcssa, %if.then209 ], [ %t.3.ph670, %while.end202 ], [ %incdec.ptr195, %if.then194 ]
  %sub.ptr.rhs.cast = ptrtoint i8* %s.8.lcssa768 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp267 = icmp slt i64 %sub.ptr.sub, 3
  br i1 %cmp267, label %DONE, label %if.end270

if.end270:                                        ; preds = %if.end266
  %incdec.ptr271 = getelementptr inbounds i8* %s.8.lcssa768, i64 1
  %47 = load i8* %incdec.ptr271, align 1, !tbaa !1
  %idxprom272 = zext i8 %47 to i64
  %arrayidx273 = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom272
  %48 = load i8* %arrayidx273, align 1, !tbaa !1
  %and275 = and i8 %48, 2
  %tobool276 = icmp eq i8 %and275, 0
  br i1 %tobool276, label %if.else279, label %if.then277

if.then277:                                       ; preds = %if.end270
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  call void @llvm.lifetime.start(i64 256, i8* %16) #2
  store i32 16, i32* %token_lim.i, align 4, !tbaa !3
  store %struct.token_pos* %arraydecay.i, %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %49 = load i8* %strict_names.i480, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %49, 0
  br i1 %tobool.i, label %lor.lhs.false.i, label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.then277
  %50 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool2.i = icmp eq i8 %50, 0
  %..i = select i1 %tobool2.i, i32 8, i32 4
  %.458.i = select i1 %tobool2.i, i32 8, i32 2
  %.459.i = select i1 %tobool2.i, i32 16, i32 4
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %if.then277
  %tag_name_char.0.i = phi i32 [ 4, %if.then277 ], [ %..i, %lor.lhs.false.i ]
  %attr_name_first.0.i = phi i32 [ 2, %if.then277 ], [ %.458.i, %lor.lhs.false.i ]
  %attr_name_char.0.i = phi i32 [ 4, %if.then277 ], [ %.459.i, %lor.lhs.false.i ]
  %add.ptr.i = getelementptr inbounds i8* %t.4, i64 2
  %cmp480.i = icmp ult i8* %add.ptr.i, %end
  br i1 %cmp480.i, label %land.rhs.i, label %if.end14.i

while.cond.i:                                     ; preds = %land.rhs.i
  %cmp.i = icmp ult i8* %incdec.ptr.i, %end
  br i1 %cmp.i, label %land.rhs.i, label %if.end14.i

land.rhs.i:                                       ; preds = %if.end.i, %while.cond.i
  %s.0481.i = phi i8* [ %incdec.ptr.i, %while.cond.i ], [ %add.ptr.i, %if.end.i ]
  %51 = load i8* %s.0481.i, align 1, !tbaa !1
  %idxprom.i = zext i8 %51 to i64
  %arrayidx.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom.i
  %52 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv4.i = zext i8 %52 to i32
  %and.i = and i32 %conv4.i, %tag_name_char.0.i
  %tobool6.i = icmp eq i32 %and.i, 0
  %incdec.ptr.i = getelementptr inbounds i8* %s.0481.i, i64 1
  br i1 %tobool6.i, label %if.end14.i, label %while.cond.i

if.end14.i:                                       ; preds = %land.rhs.i, %while.cond.i, %if.end.i
  %s.0.lcssa.i = phi i8* [ %add.ptr.i, %if.end.i ], [ %s.0481.i, %land.rhs.i ], [ %incdec.ptr.i, %while.cond.i ]
  %add.ptr15.i = getelementptr inbounds i8* %t.4, i64 1
  store i8* %add.ptr15.i, i8** %beg18.i, align 16, !tbaa !0
  %end22.i = getelementptr inbounds [16 x %struct.token_pos]* %token_buf.i, i64 0, i64 0, i32 1
  store i8* %s.0.lcssa.i, i8** %end22.i, align 8, !tbaa !0
  br label %while.cond23.i

while.cond23.i:                                   ; preds = %while.cond23.i, %if.end14.i
  %s.1.i = phi i8* [ %s.0.lcssa.i, %if.end14.i ], [ %incdec.ptr30.i, %while.cond23.i ]
  %53 = load i8* %s.1.i, align 1, !tbaa !1
  %idxprom24.i = zext i8 %53 to i64
  %arrayidx25.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom24.i
  %54 = load i8* %arrayidx25.i, align 1, !tbaa !1
  %and27.i = and i8 %54, 1
  %tobool28.i = icmp eq i8 %and27.i, 0
  %incdec.ptr30.i = getelementptr inbounds i8* %s.1.i, i64 1
  br i1 %tobool28.i, label %while.end31.i, label %while.cond23.i

while.end31.i:                                    ; preds = %while.cond23.i
  %cmp32.i = icmp eq i8* %s.1.i, %end
  br i1 %cmp32.i, label %PREMATURE.i, label %while.cond36.preheader.i

while.cond36.preheader.i:                         ; preds = %while.end31.i
  %conv39473.i = zext i8 %54 to i32
  %and41474.i = and i32 %conv39473.i, %attr_name_first.0.i
  %tobool42475.i = icmp eq i32 %and41474.i, 0
  br i1 %tobool42475.i, label %while.end252.i, label %while.cond45.preheader.i

while.cond45.preheader.i:                         ; preds = %while.cond36.preheader.i, %while.cond36.backedge.i
  %s.2477.i = phi i8* [ %s.2.be.i, %while.cond36.backedge.i ], [ %s.1.i, %while.cond36.preheader.i ]
  %num_tokens.0476.i = phi i32 [ %num_tokens.0.be.i, %while.cond36.backedge.i ], [ 1, %while.cond36.preheader.i ]
  br label %while.cond45.i

while.cond45.i:                                   ; preds = %land.rhs48.i, %while.cond45.preheader.i
  %s.2.pn.i = phi i8* [ %s.3.i, %land.rhs48.i ], [ %s.2477.i, %while.cond45.preheader.i ]
  %s.3.i = getelementptr inbounds i8* %s.2.pn.i, i64 1
  %cmp46.i = icmp ult i8* %s.3.i, %end
  br i1 %cmp46.i, label %land.rhs48.i, label %while.end58.i

land.rhs48.i:                                     ; preds = %while.cond45.i
  %55 = load i8* %s.3.i, align 1, !tbaa !1
  %idxprom49.i = zext i8 %55 to i64
  %arrayidx50.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom49.i
  %56 = load i8* %arrayidx50.i, align 1, !tbaa !1
  %conv51.i = zext i8 %56 to i32
  %and53.i = and i32 %conv51.i, %attr_name_char.0.i
  %tobool54.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.i, label %while.end58.i, label %while.cond45.i

while.end58.i:                                    ; preds = %land.rhs48.i, %while.cond45.i
  %cmp59.i = icmp eq i8* %s.3.i, %end
  br i1 %cmp59.i, label %PREMATURE.i, label %if.end62.i

if.end62.i:                                       ; preds = %while.end58.i
  %inc63.i = add nsw i32 %num_tokens.0476.i, 1
  %57 = load i32* %token_lim.i, align 4, !tbaa !3
  %cmp64.i = icmp eq i32 %inc63.i, %57
  br i1 %cmp64.i, label %if.then66.i, label %if.end71.i

if.then66.i:                                      ; preds = %if.end62.i
  %58 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp68.i = icmp ne %struct.token_pos* %58, %arraydecay.i
  %conv70.i = zext i1 %cmp68.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i, i32* %token_lim.i, i8 signext %conv70.i) #6
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end62.i, %if.then66.i
  %idxprom73.i = sext i32 %num_tokens.0476.i to i64
  %59 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %beg75.i = getelementptr inbounds %struct.token_pos* %59, i64 %idxprom73.i, i32 0
  store i8* %s.2477.i, i8** %beg75.i, align 8, !tbaa !0
  %60 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %end79.i = getelementptr inbounds %struct.token_pos* %60, i64 %idxprom73.i, i32 1
  store i8* %s.3.i, i8** %end79.i, align 8, !tbaa !0
  br label %while.cond80.i

while.cond80.i:                                   ; preds = %while.cond80.i, %if.end71.i
  %s.4.i = phi i8* [ %s.3.i, %if.end71.i ], [ %incdec.ptr87.i, %while.cond80.i ]
  %61 = load i8* %s.4.i, align 1, !tbaa !1
  %idxprom81.i = zext i8 %61 to i64
  %arrayidx82.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom81.i
  %62 = load i8* %arrayidx82.i, align 1, !tbaa !1
  %and84.i = and i8 %62, 1
  %tobool85.i = icmp eq i8 %and84.i, 0
  %incdec.ptr87.i = getelementptr inbounds i8* %s.4.i, i64 1
  br i1 %tobool85.i, label %while.end88.i, label %while.cond80.i

while.end88.i:                                    ; preds = %while.cond80.i
  %cmp89.i = icmp eq i8* %s.4.i, %end
  br i1 %cmp89.i, label %PREMATURE.i, label %if.end92.i

if.end92.i:                                       ; preds = %while.end88.i
  %cmp94.i = icmp eq i8 %61, 61
  br i1 %cmp94.i, label %while.cond98.i, label %if.else233.i

while.cond98.i:                                   ; preds = %if.end92.i, %while.cond98.i
  %s.4.pn.i = phi i8* [ %s.5.i, %while.cond98.i ], [ %s.4.i, %if.end92.i ]
  %s.5.i = getelementptr inbounds i8* %s.4.pn.i, i64 1
  %63 = load i8* %s.5.i, align 1, !tbaa !1
  %idxprom99.i = zext i8 %63 to i64
  %arrayidx100.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom99.i
  %64 = load i8* %arrayidx100.i, align 1, !tbaa !1
  %and102.i = and i8 %64, 1
  %tobool103.i = icmp eq i8 %and102.i, 0
  br i1 %tobool103.i, label %while.end106.i, label %while.cond98.i

while.end106.i:                                   ; preds = %while.cond98.i
  %cmp107.i = icmp eq i8* %s.5.i, %end
  br i1 %cmp107.i, label %PREMATURE.i, label %if.end110.i

if.end110.i:                                      ; preds = %while.end106.i
  switch i8 %63, label %while.cond177.preheader.i [
    i8 62, label %if.then114.i
    i8 34, label %while.cond142.i
    i8 39, label %while.cond142.i
  ]

while.cond177.preheader.i:                        ; preds = %if.end110.i
  %cmp178465.i = icmp ult i8* %s.5.i, %end
  br i1 %cmp178465.i, label %land.rhs180.i.preheader, label %while.end197.i

land.rhs180.i.preheader:                          ; preds = %while.cond177.preheader.i
  %and184.i606 = and i8 %64, 8
  %tobool185.i607 = icmp eq i8 %and184.i606, 0
  br i1 %tobool185.i607, label %while.end197.i, label %while.body187.i.lr.ph

while.body187.i.lr.ph:                            ; preds = %land.rhs180.i.preheader
  %65 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool190.i = icmp ne i8 %65, 0
  br label %while.body187.i

if.then114.i:                                     ; preds = %if.end110.i
  %inc115.i = add nsw i32 %num_tokens.0476.i, 2
  %66 = load i32* %token_lim.i, align 4, !tbaa !3
  %cmp116.i = icmp eq i32 %inc115.i, %66
  br i1 %cmp116.i, label %if.then118.i, label %if.end123.i

if.then118.i:                                     ; preds = %if.then114.i
  %67 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp120.i = icmp ne %struct.token_pos* %67, %arraydecay.i
  %conv122.i = zext i1 %cmp120.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i, i32* %token_lim.i, i8 signext %conv122.i) #6
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then118.i, %if.then114.i
  %idxprom125.i = sext i32 %inc63.i to i64
  %68 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %beg127.i = getelementptr inbounds %struct.token_pos* %68, i64 %idxprom125.i, i32 0
  store i8* %s.5.i, i8** %beg127.i, align 8, !tbaa !0
  %69 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %end131.i = getelementptr inbounds %struct.token_pos* %69, i64 %idxprom125.i, i32 1
  store i8* %s.5.i, i8** %end131.i, align 8, !tbaa !0
  br label %while.end252.i

while.cond142.i:                                  ; preds = %if.end110.i, %if.end110.i, %land.rhs145.i
  %s.5.pn.i = phi i8* [ %s.6.i, %land.rhs145.i ], [ %s.5.i, %if.end110.i ], [ %s.5.i, %if.end110.i ]
  %s.6.i = getelementptr inbounds i8* %s.5.pn.i, i64 1
  %cmp143.i = icmp ult i8* %s.6.i, %end
  br i1 %cmp143.i, label %land.rhs145.i, label %while.end153.i

land.rhs145.i:                                    ; preds = %while.cond142.i
  %70 = load i8* %s.6.i, align 1, !tbaa !1
  %cmp148.i = icmp eq i8 %70, %63
  br i1 %cmp148.i, label %while.end153.i, label %while.cond142.i

while.end153.i:                                   ; preds = %land.rhs145.i, %while.cond142.i
  %cmp154.i = icmp eq i8* %s.6.i, %end
  br i1 %cmp154.i, label %PREMATURE.i, label %if.end157.i

if.end157.i:                                      ; preds = %while.end153.i
  %incdec.ptr158.i = getelementptr inbounds i8* %s.5.pn.i, i64 2
  %inc159.i = add nsw i32 %num_tokens.0476.i, 2
  %71 = load i32* %token_lim.i, align 4, !tbaa !3
  %cmp160.i = icmp eq i32 %inc159.i, %71
  br i1 %cmp160.i, label %if.then162.i, label %if.end167.i

if.then162.i:                                     ; preds = %if.end157.i
  %72 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp164.i = icmp ne %struct.token_pos* %72, %arraydecay.i
  %conv166.i = zext i1 %cmp164.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i, i32* %token_lim.i, i8 signext %conv166.i) #6
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then162.i, %if.end157.i
  %idxprom169.i = sext i32 %inc63.i to i64
  %73 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %beg171.i = getelementptr inbounds %struct.token_pos* %73, i64 %idxprom169.i, i32 0
  store i8* %s.5.i, i8** %beg171.i, align 8, !tbaa !0
  %74 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %end175.i = getelementptr inbounds %struct.token_pos* %74, i64 %idxprom169.i, i32 1
  store i8* %incdec.ptr158.i, i8** %end175.i, align 8, !tbaa !0
  br label %while.cond220.preheader.i

while.cond177.i:                                  ; preds = %while.body187.i
  %cmp178.i = icmp ult i8* %incdec.ptr196.i, %end
  br i1 %cmp178.i, label %while.cond177.land.rhs180_crit_edge.i, label %while.end197.i

while.cond177.land.rhs180_crit_edge.i:            ; preds = %while.cond177.i
  %.pre494.i = load i8* %incdec.ptr196.i, align 1, !tbaa !1
  %idxprom181.phi.trans.insert.i = zext i8 %.pre494.i to i64
  %arrayidx182.phi.trans.insert.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom181.phi.trans.insert.i
  %.pre495.i = load i8* %arrayidx182.phi.trans.insert.i, align 1, !tbaa !1
  %and184.i = and i8 %.pre495.i, 8
  %tobool185.i = icmp eq i8 %and184.i, 0
  br i1 %tobool185.i, label %while.end197.i, label %while.body187.i

while.body187.i:                                  ; preds = %while.body187.i.lr.ph, %while.cond177.land.rhs180_crit_edge.i
  %s.7466.i608 = phi i8* [ %s.5.i, %while.body187.i.lr.ph ], [ %incdec.ptr196.i, %while.cond177.land.rhs180_crit_edge.i ]
  %75 = phi i8 [ %63, %while.body187.i.lr.ph ], [ %.pre494.i, %while.cond177.land.rhs180_crit_edge.i ]
  %cmp192.i = icmp eq i8 %75, 47
  %or.cond.i = and i1 %tobool190.i, %cmp192.i
  %incdec.ptr196.i = getelementptr inbounds i8* %s.7466.i608, i64 1
  br i1 %or.cond.i, label %while.end197.i, label %while.cond177.i

while.end197.i:                                   ; preds = %land.rhs180.i.preheader, %while.body187.i, %while.cond177.i, %while.cond177.land.rhs180_crit_edge.i, %while.cond177.preheader.i
  %s.7.lcssa.i = phi i8* [ %s.5.i, %while.cond177.preheader.i ], [ %s.5.i, %land.rhs180.i.preheader ], [ %incdec.ptr196.i, %while.cond177.i ], [ %s.7466.i608, %while.body187.i ], [ %incdec.ptr196.i, %while.cond177.land.rhs180_crit_edge.i ]
  %cmp198.i = icmp eq i8* %s.7.lcssa.i, %end
  br i1 %cmp198.i, label %PREMATURE.i, label %if.end201.i

if.end201.i:                                      ; preds = %while.end197.i
  %inc202.i = add nsw i32 %num_tokens.0476.i, 2
  %76 = load i32* %token_lim.i, align 4, !tbaa !3
  %cmp203.i = icmp eq i32 %inc202.i, %76
  br i1 %cmp203.i, label %if.then205.i, label %if.end210.i

if.then205.i:                                     ; preds = %if.end201.i
  %77 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp207.i = icmp ne %struct.token_pos* %77, %arraydecay.i
  %conv209.i = zext i1 %cmp207.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i, i32* %token_lim.i, i8 signext %conv209.i) #6
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.then205.i, %if.end201.i
  %idxprom212.i = sext i32 %inc63.i to i64
  %78 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %beg214.i = getelementptr inbounds %struct.token_pos* %78, i64 %idxprom212.i, i32 0
  store i8* %s.5.i, i8** %beg214.i, align 8, !tbaa !0
  %79 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %end218.i = getelementptr inbounds %struct.token_pos* %79, i64 %idxprom212.i, i32 1
  store i8* %s.7.lcssa.i, i8** %end218.i, align 8, !tbaa !0
  br label %while.cond220.preheader.i

while.cond220.preheader.i:                        ; preds = %if.end210.i, %if.end167.i
  %num_tokens.1.ph.i = phi i32 [ %inc159.i, %if.end167.i ], [ %inc202.i, %if.end210.i ]
  %s.8.ph.i = phi i8* [ %incdec.ptr158.i, %if.end167.i ], [ %s.7.lcssa.i, %if.end210.i ]
  br label %while.cond220.i

while.cond220.i:                                  ; preds = %while.cond220.i, %while.cond220.preheader.i
  %s.8.i = phi i8* [ %incdec.ptr227.i, %while.cond220.i ], [ %s.8.ph.i, %while.cond220.preheader.i ]
  %80 = load i8* %s.8.i, align 1, !tbaa !1
  %idxprom221.i = zext i8 %80 to i64
  %arrayidx222.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom221.i
  %81 = load i8* %arrayidx222.i, align 1, !tbaa !1
  %and224.i = and i8 %81, 1
  %tobool225.i = icmp eq i8 %and224.i, 0
  %incdec.ptr227.i = getelementptr inbounds i8* %s.8.i, i64 1
  br i1 %tobool225.i, label %while.end228.i, label %while.cond220.i

while.end228.i:                                   ; preds = %while.cond220.i
  %cmp229.i = icmp eq i8* %s.8.i, %end
  br i1 %cmp229.i, label %PREMATURE.i, label %while.cond36.backedge.i

while.cond36.backedge.i:                          ; preds = %if.end242.i, %while.end228.i
  %82 = phi i8 [ %81, %while.end228.i ], [ %.pre492.i, %if.end242.i ]
  %num_tokens.0.be.i = phi i32 [ %num_tokens.1.ph.i, %while.end228.i ], [ %inc234.i, %if.end242.i ]
  %s.2.be.i = phi i8* [ %s.8.i, %while.end228.i ], [ %s.4.i, %if.end242.i ]
  %conv39.i = zext i8 %82 to i32
  %and41.i = and i32 %conv39.i, %attr_name_first.0.i
  %tobool42.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.i, label %while.end252.i, label %while.cond45.preheader.i

if.else233.i:                                     ; preds = %if.end92.i
  %inc234.i = add nsw i32 %num_tokens.0476.i, 2
  %83 = load i32* %token_lim.i, align 4, !tbaa !3
  %cmp235.i = icmp eq i32 %inc234.i, %83
  br i1 %cmp235.i, label %if.then237.i, label %if.end242.i

if.then237.i:                                     ; preds = %if.else233.i
  %84 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp239.i = icmp ne %struct.token_pos* %84, %arraydecay.i
  %conv241.i = zext i1 %cmp239.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i, i32* %token_lim.i, i8 signext %conv241.i) #6
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then237.i, %if.else233.i
  %idxprom244.i = sext i32 %inc63.i to i64
  %85 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %beg246.i = getelementptr inbounds %struct.token_pos* %85, i64 %idxprom244.i, i32 0
  store i8* null, i8** %beg246.i, align 8, !tbaa !0
  %86 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %end250.i = getelementptr inbounds %struct.token_pos* %86, i64 %idxprom244.i, i32 1
  store i8* null, i8** %end250.i, align 8, !tbaa !0
  %.pre491.i = load i8* %s.4.i, align 1, !tbaa !1
  %idxprom37.phi.trans.insert.i = zext i8 %.pre491.i to i64
  %arrayidx38.phi.trans.insert.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom37.phi.trans.insert.i
  %.pre492.i = load i8* %arrayidx38.phi.trans.insert.i, align 1, !tbaa !1
  br label %while.cond36.backedge.i

while.end252.i:                                   ; preds = %while.cond36.backedge.i, %if.end123.i, %while.cond36.preheader.i
  %num_tokens.2.i = phi i32 [ %inc115.i, %if.end123.i ], [ 1, %while.cond36.preheader.i ], [ %num_tokens.0.be.i, %while.cond36.backedge.i ]
  %s.9.i = phi i8* [ %s.5.i, %if.end123.i ], [ %s.1.i, %while.cond36.preheader.i ], [ %s.2.be.i, %while.cond36.backedge.i ]
  %87 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool255.i = icmp eq i8 %87, 0
  br i1 %tobool255.i, label %if.end266.i, label %land.lhs.true256.i

land.lhs.true256.i:                               ; preds = %while.end252.i
  %88 = load i8* %s.9.i, align 1, !tbaa !1
  %cmp258.i = icmp eq i8 %88, 47
  br i1 %cmp258.i, label %if.then260.i, label %if.end266.i

if.then260.i:                                     ; preds = %land.lhs.true256.i
  %incdec.ptr261.i = getelementptr inbounds i8* %s.9.i, i64 1
  %cmp262.i = icmp eq i8* %incdec.ptr261.i, %end
  br i1 %cmp262.i, label %PREMATURE.i, label %if.end266.i

if.end266.i:                                      ; preds = %if.then260.i, %while.end252.i, %land.lhs.true256.i
  %empty_tag.0.i = phi i32 [ 0, %land.lhs.true256.i ], [ 0, %while.end252.i ], [ 1, %if.then260.i ]
  %s.10.i = phi i8* [ %s.9.i, %land.lhs.true256.i ], [ %s.9.i, %while.end252.i ], [ %incdec.ptr261.i, %if.then260.i ]
  %89 = load i8* %s.10.i, align 1, !tbaa !1
  %cmp268.i = icmp eq i8 %89, 62
  br i1 %cmp268.i, label %if.then270.i, label %if.end335.i

if.then270.i:                                     ; preds = %if.end266.i
  %incdec.ptr271.i = getelementptr inbounds i8* %s.10.i, i64 1
  %90 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 2, i8* %t.4, i8* %incdec.ptr271.i, i32 %utf8, %struct.token_pos* %90, i32 %num_tokens.2.i, %struct.sv* %self) #6
  %tobool272.i = icmp eq i32 %empty_tag.0.i, 0
  br i1 %tobool272.i, label %if.end274.i, label %if.then273.i

if.then273.i:                                     ; preds = %if.then270.i
  %91 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 3, i8* %incdec.ptr271.i, i8* %incdec.ptr271.i, i32 %utf8, %struct.token_pos* %91, i32 1, %struct.sv* %self) #6
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.then273.i, %if.then270.i
  %92 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool276.i = icmp eq i8 %92, 0
  %93 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  br i1 %tobool276.i, label %for.body.lr.ph.i, label %if.end329.i

for.body.lr.ph.i:                                 ; preds = %if.end274.i
  %end279.i = getelementptr inbounds %struct.token_pos* %93, i64 0, i32 1
  %94 = load i8** %end279.i, align 8, !tbaa !0
  %beg281.i = getelementptr inbounds %struct.token_pos* %93, i64 0, i32 0
  %95 = load i8** %beg281.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %95 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv282.i = trunc i64 %sub.ptr.sub.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %96 = phi i32 [ 6, %for.body.lr.ph.i ], [ %102, %for.inc.i ]
  %cmp289.i = icmp eq i32 %conv282.i, %96
  br i1 %cmp289.i, label %if.then291.i, label %for.inc.i

if.then291.i:                                     ; preds = %for.body.i
  %str.i = getelementptr inbounds [7 x %struct.literal_tag]* bitcast (<{ { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] } }>* @literal_mode_elem to [7 x %struct.literal_tag]*), i64 0, i64 %indvars.iv.i, i32 1
  %97 = load i8** %str.i, align 8, !tbaa !0
  br label %while.cond297.i

while.cond297.i:                                  ; preds = %if.end313.i, %if.then291.i
  %s292.0.i = phi i8* [ %add.ptr15.i, %if.then291.i ], [ %incdec.ptr314.i, %if.end313.i ]
  %t.0.i = phi i8* [ %97, %if.then291.i ], [ %incdec.ptr315.i, %if.end313.i ]
  %len296.0.i = phi i32 [ %conv282.i, %if.then291.i ], [ %dec.i, %if.end313.i ]
  %tobool298.i = icmp eq i32 %len296.0.i, 0
  br i1 %tobool298.i, label %for.inc.i, label %while.body299.i

while.body299.i:                                  ; preds = %while.cond297.i
  %98 = load i8* %s292.0.i, align 1, !tbaa !1
  %conv300.i = sext i8 %98 to i32
  %.off.i = add i8 %98, -65
  %99 = icmp ult i8 %.off.i, 26
  %add.i = add nsw i32 %conv300.i, 32
  %add.conv300.i = select i1 %99, i32 %add.i, i32 %conv300.i
  %100 = load i8* %t.0.i, align 1, !tbaa !1
  %conv309.i = sext i8 %100 to i32
  %cmp310.i = icmp eq i32 %add.conv300.i, %conv309.i
  br i1 %cmp310.i, label %if.end313.i, label %for.inc.i

if.end313.i:                                      ; preds = %while.body299.i
  %incdec.ptr314.i = getelementptr inbounds i8* %s292.0.i, i64 1
  %incdec.ptr315.i = getelementptr inbounds i8* %t.0.i, i64 1
  %dec.i = add nsw i32 %len296.0.i, -1
  %tobool316.i = icmp eq i32 %dec.i, 0
  br i1 %tobool316.i, label %if.then317.i, label %while.cond297.i

if.then317.i:                                     ; preds = %if.end313.i
  store i8* %97, i8** %literal_mode, align 8, !tbaa !0
  %is_cdata.i = getelementptr inbounds [7 x %struct.literal_tag]* bitcast (<{ { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] } }>* @literal_mode_elem to [7 x %struct.literal_tag]*), i64 0, i64 %indvars.iv.i, i32 2
  %101 = load i32* %is_cdata.i, align 8, !tbaa !3
  %conv323.i = trunc i32 %101 to i8
  store i8 %conv323.i, i8* %is_cdata324.i, align 1, !tbaa !1
  br label %if.end329.i

for.inc.i:                                        ; preds = %while.body299.i, %while.cond297.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %len.i = getelementptr inbounds [7 x %struct.literal_tag]* bitcast (<{ { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] }, { i32, i8*, i32, [4 x i8] } }>* @literal_mode_elem to [7 x %struct.literal_tag]*), i64 0, i64 %indvars.iv.next.i, i32 0
  %102 = load i32* %len.i, align 8, !tbaa !3
  %tobool285.i = icmp eq i32 %102, 0
  br i1 %tobool285.i, label %if.end329.i, label %for.body.i

if.end329.i:                                      ; preds = %for.inc.i, %if.then317.i, %if.end274.i
  %cmp331.i = icmp eq %struct.token_pos* %93, %arraydecay.i
  br i1 %cmp331.i, label %if.then303, label %if.then333.i

if.then333.i:                                     ; preds = %if.end329.i
  %103 = bitcast %struct.token_pos* %93 to i8*
  call void @Perl_safesysfree(i8* %103) #6
  br label %if.then303

if.end335.i:                                      ; preds = %if.end266.i
  %104 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp337.i = icmp eq %struct.token_pos* %104, %arraydecay.i
  br i1 %cmp337.i, label %while.cond.backedge, label %if.then339.i

if.then339.i:                                     ; preds = %if.end335.i
  %105 = bitcast %struct.token_pos* %104 to i8*
  call void @Perl_safesysfree(i8* %105) #6
  br label %while.cond.backedge

PREMATURE.i:                                      ; preds = %while.end228.i, %while.end197.i, %while.end153.i, %while.end106.i, %while.end88.i, %while.end58.i, %if.then260.i, %while.end31.i
  %106 = load %struct.token_pos** %tokens.i, align 8, !tbaa !0
  %cmp342.i = icmp eq %struct.token_pos* %106, %arraydecay.i
  br i1 %cmp342.i, label %if.end301, label %if.then344.i

if.then344.i:                                     ; preds = %PREMATURE.i
  %107 = bitcast %struct.token_pos* %106 to i8*
  call void @Perl_safesysfree(i8* %107) #6
  br label %if.end301

if.else279:                                       ; preds = %if.end270
  switch i8 %47, label %while.cond.backedge [
    i8 47, label %if.then283
    i8 33, label %if.then289
    i8 63, label %if.then295
  ]

if.then283:                                       ; preds = %if.else279
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %add.ptr.i479 = getelementptr inbounds i8* %t.4, i64 2
  %108 = load i8* %strict_names.i480, align 1, !tbaa !1
  %tobool.i481 = icmp eq i8 %108, 0
  br i1 %tobool.i481, label %lor.lhs.false.i485, label %if.end.i489

lor.lhs.false.i485:                               ; preds = %if.then283
  %109 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool2.i483 = icmp eq i8 %109, 0
  %..i484 = select i1 %tobool2.i483, i32 8, i32 2
  %.89.i = select i1 %tobool2.i483, i32 8, i32 4
  br label %if.end.i489

if.end.i489:                                      ; preds = %lor.lhs.false.i485, %if.then283
  %name_first.0.i = phi i32 [ 2, %if.then283 ], [ %..i484, %lor.lhs.false.i485 ]
  %name_char.0.i = phi i32 [ 4, %if.then283 ], [ %.89.i, %lor.lhs.false.i485 ]
  %110 = load i8* %add.ptr.i479, align 1, !tbaa !1
  %idxprom.i486 = zext i8 %110 to i64
  %arrayidx.i487 = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom.i486
  %111 = load i8* %arrayidx.i487, align 1, !tbaa !1
  %conv3.i = zext i8 %111 to i32
  %and.i488 = and i32 %conv3.i, %name_first.0.i
  %tobool5.i = icmp eq i32 %and.i488, 0
  br i1 %tobool5.i, label %if.else41.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i489
  store i8* %add.ptr.i479, i8** %beg7.i, align 8, !tbaa !0
  %incdec.ptr.i490 = getelementptr inbounds i8* %t.4, i64 3
  %cmp90.i = icmp ult i8* %incdec.ptr.i490, %end
  br i1 %cmp90.i, label %land.rhs.i493, label %while.end.i

while.cond.i492:                                  ; preds = %land.rhs.i493
  %cmp.i491 = icmp ult i8* %incdec.ptr15.i, %end
  br i1 %cmp.i491, label %land.rhs.i493, label %while.end.i

land.rhs.i493:                                    ; preds = %if.then6.i, %while.cond.i492
  %s.091.i = phi i8* [ %incdec.ptr15.i, %while.cond.i492 ], [ %incdec.ptr.i490, %if.then6.i ]
  %112 = load i8* %s.091.i, align 1, !tbaa !1
  %idxprom9.i = zext i8 %112 to i64
  %arrayidx10.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom9.i
  %113 = load i8* %arrayidx10.i, align 1, !tbaa !1
  %conv11.i = zext i8 %113 to i32
  %and13.i = and i32 %conv11.i, %name_char.0.i
  %tobool14.i = icmp eq i32 %and13.i, 0
  %incdec.ptr15.i = getelementptr inbounds i8* %s.091.i, i64 1
  br i1 %tobool14.i, label %while.end.i, label %while.cond.i492

while.end.i:                                      ; preds = %land.rhs.i493, %while.cond.i492, %if.then6.i
  %s.0.lcssa.i494 = phi i8* [ %incdec.ptr.i490, %if.then6.i ], [ %s.091.i, %land.rhs.i493 ], [ %incdec.ptr15.i, %while.cond.i492 ]
  store i8* %s.0.lcssa.i494, i8** %end16.i, align 8, !tbaa !0
  %114 = load i8* %strict_end.i, align 1, !tbaa !1
  %tobool17.i = icmp eq i8 %114, 0
  br i1 %tobool17.i, label %if.else28.i, label %while.cond19.i

while.cond19.i:                                   ; preds = %while.end.i, %while.cond19.i
  %s.1.i495 = phi i8* [ %incdec.ptr26.i, %while.cond19.i ], [ %s.0.lcssa.i494, %while.end.i ]
  %115 = load i8* %s.1.i495, align 1, !tbaa !1
  %idxprom20.i = zext i8 %115 to i64
  %arrayidx21.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom20.i
  %116 = load i8* %arrayidx21.i, align 1, !tbaa !1
  %and23.i = and i8 %116, 1
  %tobool24.i = icmp eq i8 %and23.i, 0
  %incdec.ptr26.i = getelementptr inbounds i8* %s.1.i495, i64 1
  br i1 %tobool24.i, label %if.end29.i, label %while.cond19.i

if.else28.i:                                      ; preds = %while.end.i
  %call.i = call fastcc i8* @skip_until_gt(i8* %s.0.lcssa.i494, i8* %end) #6
  br label %if.end29.i

if.end29.i:                                       ; preds = %while.cond19.i, %if.else28.i
  %s.2.i = phi i8* [ %call.i, %if.else28.i ], [ %s.1.i495, %while.cond19.i ]
  %cmp30.i = icmp ult i8* %s.2.i, %end
  br i1 %cmp30.i, label %if.then32.i, label %if.end301

if.then32.i:                                      ; preds = %if.end29.i
  %117 = load i8* %s.2.i, align 1, !tbaa !1
  %cmp34.i = icmp eq i8 %117, 62
  br i1 %cmp34.i, label %if.then36.i, label %while.cond.backedge

if.then36.i:                                      ; preds = %if.then32.i
  %incdec.ptr37.i = getelementptr inbounds i8* %s.2.i, i64 1
  call fastcc void @report_event(%struct.p_state* %p_state, i32 3, i8* %t.4, i8* %incdec.ptr37.i, i32 %utf8, %struct.token_pos* %tagname.i, i32 1, %struct.sv* %self) #6
  br label %if.then303

if.else41.i:                                      ; preds = %if.end.i489
  %118 = load i8* %strict_comment.i, align 1, !tbaa !1
  %tobool42.i496 = icmp eq i8 %118, 0
  br i1 %tobool42.i496, label %if.then43.i, label %while.cond.backedge

if.then43.i:                                      ; preds = %if.else41.i
  %call44.i = call fastcc i8* @skip_until_gt(i8* %add.ptr.i479, i8* %end) #6
  %cmp45.i = icmp ult i8* %call44.i, %end
  br i1 %cmp45.i, label %if.then47.i, label %if.end301

if.then47.i:                                      ; preds = %if.then43.i
  store i8* %add.ptr.i479, i8** %beg49.i, align 8, !tbaa !0
  store i8* %call44.i, i8** %end50.i, align 8, !tbaa !0
  %incdec.ptr51.i = getelementptr inbounds i8* %call44.i, i64 1
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr51.i, i32 %utf8, %struct.token_pos* %token.i, i32 1, %struct.sv* %self) #6
  br label %if.then303

if.then289:                                       ; preds = %if.else279
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %add.ptr.i502 = getelementptr inbounds i8* %t.4, i64 2
  %119 = load i8* %add.ptr.i502, align 1, !tbaa !1
  switch i8 %119, label %if.end39.i [
    i8 45, label %if.then.i
    i8 91, label %if.then17.i
    i8 62, label %if.then303.thread
  ]

if.then.i:                                        ; preds = %if.then289
  %incdec.ptr.i503 = getelementptr inbounds i8* %t.4, i64 3
  %cmp2.i = icmp eq i8* %incdec.ptr.i503, %end
  br i1 %cmp2.i, label %if.end301, label %if.end.i504

if.end.i504:                                      ; preds = %if.then.i
  %120 = load i8* %incdec.ptr.i503, align 1, !tbaa !1
  %cmp6.i = icmp eq i8 %120, 45
  br i1 %cmp6.i, label %if.end9.i, label %DECL_FAIL.i

if.end9.i:                                        ; preds = %if.end.i504
  %incdec.ptr10.i = getelementptr inbounds i8* %t.4, i64 4
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  call void @llvm.lifetime.start(i64 16, i8* %10) #2
  call void @llvm.lifetime.start(i64 16, i8* %11) #2
  %121 = load i8* %strict_comment.i, align 1, !tbaa !1
  %tobool.i.i = icmp eq i8 %121, 0
  br i1 %tobool.i.i, label %if.else63.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.start(i64 64, i8* %12) #2
  store i32 4, i32* %token_lim.i.i, align 4, !tbaa !3
  store %struct.token_pos* %arraydecay.i.i, %struct.token_pos** %tokens.i.i, align 8, !tbaa !0
  br label %while.cond1.outer.i.i

while.cond1.outer.i.i:                            ; preds = %if.end54.i.i, %if.then.i.i
  %122 = phi %struct.token_pos* [ %132, %if.end54.i.i ], [ %arraydecay.i.i, %if.then.i.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %if.end54.i.i ], [ 0, %if.then.i.i ]
  %s.0.ph.i.i = phi i8* [ %incdec.ptr44.i.i, %if.end54.i.i ], [ %incdec.ptr10.i, %if.then.i.i ]
  %num_tokens.0.ph.i.i = phi i32 [ %inc.i.i, %if.end54.i.i ], [ 0, %if.then.i.i ]
  %start_com.0.ph.i.i = phi i8* [ null, %if.end54.i.i ], [ %incdec.ptr10.i, %if.then.i.i ]
  br label %while.cond1.outer215.i.i

while.cond1.outer215.i.i:                         ; preds = %if.then43.i.i, %while.cond1.outer.i.i
  %s.0.ph216.i.i = phi i8* [ %incdec.ptr44.i.i, %if.then43.i.i ], [ %s.0.ph.i.i, %while.cond1.outer.i.i ]
  %start_com.0.ph217.i.i = phi i8* [ %incdec.ptr44.i.i, %if.then43.i.i ], [ %start_com.0.ph.i.i, %while.cond1.outer.i.i ]
  %tobool21.i.i = icmp eq i8* %start_com.0.ph217.i.i, null
  br label %while.cond1.i.i

while.cond1.i.i:                                  ; preds = %if.end39.i.i, %if.then19.i.i, %while.body7.i.i, %while.cond1.outer215.i.i
  %s.0.i.i = phi i8* [ %s.0.ph216.i.i, %while.cond1.outer215.i.i ], [ %incdec.ptr.i.i, %while.body7.i.i ], [ %incdec.ptr20.i.i, %if.then19.i.i ], [ %incdec.ptr20.i.i, %if.end39.i.i ]
  %cmp.i.i = icmp ult i8* %s.0.i.i, %end
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.end.i.i

land.lhs.true.i.i:                                ; preds = %while.cond1.i.i
  %123 = load i8* %s.0.i.i, align 1, !tbaa !1
  switch i8 %123, label %while.body7.i.i [
    i8 62, label %while.end.i.i
    i8 45, label %while.end.i.i
  ]

while.body7.i.i:                                  ; preds = %land.lhs.true.i.i
  %incdec.ptr.i.i = getelementptr inbounds i8* %s.0.i.i, i64 1
  br label %while.cond1.i.i

while.end.i.i:                                    ; preds = %land.lhs.true.i.i, %land.lhs.true.i.i, %while.cond1.i.i
  %cmp8.i.i = icmp eq i8* %s.0.i.i, %end
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end15.i.i

if.then10.i.i:                                    ; preds = %while.end.i.i
  %cmp12.i.i = icmp eq %struct.token_pos* %122, %arraydecay.i.i
  br i1 %cmp12.i.i, label %parse_comment.exit.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.then10.i.i
  %124 = bitcast %struct.token_pos* %122 to i8*
  call void @Perl_safesysfree(i8* %124) #6
  br label %parse_comment.exit.i

if.end15.i.i:                                     ; preds = %while.end.i.i
  %125 = load i8* %s.0.i.i, align 1, !tbaa !1
  %cmp17.i.i = icmp eq i8 %125, 62
  %incdec.ptr20.i.i = getelementptr inbounds i8* %s.0.i.i, i64 1
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.end29.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  br i1 %tobool21.i.i, label %if.end23.i.i, label %while.cond1.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr20.i.i, i32 %utf8, %struct.token_pos* %122, i32 %num_tokens.0.ph.i.i, %struct.sv* %self) #6
  %cmp25.i.i = icmp eq %struct.token_pos* %122, %arraydecay.i.i
  br i1 %cmp25.i.i, label %parse_comment.exit.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  %126 = bitcast %struct.token_pos* %122 to i8*
  call void @Perl_safesysfree(i8* %126) #6
  br label %parse_comment.exit.i

if.end29.i.i:                                     ; preds = %if.end15.i.i
  %cmp31.i.i = icmp eq i8* %incdec.ptr20.i.i, %end
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.end39.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  %cmp35.i.i = icmp eq %struct.token_pos* %122, %arraydecay.i.i
  br i1 %cmp35.i.i, label %parse_comment.exit.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.then33.i.i
  %127 = bitcast %struct.token_pos* %122 to i8*
  call void @Perl_safesysfree(i8* %127) #6
  br label %parse_comment.exit.i

if.end39.i.i:                                     ; preds = %if.end29.i.i
  %128 = load i8* %incdec.ptr20.i.i, align 1, !tbaa !1
  %cmp41.i.i = icmp eq i8 %128, 45
  br i1 %cmp41.i.i, label %if.then43.i.i, label %while.cond1.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  %incdec.ptr44.i.i = getelementptr inbounds i8* %s.0.i.i, i64 2
  br i1 %tobool21.i.i, label %while.cond1.outer215.i.i, label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.then43.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %inc.i.i = add nsw i32 %num_tokens.0.ph.i.i, 1
  %129 = load i32* %token_lim.i.i, align 4, !tbaa !3
  %130 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp47.i.i = icmp eq i32 %130, %129
  br i1 %cmp47.i.i, label %if.then49.i.i, label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.then46.i.i
  %cmp51.i.i = icmp ne %struct.token_pos* %122, %arraydecay.i.i
  %conv53.i.i = zext i1 %cmp51.i.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i.i, i32* %token_lim.i.i, i8 signext %conv53.i.i) #6
  %.pre.i.i = load %struct.token_pos** %tokens.i.i, align 8, !tbaa !0
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %if.then46.i.i
  %131 = phi %struct.token_pos* [ %.pre.i.i, %if.then49.i.i ], [ %122, %if.then46.i.i ]
  %beg55.i.i = getelementptr inbounds %struct.token_pos* %131, i64 %indvars.iv.i.i, i32 0
  store i8* %start_com.0.ph217.i.i, i8** %beg55.i.i, align 8, !tbaa !0
  %132 = load %struct.token_pos** %tokens.i.i, align 8, !tbaa !0
  %end60.i.i = getelementptr inbounds %struct.token_pos* %132, i64 %indvars.iv.i.i, i32 1
  store i8* %s.0.i.i, i8** %end60.i.i, align 8, !tbaa !0
  br label %while.cond1.outer.i.i

if.else63.i.i:                                    ; preds = %if.end9.i
  %133 = load i8* %no_dash_dash_comment_end.i.i, align 1, !tbaa !1
  %tobool64.i.i = icmp eq i8 %133, 0
  br i1 %tobool64.i.i, label %if.else85.i.i, label %if.then65.i.i

if.then65.i.i:                                    ; preds = %if.else63.i.i
  store i8* %incdec.ptr10.i, i8** %beg66.i.i, align 8, !tbaa !0
  %cmp68212.i.i = icmp ult i8* %incdec.ptr10.i, %end
  br i1 %cmp68212.i.i, label %land.rhs70.i.i, label %if.else84.critedge.i.i

while.cond67.i.i:                                 ; preds = %land.rhs70.i.i
  %cmp68.i.i = icmp ult i8* %incdec.ptr76.i.i, %end
  br i1 %cmp68.i.i, label %land.rhs70.i.i, label %if.else84.critedge.i.i

land.rhs70.i.i:                                   ; preds = %if.then65.i.i, %while.cond67.i.i
  %s.1213.i.i = phi i8* [ %incdec.ptr76.i.i, %while.cond67.i.i ], [ %incdec.ptr10.i, %if.then65.i.i ]
  %134 = load i8* %s.1213.i.i, align 1, !tbaa !1
  %cmp72.i.i = icmp eq i8 %134, 62
  %incdec.ptr76.i.i = getelementptr inbounds i8* %s.1213.i.i, i64 1
  br i1 %cmp72.i.i, label %if.then81.i.i, label %while.cond67.i.i

if.then81.i.i:                                    ; preds = %land.rhs70.i.i
  store i8* %s.1213.i.i, i8** %end78.c.i.i, align 8, !tbaa !0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr76.i.i, i32 %utf8, %struct.token_pos* %token.i.i, i32 1, %struct.sv* %self) #6
  br label %parse_comment.exit.i

if.else84.critedge.i.i:                           ; preds = %while.cond67.i.i, %if.then65.i.i
  %s.1.lcssa.i.i = phi i8* [ %incdec.ptr10.i, %if.then65.i.i ], [ %incdec.ptr76.i.i, %while.cond67.i.i ]
  store i8* %s.1.lcssa.i.i, i8** %end78.c.i.i, align 8, !tbaa !0
  br label %parse_comment.exit.i

if.else85.i.i:                                    ; preds = %if.else63.i.i
  store i8* %incdec.ptr10.i, i8** %beg87.i.i, align 8, !tbaa !0
  %cmp89209.i.i = icmp ult i8* %incdec.ptr10.i, %end
  br i1 %cmp89209.i.i, label %land.rhs91.i.i, label %while.end98.thread205.i.i

while.end98.thread205.i.i:                        ; preds = %while.cond88.backedge.i.i, %if.else85.i.i
  %s.2.lcssa.i.i = phi i8* [ %incdec.ptr10.i, %if.else85.i.i ], [ %s.2.be.pre-phi.i.i, %while.cond88.backedge.i.i ]
  store i8* %s.2.lcssa.i.i, i8** %end99203.i.i, align 8, !tbaa !0
  br label %if.end131.i.i

land.rhs91.i.i:                                   ; preds = %while.cond88.backedge.i.i, %if.else85.i.i
  %135 = phi i8* [ %incdec.ptr10.i, %if.else85.i.i ], [ %s.2.be.pre-phi.i.i, %while.cond88.backedge.i.i ]
  %136 = load i8* %135, align 1, !tbaa !1
  %cmp93.i.i = icmp eq i8 %136, 45
  br i1 %cmp93.i.i, label %if.then102.i.i, label %while.body96.i.i

while.body96.i.i:                                 ; preds = %land.rhs91.i.i
  %s.2.be.pre.i.i = getelementptr inbounds i8* %135, i64 1
  br label %while.cond88.backedge.i.i

while.cond88.backedge.i.i:                        ; preds = %if.end124.i.i, %while.body96.i.i
  %s.2.be.pre-phi.i.i = phi i8* [ %s.2.be.pre.i.i, %while.body96.i.i ], [ %incdec.ptr103.i.i, %if.end124.i.i ]
  %cmp89.i.i = icmp ult i8* %s.2.be.pre-phi.i.i, %end
  br i1 %cmp89.i.i, label %land.rhs91.i.i, label %while.end98.thread205.i.i

if.then102.i.i:                                   ; preds = %land.rhs91.i.i
  store i8* %135, i8** %end99203.i.i, align 8, !tbaa !0
  %incdec.ptr103.i.i = getelementptr inbounds i8* %135, i64 1
  %137 = load i8* %incdec.ptr103.i.i, align 1, !tbaa !1
  %cmp105.i.i = icmp eq i8 %137, 45
  br i1 %cmp105.i.i, label %if.then107.i.i, label %if.end124.i.i

if.then107.i.i:                                   ; preds = %if.then102.i.i
  %incdec.ptr108.i.i = getelementptr inbounds i8* %135, i64 2
  br label %while.cond109.i.i

while.cond109.i.i:                                ; preds = %while.cond109.i.i, %if.then107.i.i
  %s.3.i.i = phi i8* [ %incdec.ptr108.i.i, %if.then107.i.i ], [ %incdec.ptr115.i.i, %while.cond109.i.i ]
  %138 = load i8* %s.3.i.i, align 1, !tbaa !1
  %idxprom110.i.i = zext i8 %138 to i64
  %arrayidx111.i.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom110.i.i
  %139 = load i8* %arrayidx111.i.i, align 1, !tbaa !1
  %and.i.i = and i8 %139, 1
  %tobool113.i.i = icmp eq i8 %and.i.i, 0
  %incdec.ptr115.i.i = getelementptr inbounds i8* %s.3.i.i, i64 1
  br i1 %tobool113.i.i, label %while.end116.i.i, label %while.cond109.i.i

while.end116.i.i:                                 ; preds = %while.cond109.i.i
  %cmp118.i.i = icmp eq i8 %138, 62
  br i1 %cmp118.i.i, label %if.then120.i.i, label %if.end124.i.i

if.then120.i.i:                                   ; preds = %while.end116.i.i
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr115.i.i, i32 %utf8, %struct.token_pos* %token86.i.i, i32 1, %struct.sv* %self) #6
  br label %parse_comment.exit.i

if.end124.i.i:                                    ; preds = %while.end116.i.i, %if.then102.i.i
  %s.4.i.i = phi i8* [ %s.3.i.i, %while.end116.i.i ], [ %incdec.ptr103.i.i, %if.then102.i.i ]
  %cmp125.i.i = icmp ult i8* %s.4.i.i, %end
  br i1 %cmp125.i.i, label %while.cond88.backedge.i.i, label %if.end131.i.i

if.end131.i.i:                                    ; preds = %if.end124.i.i, %while.end98.thread205.i.i
  %s.5.i.i = phi i8* [ %s.2.lcssa.i.i, %while.end98.thread205.i.i ], [ %s.4.i.i, %if.end124.i.i ]
  %cmp132.i.i = icmp eq i8* %s.5.i.i, %end
  %beg..i.i = select i1 %cmp132.i.i, i8* %incdec.ptr10.i, i8* null
  br label %parse_comment.exit.i

parse_comment.exit.i:                             ; preds = %if.end131.i.i, %if.then120.i.i, %if.else84.critedge.i.i, %if.then81.i.i, %if.then37.i.i, %if.then33.i.i, %if.then27.i.i, %if.end23.i.i, %if.then14.i.i, %if.then10.i.i
  %retval.1.i.i = phi i8* [ %incdec.ptr76.i.i, %if.then81.i.i ], [ %incdec.ptr115.i.i, %if.then120.i.i ], [ %incdec.ptr10.i, %if.then10.i.i ], [ %incdec.ptr10.i, %if.then14.i.i ], [ %incdec.ptr20.i.i, %if.end23.i.i ], [ %incdec.ptr20.i.i, %if.then27.i.i ], [ %incdec.ptr10.i, %if.then33.i.i ], [ %incdec.ptr10.i, %if.then37.i.i ], [ %incdec.ptr10.i, %if.else84.critedge.i.i ], [ %beg..i.i, %if.end131.i.i ]
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  call void @llvm.lifetime.end(i64 16, i8* %10) #2
  call void @llvm.lifetime.end(i64 16, i8* %11) #2
  %cmp11.i = icmp eq i8* %retval.1.i.i, %incdec.ptr10.i
  %cond.i = select i1 %cmp11.i, i8* %t.4, i8* %retval.1.i.i
  br label %if.end301

if.then17.i:                                      ; preds = %if.then289
  %incdec.ptr20.i = getelementptr inbounds i8* %t.4, i64 3
  %140 = load i8* %marked_sections.i.i, align 1, !tbaa !1
  %tobool.i456.i = icmp eq i8 %140, 0
  br i1 %tobool.i456.i, label %DECL_FAIL.i, label %while.cond.outer.i.i

while.cond.outer.i.i:                             ; preds = %if.then17.i, %if.then69.i.i
  %tokens.0.ph.i.i = phi %struct.av* [ %tokens.1.lcssa.i.i, %if.then69.i.i ], [ null, %if.then17.i ]
  %s.0.ph.i457.i = phi i8* [ %incdec.ptr70.i.i, %if.then69.i.i ], [ %incdec.ptr20.i, %if.then17.i ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %while.cond.outer.i.i
  %s.0.i458.i = phi i8* [ %incdec.ptr.i460.i, %while.cond.i.i ], [ %s.0.ph.i457.i, %while.cond.outer.i.i ]
  %141 = load i8* %s.0.i458.i, align 1, !tbaa !1
  %idxprom.i.i = zext i8 %141 to i64
  %arrayidx.i.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom.i.i
  %142 = load i8* %arrayidx.i.i, align 1, !tbaa !1
  %and.i459.i = and i8 %142, 1
  %tobool1.i.i = icmp eq i8 %and.i459.i, 0
  %incdec.ptr.i460.i = getelementptr inbounds i8* %s.0.i458.i, i64 1
  br i1 %tobool1.i.i, label %while.cond2.preheader.i.i, label %while.cond.i.i

while.cond2.preheader.i.i:                        ; preds = %while.cond.i.i
  %and6135.i.i = and i8 %142, 2
  %tobool7136.i.i = icmp eq i8 %and6135.i.i, 0
  br i1 %tobool7136.i.i, label %while.end39.i.i, label %while.cond10.preheader.i.i

while.cond10.preheader.i.i:                       ; preds = %while.cond2.preheader.i.i, %if.end37.i.i
  %s.1138.i.i = phi i8* [ %s.3.i461.lcssa.i, %if.end37.i.i ], [ %s.0.i458.i, %while.cond2.preheader.i.i ]
  %tokens.1137.i.i = phi %struct.av* [ %tokens.2.i.i, %if.end37.i.i ], [ %tokens.0.ph.i.i, %while.cond2.preheader.i.i ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i, %while.cond10.preheader.i.i
  %s.1.pn.i.i = phi i8* [ %s.2.i.i, %while.cond10.i.i ], [ %s.1138.i.i, %while.cond10.preheader.i.i ]
  %s.2.i.i = getelementptr inbounds i8* %s.1.pn.i.i, i64 1
  %143 = load i8* %s.2.i.i, align 1, !tbaa !1
  %idxprom11.i.i = zext i8 %143 to i64
  %arrayidx12.i.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom11.i.i
  %144 = load i8* %arrayidx12.i.i, align 1, !tbaa !1
  %and14.i.i = and i8 %144, 4
  %tobool15.i.i = icmp eq i8 %and14.i.i, 0
  br i1 %tobool15.i.i, label %while.cond19.i.loopexit.i, label %while.cond10.i.i

while.cond19.i.loopexit.i:                        ; preds = %while.cond10.i.i
  %and23.i506.i = and i8 %144, 1
  %tobool24.i507.i = icmp eq i8 %and23.i506.i, 0
  br i1 %tobool24.i507.i, label %while.end27.i.i, label %while.cond19.while.cond19_crit_edge.i.lr.ph.i

while.cond19.while.cond19_crit_edge.i.lr.ph.i:    ; preds = %while.cond19.i.loopexit.i
  %incdec.ptr26.i508.i = getelementptr inbounds i8* %s.1.pn.i.i, i64 2
  br label %while.cond19.while.cond19_crit_edge.i.i

while.cond19.while.cond19_crit_edge.i.i:          ; preds = %while.cond19.while.cond19_crit_edge.i.i, %while.cond19.while.cond19_crit_edge.i.lr.ph.i
  %incdec.ptr26.i509.i = phi i8* [ %incdec.ptr26.i508.i, %while.cond19.while.cond19_crit_edge.i.lr.ph.i ], [ %incdec.ptr26.i.i, %while.cond19.while.cond19_crit_edge.i.i ]
  %.pre.i462.i = load i8* %incdec.ptr26.i509.i, align 1, !tbaa !1
  %idxprom20.phi.trans.insert.i.i = zext i8 %.pre.i462.i to i64
  %arrayidx21.phi.trans.insert.i.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom20.phi.trans.insert.i.i
  %.pre155.i.i = load i8* %arrayidx21.phi.trans.insert.i.i, align 1, !tbaa !1
  %and23.i.i = and i8 %.pre155.i.i, 1
  %tobool24.i.i = icmp eq i8 %and23.i.i, 0
  %incdec.ptr26.i.i = getelementptr inbounds i8* %incdec.ptr26.i509.i, i64 1
  br i1 %tobool24.i.i, label %while.end27.i.i, label %while.cond19.while.cond19_crit_edge.i.i

while.end27.i.i:                                  ; preds = %while.cond19.while.cond19_crit_edge.i.i, %while.cond19.i.loopexit.i
  %s.3.i461.lcssa.i = phi i8* [ %s.2.i.i, %while.cond19.i.loopexit.i ], [ %incdec.ptr26.i509.i, %while.cond19.while.cond19_crit_edge.i.i ]
  %cmp.i463.i = icmp eq i8* %s.3.i461.lcssa.i, %end
  br i1 %cmp.i463.i, label %PREMATURE.i.i, label %if.end30.i.i

if.end30.i.i:                                     ; preds = %while.end27.i.i
  %tobool31.i.i = icmp eq %struct.av* %tokens.1137.i.i, null
  br i1 %tobool31.i.i, label %if.then32.i.i, label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  %call.i.i = call %struct.av* @Perl_newAV() #6
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then32.i.i, %if.end30.i.i
  %tokens.2.i.i = phi %struct.av* [ %tokens.1137.i.i, %if.end30.i.i ], [ %call.i.i, %if.then32.i.i ]
  %sub.ptr.lhs.cast.i.i = ptrtoint i8* %s.2.i.i to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %s.1138.i.i to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call34.i.i = call %struct.sv* @Perl_newSVpvn(i8* %s.1138.i.i, i64 %sub.ptr.sub.i.i) #6
  br i1 %tobool35.i.i, label %if.end37.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.end33.i.i
  %sv_flags.i.i = getelementptr inbounds %struct.sv* %call34.i.i, i64 0, i32 2
  %145 = load i32* %sv_flags.i.i, align 4, !tbaa !3
  %or.i.i = or i32 %145, 536870912
  store i32 %or.i.i, i32* %sv_flags.i.i, align 4, !tbaa !3
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then36.i.i, %if.end33.i.i
  %call38.i.i = call fastcc %struct.sv* @sv_lower(%struct.sv* %call34.i.i) #6
  call void @Perl_av_push(%struct.av* %tokens.2.i.i, %struct.sv* %call38.i.i) #6
  %146 = load i8* %s.3.i461.lcssa.i, align 1, !tbaa !1
  %idxprom3.i.i = zext i8 %146 to i64
  %arrayidx4.i.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom3.i.i
  %147 = load i8* %arrayidx4.i.i, align 1, !tbaa !1
  %and6.i.i = and i8 %147, 2
  %tobool7.i.i = icmp eq i8 %and6.i.i, 0
  br i1 %tobool7.i.i, label %while.end39.i.i, label %while.cond10.preheader.i.i

while.end39.i.i:                                  ; preds = %if.end37.i.i, %while.cond2.preheader.i.i
  %.lcssa.i.i = phi i8 [ %141, %while.cond2.preheader.i.i ], [ %146, %if.end37.i.i ]
  %s.1.lcssa.i464.i = phi i8* [ %s.0.i458.i, %while.cond2.preheader.i.i ], [ %s.3.i461.lcssa.i, %if.end37.i.i ]
  %tokens.1.lcssa.i.i = phi %struct.av* [ %tokens.0.ph.i.i, %while.cond2.preheader.i.i ], [ %tokens.2.i.i, %if.end37.i.i ]
  switch i8 %.lcssa.i.i, label %FAIL.i.i [
    i8 45, label %if.then43.i466.i
    i8 91, label %if.then76.i.i
  ]

if.then43.i466.i:                                 ; preds = %while.end39.i.i
  %incdec.ptr44.i465.i = getelementptr inbounds i8* %s.1.lcssa.i464.i, i64 1
  %148 = load i8* %incdec.ptr44.i465.i, align 1, !tbaa !1
  %cmp46.i.i = icmp eq i8 %148, 45
  br i1 %cmp46.i.i, label %if.then48.i.i, label %FAIL.i.i

if.then48.i.i:                                    ; preds = %if.then43.i466.i
  %incdec.ptr49.i.i = getelementptr inbounds i8* %s.1.lcssa.i464.i, i64 2
  br label %while.cond52.i.i

while.cond52.i.i:                                 ; preds = %if.end64.i.i, %while.body58.i.i, %if.then48.i.i
  %s.4.i467.i = phi i8* [ %incdec.ptr49.i.i, %if.then48.i.i ], [ %incdec.ptr59.i.i, %while.body58.i.i ], [ %incdec.ptr65.i.i, %if.end64.i.i ]
  %cmp53.i.i = icmp ult i8* %s.4.i467.i, %end
  br i1 %cmp53.i.i, label %land.rhs.i.i, label %while.end60.i.i

land.rhs.i.i:                                     ; preds = %while.cond52.i.i
  %149 = load i8* %s.4.i467.i, align 1, !tbaa !1
  %cmp56.i.i = icmp eq i8 %149, 45
  br i1 %cmp56.i.i, label %while.end60.i.i, label %while.body58.i.i

while.body58.i.i:                                 ; preds = %land.rhs.i.i
  %incdec.ptr59.i.i = getelementptr inbounds i8* %s.4.i467.i, i64 1
  br label %while.cond52.i.i

while.end60.i.i:                                  ; preds = %land.rhs.i.i, %while.cond52.i.i
  %cmp61.i.i = icmp eq i8* %s.4.i467.i, %end
  br i1 %cmp61.i.i, label %PREMATURE.i.i, label %if.end64.i.i

if.end64.i.i:                                     ; preds = %while.end60.i.i
  %incdec.ptr65.i.i = getelementptr inbounds i8* %s.4.i467.i, i64 1
  %150 = load i8* %incdec.ptr65.i.i, align 1, !tbaa !1
  %cmp67.i.i = icmp eq i8 %150, 45
  br i1 %cmp67.i.i, label %if.then69.i.i, label %while.cond52.i.i

if.then69.i.i:                                    ; preds = %if.end64.i.i
  %incdec.ptr70.i.i = getelementptr inbounds i8* %s.4.i467.i, i64 2
  br label %while.cond.outer.i.i

if.then76.i.i:                                    ; preds = %while.end39.i.i
  %incdec.ptr77.i.i = getelementptr inbounds i8* %s.1.lcssa.i464.i, i64 1
  %tobool78.i.i = icmp eq %struct.av* %tokens.1.lcssa.i.i, null
  br i1 %tobool78.i.i, label %if.then79.i.i, label %if.end82.i.i

if.then79.i.i:                                    ; preds = %if.then76.i.i
  %call80.i.i = call %struct.av* @Perl_newAV() #6
  %call81.i.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([8 x i8]* @.str97, i64 0, i64 0), i64 7) #6
  call void @Perl_av_push(%struct.av* %call80.i.i, %struct.sv* %call81.i.i) #6
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then79.i.i, %if.then76.i.i
  %tokens.3.i.i = phi %struct.av* [ %tokens.1.lcssa.i.i, %if.then76.i.i ], [ %call80.i.i, %if.then79.i.i ]
  %151 = load %struct.av** %ms_stack, align 8, !tbaa !0
  %tobool83.i.i = icmp eq %struct.av* %151, null
  br i1 %tobool83.i.i, label %if.then84.i.i, label %if.end87.i.i

if.then84.i.i:                                    ; preds = %if.end82.i.i
  %call85.i.i = call %struct.av* @Perl_newAV() #6
  store %struct.av* %call85.i.i, %struct.av** %ms_stack, align 8, !tbaa !0
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.then84.i.i, %if.end82.i.i
  %152 = phi %struct.av* [ %151, %if.end82.i.i ], [ %call85.i.i, %if.then84.i.i ]
  %153 = bitcast %struct.av* %tokens.3.i.i to %struct.sv*
  %call89.i.i = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %153) #6
  call void @Perl_av_push(%struct.av* %152, %struct.sv* %call89.i.i) #6
  call fastcc void @marked_section_update(%struct.p_state* %p_state) #6
  call fastcc void @report_event(%struct.p_state* %p_state, i32 10, i8* %incdec.ptr20.i, i8* %incdec.ptr77.i.i, i32 %utf8, %struct.token_pos* null, i32 0, %struct.sv* %self) #6
  br label %if.end23.i

FAIL.i.i:                                         ; preds = %if.then43.i466.i, %while.end39.i.i
  %154 = bitcast %struct.av* %tokens.1.lcssa.i.i to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %154) #6
  br label %DECL_FAIL.i

PREMATURE.i.i:                                    ; preds = %while.end60.i.i, %while.end27.i.i
  %tokens.1130.i.i = phi %struct.av* [ %tokens.1137.i.i, %while.end27.i.i ], [ %tokens.1.lcssa.i.i, %while.end60.i.i ]
  %155 = bitcast %struct.av* %tokens.1130.i.i to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %155) #6
  br label %if.end23.i

if.end23.i:                                       ; preds = %PREMATURE.i.i, %if.end87.i.i
  %retval.0.i.ph.i = phi i8* [ %incdec.ptr20.i, %PREMATURE.i.i ], [ %incdec.ptr77.i.i, %if.end87.i.i ]
  %cmp24.i = icmp eq i8* %retval.0.i.ph.i, %incdec.ptr20.i
  %cond29.i = select i1 %cmp24.i, i8* %t.4, i8* %retval.0.i.ph.i
  br label %if.end301

if.then303.thread:                                ; preds = %if.then289
  store i8* %add.ptr.i502, i8** %beg36.i, align 8, !tbaa !0
  store i8* %add.ptr.i502, i8** %end37.i, align 8, !tbaa !0
  %incdec.ptr38.i = getelementptr inbounds i8* %t.4, i64 3
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr38.i, i32 %utf8, %struct.token_pos* %token.i498, i32 1, %struct.sv* %self) #6
  br label %while.cond.backedge

if.end39.i:                                       ; preds = %if.then289
  %.off.i505 = add i8 %119, -65
  %156 = icmp ult i8 %.off.i505, 26
  %.off473.i = add i8 %119, -97
  %157 = icmp ult i8 %.off473.i, 26
  %or.cond.i506 = or i1 %156, %157
  br i1 %or.cond.i506, label %if.then53.i, label %DECL_FAIL.i

if.then53.i:                                      ; preds = %if.end39.i
  call void @llvm.lifetime.start(i64 128, i8* %7) #2
  store i32 8, i32* %token_lim.i500, align 4, !tbaa !3
  store %struct.token_pos* %arraydecay.i507, %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  %incdec.ptr60.i = getelementptr inbounds i8* %t.4, i64 3
  %cmp61485.i = icmp ult i8* %incdec.ptr60.i, %end
  br i1 %cmp61485.i, label %land.rhs.i512, label %while.end.i517

while.cond.i508:                                  ; preds = %land.rhs.i512
  %cmp61.i = icmp ult i8* %incdec.ptr65.i, %end
  br i1 %cmp61.i, label %land.rhs.i512, label %while.end.i517

land.rhs.i512:                                    ; preds = %if.then53.i, %while.cond.i508
  %s.0486.i = phi i8* [ %incdec.ptr65.i, %while.cond.i508 ], [ %incdec.ptr60.i, %if.then53.i ]
  %158 = load i8* %s.0486.i, align 1, !tbaa !1
  %idxprom.i509 = zext i8 %158 to i64
  %arrayidx.i510 = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom.i509
  %159 = load i8* %arrayidx.i510, align 1, !tbaa !1
  %and.i511 = and i8 %159, 4
  %tobool64.i = icmp eq i8 %and.i511, 0
  %incdec.ptr65.i = getelementptr inbounds i8* %s.0486.i, i64 1
  br i1 %tobool64.i, label %while.end.i517, label %while.cond.i508

while.end.i517:                                   ; preds = %land.rhs.i512, %while.cond.i508, %if.then53.i
  %s.0.lcssa.i513 = phi i8* [ %incdec.ptr60.i, %if.then53.i ], [ %s.0486.i, %land.rhs.i512 ], [ %incdec.ptr65.i, %while.cond.i508 ]
  %sub.ptr.lhs.cast.i514 = ptrtoint i8* %s.0.lcssa.i513 to i64
  %sub.ptr.rhs.cast.i515 = ptrtoint i8* %add.ptr.i502 to i64
  %sub.ptr.sub.i516 = sub i64 %sub.ptr.lhs.cast.i514, %sub.ptr.rhs.cast.i515
  switch i64 %sub.ptr.sub.i516, label %DECL_FAIL.i [
    i64 7, label %land.lhs.true68.i
    i64 6, label %land.lhs.true75.i
  ]

land.lhs.true68.i:                                ; preds = %while.end.i517
  %160 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %lnot.i = icmp eq i8 %160, 0
  %lnot.ext.i = zext i1 %lnot.i to i32
  %call70.i = call fastcc i32 @strnEQx(i8* %add.ptr.i502, i8* getelementptr inbounds ([8 x i8]* @.str95, i64 0, i64 0), i64 7, i32 %lnot.ext.i) #6
  %tobool71.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.i, label %DECL_FAIL.i, label %if.end91.i

land.lhs.true75.i:                                ; preds = %while.end.i517
  %161 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %lnot78.i = icmp eq i8 %161, 0
  %lnot.ext79.i = zext i1 %lnot78.i to i32
  %call80.i = call fastcc i32 @strnEQx(i8* %add.ptr.i502, i8* getelementptr inbounds ([7 x i8]* @.str96, i64 0, i64 0), i64 6, i32 %lnot.ext79.i) #6
  %tobool81.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.i, label %DECL_FAIL.i, label %if.end91.i

if.end91.i:                                       ; preds = %land.lhs.true75.i, %land.lhs.true68.i
  store i8* %add.ptr.i502, i8** %beg94.i, align 16, !tbaa !0
  store i8* %s.0.lcssa.i513, i8** %end98.i, align 8, !tbaa !0
  %cmp100481.i = icmp ult i8* %s.0.lcssa.i513, %end
  br i1 %cmp100481.i, label %land.rhs102.i, label %while.end279.i

land.rhs102.i:                                    ; preds = %if.end91.i, %while.cond99.backedge.i
  %162 = phi %struct.token_pos* [ %178, %while.cond99.backedge.i ], [ %arraydecay.i507, %if.end91.i ]
  %s.1483.i = phi i8* [ %s.1.be.i, %while.cond99.backedge.i ], [ %s.0.lcssa.i513, %if.end91.i ]
  %num_tokens.0482.i = phi i32 [ %num_tokens.0.be.i524, %while.cond99.backedge.i ], [ 1, %if.end91.i ]
  %163 = load i8* %s.1483.i, align 1, !tbaa !1
  %idxprom103.i = zext i8 %163 to i64
  %arrayidx104.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom103.i
  %164 = load i8* %arrayidx104.i, align 1, !tbaa !1
  %and106.i = and i8 %164, 1
  %tobool107.i = icmp eq i8 %and106.i, 0
  br i1 %tobool107.i, label %while.end279.i, label %while.cond111.i

while.cond111.i:                                  ; preds = %land.rhs102.i, %land.rhs114.i
  %s.1.pn.i = phi i8* [ %s.2.i519, %land.rhs114.i ], [ %s.1483.i, %land.rhs102.i ]
  %s.2.i519 = getelementptr inbounds i8* %s.1.pn.i, i64 1
  %cmp112.i = icmp ult i8* %s.2.i519, %end
  br i1 %cmp112.i, label %land.rhs114.i, label %while.end123.i

land.rhs114.i:                                    ; preds = %while.cond111.i
  %165 = load i8* %s.2.i519, align 1, !tbaa !1
  %idxprom115.i = zext i8 %165 to i64
  %arrayidx116.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom115.i
  %166 = load i8* %arrayidx116.i, align 1, !tbaa !1
  %and118.i = and i8 %166, 1
  %tobool119.i = icmp eq i8 %and118.i, 0
  br i1 %tobool119.i, label %while.end123.i, label %while.cond111.i

while.end123.i:                                   ; preds = %land.rhs114.i, %while.cond111.i
  %cmp124.i = icmp eq i8* %s.2.i519, %end
  br i1 %cmp124.i, label %PREMATURE.i529, label %if.end127.i

if.end127.i:                                      ; preds = %while.end123.i
  %167 = load i8* %s.2.i519, align 1, !tbaa !1
  switch i8 %167, label %while.cond241.i [
    i8 34, label %while.cond138.i
    i8 39, label %while.cond138.i
    i8 45, label %if.then175.i
    i8 62, label %while.end279.i
  ]

while.cond138.i:                                  ; preds = %if.end127.i, %if.end127.i, %land.rhs141.i
  %s.2.pn454.i = phi i8* [ %s.3.i520, %land.rhs141.i ], [ %s.2.i519, %if.end127.i ], [ %s.2.i519, %if.end127.i ]
  %s.3.i520 = getelementptr inbounds i8* %s.2.pn454.i, i64 1
  %cmp139.i = icmp ult i8* %s.3.i520, %end
  br i1 %cmp139.i, label %land.rhs141.i, label %while.end149.i

land.rhs141.i:                                    ; preds = %while.cond138.i
  %168 = load i8* %s.3.i520, align 1, !tbaa !1
  %cmp144.i = icmp eq i8 %168, %167
  br i1 %cmp144.i, label %while.end149.i, label %while.cond138.i

while.end149.i:                                   ; preds = %land.rhs141.i, %while.cond138.i
  %cmp150.i = icmp eq i8* %s.3.i520, %end
  br i1 %cmp150.i, label %PREMATURE.i529, label %if.end153.i

if.end153.i:                                      ; preds = %while.end149.i
  %incdec.ptr154.i = getelementptr inbounds i8* %s.2.pn454.i, i64 2
  %inc155.i = add nsw i32 %num_tokens.0482.i, 1
  %169 = load i32* %token_lim.i500, align 4, !tbaa !3
  %cmp156.i = icmp eq i32 %inc155.i, %169
  br i1 %cmp156.i, label %if.then158.i, label %if.end163.i

if.then158.i:                                     ; preds = %if.end153.i
  %cmp160.i521 = icmp ne %struct.token_pos* %162, %arraydecay.i507
  %conv162.i = zext i1 %cmp160.i521 to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i501, i32* %token_lim.i500, i8 signext %conv162.i) #6
  %.pre555.i = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then158.i, %if.end153.i
  %170 = phi %struct.token_pos* [ %.pre555.i, %if.then158.i ], [ %162, %if.end153.i ]
  %idxprom165.i = sext i32 %num_tokens.0482.i to i64
  %beg167.i = getelementptr inbounds %struct.token_pos* %170, i64 %idxprom165.i, i32 0
  store i8* %s.2.i519, i8** %beg167.i, align 8, !tbaa !0
  %171 = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  %end171.i = getelementptr inbounds %struct.token_pos* %171, i64 %idxprom165.i, i32 1
  store i8* %incdec.ptr154.i, i8** %end171.i, align 8, !tbaa !0
  br label %while.cond99.backedge.i

if.then175.i:                                     ; preds = %if.end127.i
  %incdec.ptr177.i = getelementptr inbounds i8* %s.1.pn.i, i64 2
  %cmp178.i522 = icmp eq i8* %incdec.ptr177.i, %end
  br i1 %cmp178.i522, label %PREMATURE.i529, label %if.end181.i

if.end181.i:                                      ; preds = %if.then175.i
  %172 = load i8* %incdec.ptr177.i, align 1, !tbaa !1
  %cmp183.i = icmp eq i8 %172, 45
  br i1 %cmp183.i, label %if.end186.i, label %FAIL.i

if.end186.i:                                      ; preds = %if.end181.i
  %incdec.ptr187.i = getelementptr inbounds i8* %s.1.pn.i, i64 3
  br label %while.cond190.i

while.cond190.i:                                  ; preds = %if.end209.i, %while.body198.i, %if.end186.i
  %s.4.i523 = phi i8* [ %incdec.ptr187.i, %if.end186.i ], [ %incdec.ptr199.i, %while.body198.i ], [ %incdec.ptr205.i, %if.end209.i ]
  %cmp191.i = icmp ult i8* %s.4.i523, %end
  br i1 %cmp191.i, label %land.rhs193.i, label %while.end200.i

land.rhs193.i:                                    ; preds = %while.cond190.i
  %173 = load i8* %s.4.i523, align 1, !tbaa !1
  %cmp195.i = icmp eq i8 %173, 45
  br i1 %cmp195.i, label %while.end200.i, label %while.body198.i

while.body198.i:                                  ; preds = %land.rhs193.i
  %incdec.ptr199.i = getelementptr inbounds i8* %s.4.i523, i64 1
  br label %while.cond190.i

while.end200.i:                                   ; preds = %land.rhs193.i, %while.cond190.i
  %cmp201.i = icmp eq i8* %s.4.i523, %end
  br i1 %cmp201.i, label %PREMATURE.i529, label %if.end204.i

if.end204.i:                                      ; preds = %while.end200.i
  %incdec.ptr205.i = getelementptr inbounds i8* %s.4.i523, i64 1
  %cmp206.i = icmp eq i8* %incdec.ptr205.i, %end
  br i1 %cmp206.i, label %PREMATURE.i529, label %if.end209.i

if.end209.i:                                      ; preds = %if.end204.i
  %174 = load i8* %incdec.ptr205.i, align 1, !tbaa !1
  %cmp211.i = icmp eq i8 %174, 45
  br i1 %cmp211.i, label %if.then213.i, label %while.cond190.i

if.then213.i:                                     ; preds = %if.end209.i
  %incdec.ptr214.i = getelementptr inbounds i8* %s.4.i523, i64 2
  %inc215.i = add nsw i32 %num_tokens.0482.i, 1
  %175 = load i32* %token_lim.i500, align 4, !tbaa !3
  %cmp216.i = icmp eq i32 %inc215.i, %175
  br i1 %cmp216.i, label %if.then218.i, label %if.end223.i

if.then218.i:                                     ; preds = %if.then213.i
  %cmp220.i = icmp ne %struct.token_pos* %162, %arraydecay.i507
  %conv222.i = zext i1 %cmp220.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i501, i32* %token_lim.i500, i8 signext %conv222.i) #6
  %.pre554.i = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.then218.i, %if.then213.i
  %176 = phi %struct.token_pos* [ %.pre554.i, %if.then218.i ], [ %162, %if.then213.i ]
  %idxprom225.i = sext i32 %num_tokens.0482.i to i64
  %beg227.i = getelementptr inbounds %struct.token_pos* %176, i64 %idxprom225.i, i32 0
  store i8* %s.2.i519, i8** %beg227.i, align 8, !tbaa !0
  %177 = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  %end231.i = getelementptr inbounds %struct.token_pos* %177, i64 %idxprom225.i, i32 1
  store i8* %incdec.ptr214.i, i8** %end231.i, align 8, !tbaa !0
  br label %while.cond99.backedge.i

while.cond99.backedge.i:                          ; preds = %if.end266.i527, %if.end223.i, %if.end163.i
  %178 = phi %struct.token_pos* [ %171, %if.end163.i ], [ %177, %if.end223.i ], [ %183, %if.end266.i527 ]
  %num_tokens.0.be.i524 = phi i32 [ %inc155.i, %if.end163.i ], [ %inc215.i, %if.end223.i ], [ %inc258.i, %if.end266.i527 ]
  %s.1.be.i = phi i8* [ %incdec.ptr154.i, %if.end163.i ], [ %incdec.ptr214.i, %if.end223.i ], [ %s.5.i526, %if.end266.i527 ]
  %cmp100.i = icmp ult i8* %s.1.be.i, %end
  br i1 %cmp100.i, label %land.rhs102.i, label %while.end279.i

while.cond241.i:                                  ; preds = %if.end127.i, %land.rhs244.i
  %s.2.pn.i525 = phi i8* [ %s.5.i526, %land.rhs244.i ], [ %s.2.i519, %if.end127.i ]
  %s.5.i526 = getelementptr inbounds i8* %s.2.pn.i525, i64 1
  %cmp242.i = icmp ult i8* %s.5.i526, %end
  br i1 %cmp242.i, label %land.rhs244.i, label %while.end253.i

land.rhs244.i:                                    ; preds = %while.cond241.i
  %179 = load i8* %s.5.i526, align 1, !tbaa !1
  %idxprom245.i = zext i8 %179 to i64
  %arrayidx246.i = getelementptr inbounds [256 x i8]* @hctype, i64 0, i64 %idxprom245.i
  %180 = load i8* %arrayidx246.i, align 1, !tbaa !1
  %and248.i = and i8 %180, 8
  %tobool249.i = icmp eq i8 %and248.i, 0
  br i1 %tobool249.i, label %while.end253.i, label %while.cond241.i

while.end253.i:                                   ; preds = %land.rhs244.i, %while.cond241.i
  %cmp254.i = icmp eq i8* %s.5.i526, %end
  br i1 %cmp254.i, label %PREMATURE.i529, label %if.end257.i

if.end257.i:                                      ; preds = %while.end253.i
  %inc258.i = add nsw i32 %num_tokens.0482.i, 1
  %181 = load i32* %token_lim.i500, align 4, !tbaa !3
  %cmp259.i = icmp eq i32 %inc258.i, %181
  br i1 %cmp259.i, label %if.then261.i, label %if.end266.i527

if.then261.i:                                     ; preds = %if.end257.i
  %cmp263.i = icmp ne %struct.token_pos* %162, %arraydecay.i507
  %conv265.i = zext i1 %cmp263.i to i8
  call fastcc void @tokens_grow(%struct.token_pos** %tokens.i501, i32* %token_lim.i500, i8 signext %conv265.i) #6
  %.pre556.i = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  br label %if.end266.i527

if.end266.i527:                                   ; preds = %if.then261.i, %if.end257.i
  %182 = phi %struct.token_pos* [ %.pre556.i, %if.then261.i ], [ %162, %if.end257.i ]
  %idxprom268.i = sext i32 %num_tokens.0482.i to i64
  %beg270.i = getelementptr inbounds %struct.token_pos* %182, i64 %idxprom268.i, i32 0
  store i8* %s.2.i519, i8** %beg270.i, align 8, !tbaa !0
  %183 = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  %end274.i = getelementptr inbounds %struct.token_pos* %183, i64 %idxprom268.i, i32 1
  store i8* %s.5.i526, i8** %end274.i, align 8, !tbaa !0
  br label %while.cond99.backedge.i

while.end279.i:                                   ; preds = %while.cond99.backedge.i, %if.end127.i, %land.rhs102.i, %if.end91.i
  %184 = phi %struct.token_pos* [ %arraydecay.i507, %if.end91.i ], [ %178, %while.cond99.backedge.i ], [ %162, %if.end127.i ], [ %162, %land.rhs102.i ]
  %num_tokens.0.lcssa.i = phi i32 [ 1, %if.end91.i ], [ %num_tokens.0.be.i524, %while.cond99.backedge.i ], [ %num_tokens.0482.i, %if.end127.i ], [ %num_tokens.0482.i, %land.rhs102.i ]
  %s.6.i528 = phi i8* [ %s.0.lcssa.i513, %if.end91.i ], [ %s.1.be.i, %while.cond99.backedge.i ], [ %s.2.i519, %if.end127.i ], [ %s.1483.i, %land.rhs102.i ]
  %cmp280.i = icmp eq i8* %s.6.i528, %end
  br i1 %cmp280.i, label %PREMATURE.i529, label %if.end283.i

if.end283.i:                                      ; preds = %while.end279.i
  %185 = load i8* %s.6.i528, align 1, !tbaa !1
  %cmp285.i = icmp eq i8 %185, 62
  br i1 %cmp285.i, label %if.then287.i, label %FAIL.i

if.then287.i:                                     ; preds = %if.end283.i
  %incdec.ptr288.i = getelementptr inbounds i8* %s.6.i528, i64 1
  call fastcc void @report_event(%struct.p_state* %p_state, i32 0, i8* %t.4, i8* %incdec.ptr288.i, i32 %utf8, %struct.token_pos* %184, i32 %num_tokens.0.lcssa.i, %struct.sv* %self) #6
  %186 = load %struct.token_pos** %tokens.i501, align 8, !tbaa !0
  %cmp290.i = icmp eq %struct.token_pos* %186, %arraydecay.i507
  br i1 %cmp290.i, label %if.then303, label %if.then292.i

if.then292.i:                                     ; preds = %if.then287.i
  %187 = bitcast %struct.token_pos* %186 to i8*
  call void @Perl_safesysfree(i8* %187) #6
  br label %if.then303

FAIL.i:                                           ; preds = %if.end181.i, %if.end283.i
  %188 = phi %struct.token_pos* [ %184, %if.end283.i ], [ %162, %if.end181.i ]
  %s.7.i = phi i8* [ %s.6.i528, %if.end283.i ], [ %incdec.ptr177.i, %if.end181.i ]
  %cmp296.i = icmp eq %struct.token_pos* %188, %arraydecay.i507
  br i1 %cmp296.i, label %DECL_FAIL.i, label %if.then298.i

if.then298.i:                                     ; preds = %FAIL.i
  %189 = bitcast %struct.token_pos* %188 to i8*
  call void @Perl_safesysfree(i8* %189) #6
  br label %DECL_FAIL.i

PREMATURE.i529:                                   ; preds = %while.end253.i, %if.then175.i, %while.end149.i, %while.end123.i, %if.end204.i, %while.end200.i, %while.end279.i
  %190 = phi %struct.token_pos* [ %184, %while.end279.i ], [ %162, %while.end200.i ], [ %162, %if.end204.i ], [ %162, %while.end123.i ], [ %162, %while.end149.i ], [ %162, %if.then175.i ], [ %162, %while.end253.i ]
  %cmp301.i = icmp eq %struct.token_pos* %190, %arraydecay.i507
  br i1 %cmp301.i, label %if.end301, label %if.then303.i

if.then303.i:                                     ; preds = %PREMATURE.i529
  %191 = bitcast %struct.token_pos* %190 to i8*
  call void @Perl_safesysfree(i8* %191) #6
  br label %if.end301

DECL_FAIL.i:                                      ; preds = %FAIL.i, %land.lhs.true75.i, %land.lhs.true68.i, %while.end.i517, %if.end39.i, %if.then17.i, %if.end.i504, %if.then298.i, %FAIL.i.i
  %s.10.i530 = phi i8* [ %incdec.ptr20.i, %FAIL.i.i ], [ %s.7.i, %if.then298.i ], [ %incdec.ptr.i503, %if.end.i504 ], [ %incdec.ptr20.i, %if.then17.i ], [ %add.ptr.i502, %if.end39.i ], [ %s.0.lcssa.i513, %while.end.i517 ], [ %s.0.lcssa.i513, %land.lhs.true68.i ], [ %s.0.lcssa.i513, %land.lhs.true75.i ], [ %s.7.i, %FAIL.i ]
  %192 = load i8* %strict_comment.i, align 1, !tbaa !1
  %tobool306.i = icmp eq i8 %192, 0
  br i1 %tobool306.i, label %if.end308.i, label %while.cond.backedge

if.end308.i:                                      ; preds = %DECL_FAIL.i
  %call309.i = call fastcc i8* @skip_until_gt(i8* %s.10.i530, i8* %end) #6
  %cmp310.i532 = icmp ult i8* %call309.i, %end
  br i1 %cmp310.i532, label %if.then312.i, label %if.end301

if.then312.i:                                     ; preds = %if.end308.i
  store i8* %add.ptr.i502, i8** %beg316.i, align 8, !tbaa !0
  store i8* %call309.i, i8** %end317.i, align 8, !tbaa !0
  %incdec.ptr318.i = getelementptr inbounds i8* %call309.i, i64 1
  call fastcc void @report_event(%struct.p_state* %p_state, i32 1, i8* %t.4, i8* %incdec.ptr318.i, i32 %utf8, %struct.token_pos* %token314.i, i32 1, %struct.sv* %self) #6
  br label %if.then303

if.then295:                                       ; preds = %if.else279
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %add.ptr.i533 = getelementptr inbounds i8* %t.4, i64 2
  store i8* %add.ptr.i533, i8** %beg1.i, align 8, !tbaa !0
  %cmp33.i = icmp ult i8* %add.ptr.i533, %end
  br i1 %cmp33.i, label %while.body.lr.ph.i, label %if.end301

while.body.lr.ph.i:                               ; preds = %if.then295
  %sub.ptr.rhs.cast.i535 = ptrtoint i8* %t.4 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %s.034.i = phi i8* [ %add.ptr.i533, %while.body.lr.ph.i ], [ %s.0.be.i, %while.cond.backedge.i ]
  %193 = load i8* %s.034.i, align 1, !tbaa !1
  %cmp2.i536 = icmp eq i8 %193, 62
  br i1 %cmp2.i536, label %if.then.i539, label %if.end15.i

if.then.i539:                                     ; preds = %while.body.i
  store i8* %s.034.i, i8** %end4.i, align 8, !tbaa !0
  %incdec.ptr.i537 = getelementptr inbounds i8* %s.034.i, i64 1
  %194 = load i8* %xml_mode.i482, align 1, !tbaa !1
  %tobool.i538 = icmp eq i8 %194, 0
  br i1 %tobool.i538, label %if.end14.i546, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i539
  %sub.ptr.lhs.cast.i540 = ptrtoint i8* %incdec.ptr.i537 to i64
  %sub.ptr.sub.i541 = sub i64 %sub.ptr.lhs.cast.i540, %sub.ptr.rhs.cast.i535
  %cmp6.i542 = icmp slt i64 %sub.ptr.sub.i541, 4
  br i1 %cmp6.i542, label %while.cond.backedge.i, label %lor.lhs.false.i544

lor.lhs.false.i544:                               ; preds = %if.then5.i
  %arrayidx.i543 = getelementptr inbounds i8* %s.034.i, i64 -1
  %195 = load i8* %arrayidx.i543, align 1, !tbaa !1
  %cmp9.i = icmp eq i8 %195, 63
  br i1 %cmp9.i, label %if.end.i545, label %while.cond.backedge.i

if.end.i545:                                      ; preds = %lor.lhs.false.i544
  store i8* %arrayidx.i543, i8** %end4.i, align 8, !tbaa !0
  br label %if.end14.i546

if.end14.i546:                                    ; preds = %if.then.i539, %if.end.i545
  call fastcc void @report_event(%struct.p_state* %p_state, i32 5, i8* %t.4, i8* %incdec.ptr.i537, i32 %utf8, %struct.token_pos* %token_pos.i, i32 1, %struct.sv* %self) #6
  br label %if.then303

if.end15.i:                                       ; preds = %while.body.i
  %incdec.ptr16.i = getelementptr inbounds i8* %s.034.i, i64 1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end15.i, %lor.lhs.false.i544, %if.then5.i
  %s.0.be.i = phi i8* [ %incdec.ptr.i537, %if.then5.i ], [ %incdec.ptr.i537, %lor.lhs.false.i544 ], [ %incdec.ptr16.i, %if.end15.i ]
  %cmp.i547 = icmp ult i8* %s.0.be.i, %end
  br i1 %cmp.i547, label %while.body.i, label %if.end301

if.end301:                                        ; preds = %while.cond.backedge.i, %if.then295, %if.end308.i, %if.then303.i, %PREMATURE.i529, %if.end23.i, %parse_comment.exit.i, %if.then.i, %if.then43.i, %if.end29.i, %if.then344.i, %PREMATURE.i
  %new_pos.0 = phi i8* [ %t.4, %PREMATURE.i ], [ %t.4, %if.then344.i ], [ %t.4, %if.end29.i ], [ %t.4, %if.then43.i ], [ %cond.i, %parse_comment.exit.i ], [ %cond29.i, %if.end23.i ], [ %t.4, %if.then.i ], [ %t.4, %if.end308.i ], [ %t.4, %PREMATURE.i529 ], [ %t.4, %if.then303.i ], [ %t.4, %if.then295 ], [ %t.4, %while.cond.backedge.i ]
  %tobool302 = icmp eq i8* %new_pos.0, null
  br i1 %tobool302, label %while.cond.backedge, label %if.then303

while.cond.backedge:                              ; preds = %if.then303.thread, %DECL_FAIL.i, %if.then32.i, %if.else41.i, %if.then339.i, %if.end335.i, %if.then303, %if.end301, %if.else279
  %t.0.be = phi i8* [ %t.4, %if.else279 ], [ %t.4, %if.end301 ], [ %new_pos.0770, %if.then303 ], [ %t.4, %if.end335.i ], [ %t.4, %if.then339.i ], [ %t.4, %if.else41.i ], [ %t.4, %if.then32.i ], [ %t.4, %DECL_FAIL.i ], [ %incdec.ptr38.i, %if.then303.thread ]
  %s.0.be = phi i8* [ %incdec.ptr271, %if.else279 ], [ %incdec.ptr271, %if.end301 ], [ %new_pos.0770, %if.then303 ], [ %incdec.ptr271, %if.end335.i ], [ %incdec.ptr271, %if.then339.i ], [ %incdec.ptr271, %if.else41.i ], [ %incdec.ptr271, %if.then32.i ], [ %incdec.ptr271, %DECL_FAIL.i ], [ %incdec.ptr38.i, %if.then303.thread ]
  %196 = load i8* %eof, align 1, !tbaa !1
  %lnot = icmp eq i8 %196, 0
  br i1 %lnot, label %while.cond1.preheader, label %DONE

if.then303:                                       ; preds = %if.end14.i546, %if.then292.i, %if.then287.i, %if.then312.i, %if.then47.i, %if.then36.i, %if.then333.i, %if.end329.i, %if.end301
  %new_pos.0770 = phi i8* [ %new_pos.0, %if.end301 ], [ %incdec.ptr271.i, %if.end329.i ], [ %incdec.ptr271.i, %if.then333.i ], [ %incdec.ptr37.i, %if.then36.i ], [ %incdec.ptr51.i, %if.then47.i ], [ %incdec.ptr318.i, %if.then312.i ], [ %incdec.ptr288.i, %if.then287.i ], [ %incdec.ptr288.i, %if.then292.i ], [ %incdec.ptr.i537, %if.end14.i546 ]
  %cmp304 = icmp eq i8* %new_pos.0770, %t.4
  br i1 %cmp304, label %DONE, label %while.cond.backedge

DONE:                                             ; preds = %entry, %if.then303, %if.end266, %while.cond.backedge, %if.end162, %while.end, %if.end259, %if.then263
  %s.14 = phi i8* [ %incdec.ptr260, %if.then263 ], [ %t.3.ph670, %if.end259 ], [ %t.0683, %while.end ], [ %t.2.ph, %if.end162 ], [ %beg, %entry ], [ %s.8.lcssa768, %if.end266 ], [ %t.4, %if.then303 ], [ %s.0.be, %while.cond.backedge ]
  ret i8* %s.14
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @report_event(%struct.p_state* %p_state, i32 %event, i8* %beg, i8* %end, i32 %utf8, %struct.token_pos* nocapture %tokens, i32 %num_tokens, %struct.sv* %self) #0 {
entry:
  %my_na = alloca i64, align 8
  %t = alloca %struct.token_pos, align 8
  %dummy = alloca i8, align 1
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %offset1 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 2
  %1 = load i64* %offset1, align 8, !tbaa !4
  %line2 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 3
  %2 = load i64* %line2, align 8, !tbaa !4
  %column3 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 4
  %3 = load i64* %column3, align 8, !tbaa !4
  %pending_end_tag = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 10
  %4 = load i8** %pending_end_tag, align 8, !tbaa !0
  %tobool = icmp eq i8* %4, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  switch i32 %event, label %if.then [
    i32 4, label %if.end
    i32 1, label %if.end
  ]

if.then:                                          ; preds = %land.lhs.true
  %beg7 = getelementptr inbounds %struct.token_pos* %t, i64 0, i32 0
  store i8* %4, i8** %beg7, align 8, !tbaa !0
  %call = call i64 @strlen(i8* %4) #6
  %add.ptr = getelementptr inbounds i8* %4, i64 %call
  %end10 = getelementptr inbounds %struct.token_pos* %t, i64 0, i32 1
  store i8* %add.ptr, i8** %end10, align 8, !tbaa !0
  store i8* null, i8** %pending_end_tag, align 8, !tbaa !0
  call fastcc void @report_event(%struct.p_state* %p_state, i32 3, i8* %dummy, i8* %dummy, i32 0, %struct.token_pos* %t, i32 1, %struct.sv* %self) #5
  %5 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %land.lhs.true, %entry, %if.then
  %sp.0 = phi %struct.sv** [ %5, %if.then ], [ %0, %land.lhs.true ], [ %0, %entry ], [ %0, %land.lhs.true ]
  %tobool12 = icmp ne i32 %utf8, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call13 = call i64 @Perl_utf8_distance(i8* %end, i8* %beg) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %beg to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %6 = load i64* %offset1, align 8, !tbaa !4
  %add = add i64 %6, %cond
  store i64 %add, i64* %offset1, align 8, !tbaa !4
  %tobool15 = icmp eq i64 %2, 0
  br i1 %tobool15, label %if.end48, label %while.cond.preheader

while.cond.preheader:                             ; preds = %cond.end
  %cmp181390 = icmp ult i8* %beg, %end
  br i1 %cmp181390, label %while.body, label %if.else

while.body:                                       ; preds = %while.cond.preheader, %if.end23
  %s17.01392 = phi i8* [ %incdec.ptr, %if.end23 ], [ %beg, %while.cond.preheader ]
  %nl.01391 = phi i8* [ %nl.1, %if.end23 ], [ null, %while.cond.preheader ]
  %7 = load i8* %s17.01392, align 1, !tbaa !1
  %cmp19 = icmp eq i8 %7, 10
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %while.body
  %8 = load i64* %line2, align 8, !tbaa !4
  %inc = add i64 %8, 1
  store i64 %inc, i64* %line2, align 8, !tbaa !4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %while.body
  %nl.1 = phi i8* [ %s17.01392, %if.then21 ], [ %nl.01391, %while.body ]
  %incdec.ptr = getelementptr inbounds i8* %s17.01392, i64 1
  %exitcond1403 = icmp eq i8* %incdec.ptr, %end
  br i1 %exitcond1403, label %while.end, label %while.body

while.end:                                        ; preds = %if.end23
  %tobool24 = icmp eq i8* %nl.1, null
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %while.end
  br i1 %tobool12, label %cond.true27, label %cond.false29

cond.true27:                                      ; preds = %if.then25
  %call28 = call i64 @Perl_utf8_distance(i8* %end, i8* %nl.1) #6
  br label %cond.end33

cond.false29:                                     ; preds = %if.then25
  %sub.ptr.lhs.cast30 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %nl.1 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false29, %cond.true27
  %cond34 = phi i64 [ %call28, %cond.true27 ], [ %sub.ptr.sub32, %cond.false29 ]
  %sub = add nsw i64 %cond34, -1
  store i64 %sub, i64* %column3, align 8, !tbaa !4
  br label %if.end48

if.else:                                          ; preds = %while.cond.preheader, %while.end
  br i1 %tobool12, label %cond.true37, label %cond.false39

cond.true37:                                      ; preds = %if.else
  %call38 = call i64 @Perl_utf8_distance(i8* %end, i8* %beg) #6
  br label %cond.end43

cond.false39:                                     ; preds = %if.else
  %sub.ptr.lhs.cast40 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %beg to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false39, %cond.true37
  %cond44 = phi i64 [ %call38, %cond.true37 ], [ %sub.ptr.sub42, %cond.false39 ]
  %9 = load i64* %column3, align 8, !tbaa !4
  %add46 = add i64 %9, %cond44
  store i64 %add46, i64* %column3, align 8, !tbaa !4
  br label %if.end48

if.end48:                                         ; preds = %cond.end, %cond.end33, %cond.end43
  %cmp49 = icmp eq i32 %event, 10
  br i1 %cmp49, label %IGNORE_EVENT, label %if.end52

if.end52:                                         ; preds = %if.end48
  %ms = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 17
  %10 = load i32* %ms, align 4, !tbaa !6
  %cmp53 = icmp eq i32 %10, 4
  br i1 %cmp53, label %IGNORE_EVENT, label %if.end56

if.end56:                                         ; preds = %if.end52
  %ignore_tags = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 33
  %11 = load %struct.hv** %ignore_tags, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.hv* %11, null
  br i1 %tobool57, label %lor.lhs.false, label %if.then61

lor.lhs.false:                                    ; preds = %if.end56
  %report_tags = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 32
  %12 = load %struct.hv** %report_tags, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.hv* %12, null
  br i1 %tobool58, label %lor.lhs.false59, label %if.then61

lor.lhs.false59:                                  ; preds = %lor.lhs.false
  %ignore_elements = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 34
  %13 = load %struct.hv** %ignore_elements, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.hv* %13, null
  br i1 %tobool60, label %if.end143, label %if.then61

if.then61:                                        ; preds = %lor.lhs.false59, %lor.lhs.false, %if.end56
  %cmp62 = icmp eq i32 %event, 2
  %14 = and i32 %event, -2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %if.then67, label %if.else137

if.then67:                                        ; preds = %if.then61
  %tmp = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 38
  %16 = load %struct.sv** %tmp, align 8, !tbaa !0
  %beg68 = getelementptr inbounds %struct.token_pos* %tokens, i64 0, i32 0
  %17 = load i8** %beg68, align 8, !tbaa !0
  %end70 = getelementptr inbounds %struct.token_pos* %tokens, i64 0, i32 1
  %18 = load i8** %end70, align 8, !tbaa !0
  %sub.ptr.lhs.cast73 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %17 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  call void @Perl_sv_setpvn(%struct.sv* %16, i8* %17, i64 %sub.ptr.sub75) #6
  %sv_flags = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %19 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %19, -536870913
  %or = or i32 %19, 536870912
  %storemerge = select i1 %tobool12, i32 %or, i32 %and
  store i32 %storemerge, i32* %sv_flags, align 4, !tbaa !3
  %xml_mode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 23
  %20 = load i8* %xml_mode, align 1, !tbaa !1
  %tobool82 = icmp eq i8 %20, 0
  br i1 %tobool82, label %lor.lhs.false83, label %if.end88

lor.lhs.false83:                                  ; preds = %if.then67
  %case_sensitive = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 26
  %21 = load i8* %case_sensitive, align 1, !tbaa !1
  %tobool85 = icmp eq i8 %21, 0
  br i1 %tobool85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %lor.lhs.false83
  %call87 = call fastcc %struct.sv* @sv_lower(%struct.sv* %16) #5
  br label %if.end88

if.end88:                                         ; preds = %lor.lhs.false83, %if.then67, %if.then86
  %ignoring_element = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 35
  %22 = load %struct.sv** %ignoring_element, align 8, !tbaa !0
  %tobool89 = icmp eq %struct.sv* %22, null
  br i1 %tobool89, label %if.end109, label %if.then90

if.then90:                                        ; preds = %if.end88
  %call92 = call i32 @Perl_sv_eq(%struct.sv* %22, %struct.sv* %16) #6
  %tobool93 = icmp eq i32 %call92, 0
  br i1 %tobool93, label %IGNORE_EVENT, label %if.then94

if.then94:                                        ; preds = %if.then90
  %ignore_depth = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 36
  %23 = load i32* %ignore_depth, align 4, !tbaa !3
  br i1 %cmp62, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.then94
  %inc98 = add nsw i32 %23, 1
  store i32 %inc98, i32* %ignore_depth, align 4, !tbaa !3
  br label %IGNORE_EVENT

if.else99:                                        ; preds = %if.then94
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %ignore_depth, align 4, !tbaa !3
  %cmp101 = icmp eq i32 %dec, 0
  br i1 %cmp101, label %if.then103, label %IGNORE_EVENT

if.then103:                                       ; preds = %if.else99
  %24 = load %struct.sv** %ignoring_element, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %24) #6
  store %struct.sv* null, %struct.sv** %ignoring_element, align 8, !tbaa !0
  br label %IGNORE_EVENT

if.end109:                                        ; preds = %if.end88
  %ignore_elements110 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 34
  %25 = load %struct.hv** %ignore_elements110, align 8, !tbaa !0
  %tobool111 = icmp eq %struct.hv* %25, null
  br i1 %tobool111, label %if.end120, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end109
  %call114 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %25, %struct.sv* %16, i32 0, i32 0) #6
  %tobool115 = icmp eq %struct.he* %call114, null
  br i1 %tobool115, label %if.end120, label %if.then116

if.then116:                                       ; preds = %land.lhs.true112
  %call117 = call %struct.sv* @Perl_newSVsv(%struct.sv* %16) #6
  store %struct.sv* %call117, %struct.sv** %ignoring_element, align 8, !tbaa !0
  %ignore_depth119 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 36
  store i32 1, i32* %ignore_depth119, align 4, !tbaa !3
  br label %IGNORE_EVENT

if.end120:                                        ; preds = %land.lhs.true112, %if.end109
  %26 = load %struct.hv** %ignore_tags, align 8, !tbaa !0
  %tobool122 = icmp eq %struct.hv* %26, null
  br i1 %tobool122, label %if.end128, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.end120
  %call125 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %26, %struct.sv* %16, i32 0, i32 0) #6
  %tobool126 = icmp eq %struct.he* %call125, null
  br i1 %tobool126, label %if.end128, label %IGNORE_EVENT

if.end128:                                        ; preds = %land.lhs.true123, %if.end120
  %report_tags129 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 32
  %27 = load %struct.hv** %report_tags129, align 8, !tbaa !0
  %tobool130 = icmp eq %struct.hv* %27, null
  br i1 %tobool130, label %if.end143, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %if.end128
  %call133 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %27, %struct.sv* %16, i32 0, i32 0) #6
  %tobool134 = icmp eq %struct.he* %call133, null
  br i1 %tobool134, label %IGNORE_EVENT, label %if.end143

if.else137:                                       ; preds = %if.then61
  %ignoring_element138 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 35
  %28 = load %struct.sv** %ignoring_element138, align 8, !tbaa !0
  %tobool139 = icmp eq %struct.sv* %28, null
  br i1 %tobool139, label %if.end143, label %IGNORE_EVENT

if.end143:                                        ; preds = %land.lhs.true131, %if.end128, %if.else137, %lor.lhs.false59
  %idxprom = zext i32 %event to i64
  %arrayidx144 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 30, i64 %idxprom
  %cb = getelementptr inbounds %struct.p_handler* %arrayidx144, i64 0, i32 0
  %29 = load %struct.sv** %cb, align 8, !tbaa !0
  %tobool145 = icmp eq %struct.sv* %29, null
  br i1 %tobool145, label %if.then146, label %if.end153

if.then146:                                       ; preds = %if.end143
  %arrayidx148 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 30, i64 8
  %cb149 = getelementptr inbounds %struct.p_handler* %arrayidx148, i64 0, i32 0
  %30 = load %struct.sv** %cb149, align 8, !tbaa !0
  %tobool150 = icmp eq %struct.sv* %30, null
  br i1 %tobool150, label %IGNORE_EVENT, label %if.end153

if.end153:                                        ; preds = %if.then146, %if.end143
  %31 = phi %struct.sv* [ %29, %if.end143 ], [ %30, %if.then146 ]
  %h.0 = phi %struct.p_handler* [ %arrayidx144, %if.end143 ], [ %arrayidx148, %if.then146 ]
  %cb154 = getelementptr inbounds %struct.p_handler* %h.0, i64 0, i32 0
  %sv_flags155 = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags155, align 4, !tbaa !3
  %and156 = and i32 %32, 255
  %cmp157 = icmp eq i32 %and156, 10
  br i1 %cmp157, label %if.end209, label %cond.false163

cond.false163:                                    ; preds = %if.end153
  %and166 = and i32 %32, 262144
  %tobool167 = icmp eq i32 %and166, 0
  br i1 %tobool167, label %cond.false183, label %cond.true168

cond.true168:                                     ; preds = %cond.false163
  %sv_any = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %33 = load i8** %sv_any, align 8, !tbaa !0
  %34 = bitcast i8* %33 to %struct.xpv*
  store %struct.xpv* %34, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool170 = icmp eq i8* %33, null
  br i1 %tobool170, label %return, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %cond.true168
  %xpv_cur = getelementptr inbounds i8* %33, i64 8
  %35 = bitcast i8* %xpv_cur to i64*
  %36 = load i64* %35, align 8, !tbaa !4
  %cmp172 = icmp ugt i64 %36, 1
  br i1 %cmp172, label %if.end209, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %land.lhs.true171
  %tobool176 = icmp eq i64 %36, 0
  br i1 %tobool176, label %return, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %lor.lhs.false174
  %xpv_pv = bitcast i8* %33 to i8**
  %37 = load i8** %xpv_pv, align 8, !tbaa !0
  %38 = load i8* %37, align 1, !tbaa !1
  %cmp179 = icmp eq i8 %38, 48
  br i1 %cmp179, label %return, label %if.end209

cond.false183:                                    ; preds = %cond.false163
  %and186 = and i32 %32, 65536
  %tobool187 = icmp eq i32 %and186, 0
  br i1 %tobool187, label %cond.false193, label %cond.true188

cond.true188:                                     ; preds = %cond.false183
  %sv_any190 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %39 = load i8** %sv_any190, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %39, i64 24
  %40 = bitcast i8* %xiv_iv to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  %cmp191 = icmp eq i64 %41, 0
  br i1 %cmp191, label %return, label %if.end209

cond.false193:                                    ; preds = %cond.false183
  %and196 = and i32 %32, 131072
  %tobool197 = icmp eq i32 %and196, 0
  br i1 %tobool197, label %cond.false203, label %cond.true198

cond.true198:                                     ; preds = %cond.false193
  %sv_any200 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %42 = load i8** %sv_any200, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %42, i64 32
  %43 = bitcast i8* %xnv_nv to double*
  %44 = load double* %43, align 8, !tbaa !5
  %cmp201 = fcmp une double %44, 0.000000e+00
  br i1 %cmp201, label %if.end209, label %return

cond.false203:                                    ; preds = %cond.false193
  %call205 = call signext i8 @Perl_sv_2bool(%struct.sv* %31) #6
  %tobool207 = icmp eq i8 %call205, 0
  br i1 %tobool207, label %return, label %if.end209

if.end209:                                        ; preds = %land.lhs.true177, %cond.true188, %cond.false203, %if.end153, %land.lhs.true171, %cond.true198
  %unbroken_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 24
  %45 = load i8* %unbroken_text, align 1, !tbaa !1
  %tobool211 = icmp ne i8 %45, 0
  %cmp213 = icmp eq i32 %event, 4
  %or.cond = and i1 %tobool211, %cmp213
  %pend_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 11
  %46 = load %struct.sv** %pend_text, align 8, !tbaa !0
  %tobool216 = icmp eq %struct.sv* %46, null
  br i1 %or.cond, label %if.then215, label %if.else274

if.then215:                                       ; preds = %if.end209
  br i1 %tobool216, label %if.then217, label %if.end220

if.then217:                                       ; preds = %if.then215
  %call218 = call %struct.sv* @Perl_newSV(i64 256) #6
  store %struct.sv* %call218, %struct.sv** %pend_text, align 8, !tbaa !0
  br label %if.end220

if.end220:                                        ; preds = %if.then215, %if.then217
  %47 = phi %struct.sv* [ %46, %if.then215 ], [ %call218, %if.then217 ]
  %sv_flags222 = getelementptr inbounds %struct.sv* %47, i64 0, i32 2
  %48 = load i32* %sv_flags222, align 4, !tbaa !3
  %and223 = and i32 %48, 118423552
  %tobool224 = icmp eq i32 %and223, 0
  %is_cdata233.pre = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  br i1 %tobool224, label %if.end220.INIT_PEND_TEXT_crit_edge, label %if.then225

if.end220.INIT_PEND_TEXT_crit_edge:               ; preds = %if.end220
  %pend_text_is_cdata234.pre = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 12
  br label %INIT_PEND_TEXT

if.then225:                                       ; preds = %if.end220
  %49 = load i8* %is_cdata233.pre, align 1, !tbaa !1
  %pend_text_is_cdata = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 12
  %50 = load i8* %pend_text_is_cdata, align 1, !tbaa !1
  %cmp228 = icmp eq i8 %49, %50
  br i1 %cmp228, label %if.end242, label %if.then230

if.then230:                                       ; preds = %if.then225
  call fastcc void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #5
  %.pre1405 = load %struct.sv** %pend_text, align 8, !tbaa !0
  br label %INIT_PEND_TEXT

INIT_PEND_TEXT:                                   ; preds = %if.end220.INIT_PEND_TEXT_crit_edge, %if.then230
  %pend_text_is_cdata234.pre-phi = phi i8* [ %pend_text_is_cdata234.pre, %if.end220.INIT_PEND_TEXT_crit_edge ], [ %pend_text_is_cdata, %if.then230 ]
  %51 = phi %struct.sv* [ %47, %if.end220.INIT_PEND_TEXT_crit_edge ], [ %.pre1405, %if.then230 ]
  %pend_text_offset = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 13
  store i64 %1, i64* %pend_text_offset, align 8, !tbaa !4
  %pend_text_line = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 14
  store i64 %2, i64* %pend_text_line, align 8, !tbaa !4
  %pend_text_column = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 15
  store i64 %3, i64* %pend_text_column, align 8, !tbaa !4
  %52 = load i8* %is_cdata233.pre, align 1, !tbaa !1
  store i8 %52, i8* %pend_text_is_cdata234.pre-phi, align 1, !tbaa !1
  call void @Perl_sv_setpvn(%struct.sv* %51, i8* getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0), i64 0) #6
  %.pre1408 = load %struct.sv** %pend_text, align 8, !tbaa !0
  %sv_flags246.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre1408, i64 0, i32 2
  %.pre1409 = load i32* %sv_flags246.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool12, label %land.lhs.true244, label %if.end242.thread

if.end242.thread:                                 ; preds = %INIT_PEND_TEXT
  %and240 = and i32 %.pre1409, -536870913
  store i32 %and240, i32* %sv_flags246.phi.trans.insert, align 4, !tbaa !3
  br label %lor.lhs.false254

if.end242:                                        ; preds = %if.then225
  br i1 %tobool12, label %land.lhs.true244, label %lor.lhs.false254

land.lhs.true244:                                 ; preds = %INIT_PEND_TEXT, %if.end242
  %53 = phi i32 [ %48, %if.end242 ], [ %.pre1409, %INIT_PEND_TEXT ]
  %54 = phi %struct.sv* [ %47, %if.end242 ], [ %.pre1408, %INIT_PEND_TEXT ]
  %and247 = and i32 %53, 536870912
  %tobool248 = icmp eq i32 %and247, 0
  br i1 %tobool248, label %if.then249, label %if.then259

if.then249:                                       ; preds = %land.lhs.true244
  %call251 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %54, i32 2) #6
  %.pre1406 = load %struct.sv** %pend_text, align 8, !tbaa !0
  br label %if.then259

lor.lhs.false254:                                 ; preds = %if.end242.thread, %if.end242
  %55 = phi i32 [ %and240, %if.end242.thread ], [ %48, %if.end242 ]
  %56 = phi %struct.sv* [ %.pre1408, %if.end242.thread ], [ %47, %if.end242 ]
  %and257 = and i32 %55, 536870912
  %tobool258 = icmp eq i32 %and257, 0
  br i1 %tobool258, label %if.then259, label %if.else264

if.then259:                                       ; preds = %if.then249, %land.lhs.true244, %lor.lhs.false254
  %57 = phi %struct.sv* [ %.pre1406, %if.then249 ], [ %54, %land.lhs.true244 ], [ %56, %lor.lhs.false254 ]
  %sub.ptr.lhs.cast261 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast262 = ptrtoint i8* %beg to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  call void @Perl_sv_catpvn_flags(%struct.sv* %57, i8* %beg, i64 %sub.ptr.sub263, i32 2) #6
  br label %return

if.else264:                                       ; preds = %lor.lhs.false254
  %sub.ptr.lhs.cast267 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast268 = ptrtoint i8* %beg to i64
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
  %call270 = call %struct.sv* @Perl_newSVpvn(i8* %beg, i64 %sub.ptr.sub269) #6
  %call271 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call270, i32 2) #6
  %58 = load %struct.sv** %pend_text, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %58, %struct.sv* %call270, i32 2) #6
  call void @Perl_sv_free(%struct.sv* %call270) #6
  br label %return

if.else274:                                       ; preds = %if.end209
  br i1 %tobool216, label %if.end284, label %land.lhs.true277

land.lhs.true277:                                 ; preds = %if.else274
  %sv_flags279 = getelementptr inbounds %struct.sv* %46, i64 0, i32 2
  %59 = load i32* %sv_flags279, align 4, !tbaa !3
  %and280 = and i32 %59, 118423552
  %tobool281 = icmp eq i32 %and280, 0
  br i1 %tobool281, label %if.end284, label %if.then282

if.then282:                                       ; preds = %land.lhs.true277
  call fastcc void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #5
  %60 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end284

if.end284:                                        ; preds = %land.lhs.true277, %if.else274, %if.then282
  %sp.1 = phi %struct.sv** [ %60, %if.then282 ], [ %sp.0, %land.lhs.true277 ], [ %sp.0, %if.else274 ]
  %argspec285 = getelementptr inbounds %struct.p_handler* %h.0, i64 0, i32 1
  %61 = load %struct.sv** %argspec285, align 8, !tbaa !0
  %tobool286 = icmp eq %struct.sv* %61, null
  br i1 %tobool286, label %cond.end306, label %cond.true287

cond.true287:                                     ; preds = %if.end284
  %sv_flags289 = getelementptr inbounds %struct.sv* %61, i64 0, i32 2
  %62 = load i32* %sv_flags289, align 4, !tbaa !3
  %and290 = and i32 %62, 262144
  %cmp291 = icmp eq i32 %and290, 0
  br i1 %cmp291, label %cond.false300, label %cond.true293

cond.true293:                                     ; preds = %cond.true287
  %sv_any295 = getelementptr inbounds %struct.sv* %61, i64 0, i32 0
  %63 = load i8** %sv_any295, align 8, !tbaa !0
  %xpv_cur296 = getelementptr inbounds i8* %63, i64 8
  %64 = bitcast i8* %xpv_cur296 to i64*
  %65 = load i64* %64, align 8, !tbaa !4
  store i64 %65, i64* %my_na, align 8, !tbaa !4
  %xpv_pv299 = bitcast i8* %63 to i8**
  %66 = load i8** %xpv_pv299, align 8, !tbaa !0
  br label %cond.end306

cond.false300:                                    ; preds = %cond.true287
  %call302 = call i8* @Perl_sv_2pv_flags(%struct.sv* %61, i64* %my_na, i32 2) #6
  br label %cond.end306

cond.end306:                                      ; preds = %if.end284, %cond.true293, %cond.false300
  %cond307 = phi i8* [ %66, %cond.true293 ], [ %call302, %cond.false300 ], [ getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0), %if.end284 ]
  %67 = load %struct.sv** %cb154, align 8, !tbaa !0
  %sv_flags309 = getelementptr inbounds %struct.sv* %67, i64 0, i32 2
  %68 = load i32* %sv_flags309, align 4, !tbaa !3
  %and310 = and i32 %68, 255
  %cmp311 = icmp eq i32 %and310, 10
  %69 = load i8* %cond307, align 1, !tbaa !1
  %cmp315 = icmp eq i8 %69, 22
  br i1 %cmp311, label %if.then313, label %if.else323

if.then313:                                       ; preds = %cond.end306
  br i1 %cmp315, label %if.then317, label %if.else320

if.then317:                                       ; preds = %if.then313
  %incdec.ptr318 = getelementptr inbounds i8* %cond307, i64 1
  %70 = bitcast %struct.sv* %67 to %struct.av*
  br label %if.end339

if.else320:                                       ; preds = %if.then313
  %call321 = call %struct.av* @Perl_newAV() #6
  br label %if.end339

if.else323:                                       ; preds = %cond.end306
  %incdec.ptr328 = getelementptr inbounds i8* %cond307, i64 1
  %incdec.ptr328.cond307 = select i1 %cmp315, i8* %incdec.ptr328, i8* %cond307
  call void @Perl_push_scope() #6
  call void @Perl_save_int(i32* @PL_tmps_floor) #6
  %71 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %71, i32* @PL_tmps_floor, align 4, !tbaa !3
  %72 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr330 = getelementptr inbounds i32* %72, i64 1
  store i32* %incdec.ptr330, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %73 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp331 = icmp eq i32* %incdec.ptr330, %73
  br i1 %cmp331, label %if.then333, label %if.end334

if.then333:                                       ; preds = %if.else323
  call void @Perl_markstack_grow() #6
  %.pre1407 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end334

if.end334:                                        ; preds = %if.then333, %if.else323
  %74 = phi i32* [ %.pre1407, %if.then333 ], [ %incdec.ptr330, %if.else323 ]
  %75 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast335 = ptrtoint %struct.sv** %sp.1 to i64
  %sub.ptr.rhs.cast336 = ptrtoint %struct.sv** %75 to i64
  %sub.ptr.sub337 = sub i64 %sub.ptr.lhs.cast335, %sub.ptr.rhs.cast336
  %sub.ptr.div1359 = lshr exact i64 %sub.ptr.sub337, 3
  %conv338 = trunc i64 %sub.ptr.div1359 to i32
  store i32 %conv338, i32* %74, align 4, !tbaa !3
  br label %if.end339

if.end339:                                        ; preds = %if.then317, %if.else320, %if.end334
  %argspec.1 = phi i8* [ %incdec.ptr318, %if.then317 ], [ %cond307, %if.else320 ], [ %incdec.ptr328.cond307, %if.end334 ]
  %array.0 = phi %struct.av* [ %70, %if.then317 ], [ %call321, %if.else320 ], [ null, %if.end334 ]
  %76 = load i8* %argspec.1, align 1, !tbaa !1
  %tobool3401386 = icmp eq i8 %76, 0
  br i1 %tobool3401386, label %for.end862, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end339
  %tobool842 = icmp eq %struct.av* %array.0, null
  %cmp347 = icmp sgt i32 %num_tokens, 0
  %bool_attr_val = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 29
  %beg400 = getelementptr inbounds %struct.token_pos* %tokens, i64 0, i32 0
  %mul = shl nsw i32 %num_tokens, 1
  %sub.ptr.rhs.cast429 = ptrtoint i8* %beg to i64
  %end473 = getelementptr inbounds %struct.token_pos* %tokens, i64 0, i32 1
  %xml_mode486 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 23
  %case_sensitive490 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 26
  %cmp502 = icmp eq i32 %event, 2
  %arrayidx507 = getelementptr inbounds [8 x i8]* @.str91, i64 0, i64 %idxprom
  %cmp5261378 = icmp sgt i32 %num_tokens, 1
  %attr_encoded = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 25
  %utf8_mode = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 28
  %entity2char = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 37
  %sub.ptr.lhs.cast718 = ptrtoint i8* %end to i64
  %sub.ptr.sub720 = sub i64 %sub.ptr.lhs.cast718, %sub.ptr.rhs.cast429
  %is_cdata742 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  %skipped_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 16
  %arrayidx809 = getelementptr inbounds [9 x i8*]* @event_id_str, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc860
  %77 = phi i8 [ %76, %for.body.lr.ph ], [ %137, %for.inc860 ]
  %sp.21388 = phi %struct.sv** [ %sp.1, %for.body.lr.ph ], [ %sp.9, %for.inc860 ]
  %s.01387 = phi i8* [ %argspec.1, %for.body.lr.ph ], [ %incdec.ptr861, %for.inc860 ]
  %conv344 = sext i8 %77 to i32
  switch i32 %conv344, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb346
    i32 3, label %sw.bb395
    i32 4, label %sw.bb466
    i32 5, label %sw.bb466
    i32 6, label %sw.bb466
    i32 7, label %sw.bb510
    i32 8, label %sw.bb510
    i32 9, label %sw.bb668
    i32 10, label %sw.bb717
    i32 11, label %sw.bb728
    i32 12, label %sw.bb760
    i32 13, label %sw.bb769
    i32 14, label %sw.bb773
    i32 15, label %sw.bb776
    i32 16, label %sw.bb789
    i32 17, label %sw.bb801
    i32 18, label %sw.bb804
    i32 19, label %sw.bb807
    i32 21, label %sw.bb812
    i32 20, label %sw.bb831
  ]

sw.bb:                                            ; preds = %for.body
  %call345 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %self) #6
  br label %if.then837

sw.bb346:                                         ; preds = %for.body
  br i1 %cmp347, label %for.body357.lr.ph, label %if.then839

for.body357.lr.ph:                                ; preds = %sw.bb346
  %call351 = call %struct.av* @Perl_newAV() #6
  call void @Perl_av_extend(%struct.av* %call351, i32 %num_tokens) #6
  br label %for.body357

for.body357:                                      ; preds = %for.inc, %for.body357.lr.ph
  %indvars.iv1399 = phi i64 [ 0, %for.body357.lr.ph ], [ %indvars.iv.next1400, %for.inc ]
  %prev_token.01384 = phi %struct.sv* [ @PL_sv_undef, %for.body357.lr.ph ], [ %prev_token.1, %for.inc ]
  %beg360 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1399, i32 0
  %78 = load i8** %beg360, align 8, !tbaa !0
  %tobool361 = icmp eq i8* %78, null
  br i1 %tobool361, label %if.else381, label %if.then362

if.then362:                                       ; preds = %for.body357
  %end368 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1399, i32 1
  %79 = load i8** %end368, align 8, !tbaa !0
  %sub.ptr.lhs.cast372 = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast373 = ptrtoint i8* %78 to i64
  %sub.ptr.sub374 = sub i64 %sub.ptr.lhs.cast372, %sub.ptr.rhs.cast373
  %call375 = call %struct.sv* @Perl_newSVpvn(i8* %78, i64 %sub.ptr.sub374) #6
  br i1 %tobool12, label %if.then377, label %if.end380

if.then377:                                       ; preds = %if.then362
  %sv_flags378 = getelementptr inbounds %struct.sv* %call375, i64 0, i32 2
  %80 = load i32* %sv_flags378, align 4, !tbaa !3
  %or379 = or i32 %80, 536870912
  store i32 %or379, i32* %sv_flags378, align 4, !tbaa !3
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %if.then362
  call void @Perl_av_push(%struct.av* %call351, %struct.sv* %call375) #6
  br label %for.inc

if.else381:                                       ; preds = %for.body357
  %81 = load %struct.sv** %bool_attr_val, align 8, !tbaa !0
  %tobool382 = icmp eq %struct.sv* %81, null
  br i1 %tobool382, label %cond.false386, label %cond.true383

cond.true383:                                     ; preds = %if.else381
  %call385 = call %struct.sv* @Perl_newSVsv(%struct.sv* %81) #6
  br label %cond.end388

cond.false386:                                    ; preds = %if.else381
  %call387 = call %struct.sv* @Perl_newSVsv(%struct.sv* %prev_token.01384) #6
  br label %cond.end388

cond.end388:                                      ; preds = %cond.false386, %cond.true383
  %cond389 = phi %struct.sv* [ %call385, %cond.true383 ], [ %call387, %cond.false386 ]
  call void @Perl_av_push(%struct.av* %call351, %struct.sv* %cond389) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end380, %cond.end388
  %prev_token.1 = phi %struct.sv* [ %call375, %if.end380 ], [ %prev_token.01384, %cond.end388 ]
  %indvars.iv.next1400 = add i64 %indvars.iv1399, 1
  %lftr.wideiv1401 = trunc i64 %indvars.iv.next1400 to i32
  %exitcond1402 = icmp eq i32 %lftr.wideiv1401, %num_tokens
  br i1 %exitcond1402, label %for.end, label %for.body357

for.end:                                          ; preds = %for.inc
  %82 = bitcast %struct.av* %call351 to %struct.sv*
  %call392 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %82) #6
  %call393 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call392) #6
  br label %if.then837

sw.bb395:                                         ; preds = %for.body
  br i1 %cmp347, label %land.lhs.true398, label %if.then839

land.lhs.true398:                                 ; preds = %sw.bb395
  %83 = load i8** %beg400, align 8, !tbaa !0
  %cmp401 = icmp ult i8* %83, %beg
  br i1 %cmp401, label %if.then839, label %for.body412.lr.ph

for.body412.lr.ph:                                ; preds = %land.lhs.true398
  %call406 = call %struct.av* @Perl_newAV() #6
  call void @Perl_av_extend(%struct.av* %call406, i32 %mul) #6
  br label %for.body412

for.body412:                                      ; preds = %for.inc460, %for.body412.lr.ph
  %indvars.iv1397 = phi i64 [ 0, %for.body412.lr.ph ], [ %indvars.iv.next1398, %for.inc460 ]
  %beg415 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1397, i32 0
  %84 = load i8** %beg415, align 8, !tbaa !0
  %tobool416 = icmp eq i8* %84, null
  br i1 %tobool416, label %if.else456, label %if.then417

if.then417:                                       ; preds = %for.body412
  br i1 %tobool12, label %cond.true419, label %cond.false424

cond.true419:                                     ; preds = %if.then417
  %call423 = call i64 @Perl_utf8_distance(i8* %84, i8* %beg) #6
  br label %cond.end431

cond.false424:                                    ; preds = %if.then417
  %sub.ptr.lhs.cast428 = ptrtoint i8* %84 to i64
  %sub.ptr.sub430 = sub i64 %sub.ptr.lhs.cast428, %sub.ptr.rhs.cast429
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false424, %cond.true419
  %cond432 = phi i64 [ %call423, %cond.true419 ], [ %sub.ptr.sub430, %cond.false424 ]
  %call433 = call %struct.sv* @Perl_newSViv(i64 %cond432) #6
  call void @Perl_av_push(%struct.av* %call406, %struct.sv* %call433) #6
  %end438 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1397, i32 1
  %85 = load i8** %end438, align 8, !tbaa !0
  %86 = load i8** %beg415, align 8, !tbaa !0
  br i1 %tobool12, label %cond.true435, label %cond.false443

cond.true435:                                     ; preds = %cond.end431
  %call442 = call i64 @Perl_utf8_distance(i8* %85, i8* %86) #6
  br label %cond.end453

cond.false443:                                    ; preds = %cond.end431
  %sub.ptr.lhs.cast450 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast451 = ptrtoint i8* %86 to i64
  %sub.ptr.sub452 = sub i64 %sub.ptr.lhs.cast450, %sub.ptr.rhs.cast451
  br label %cond.end453

cond.end453:                                      ; preds = %cond.false443, %cond.true435
  %cond454 = phi i64 [ %call442, %cond.true435 ], [ %sub.ptr.sub452, %cond.false443 ]
  %call455 = call %struct.sv* @Perl_newSViv(i64 %cond454) #6
  call void @Perl_av_push(%struct.av* %call406, %struct.sv* %call455) #6
  br label %for.inc460

if.else456:                                       ; preds = %for.body412
  %call457 = call %struct.sv* @Perl_newSViv(i64 0) #6
  call void @Perl_av_push(%struct.av* %call406, %struct.sv* %call457) #6
  %call458 = call %struct.sv* @Perl_newSViv(i64 0) #6
  call void @Perl_av_push(%struct.av* %call406, %struct.sv* %call458) #6
  br label %for.inc460

for.inc460:                                       ; preds = %cond.end453, %if.else456
  %indvars.iv.next1398 = add i64 %indvars.iv1397, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1398 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_tokens
  br i1 %exitcond, label %for.end462, label %for.body412

for.end462:                                       ; preds = %for.inc460
  %87 = bitcast %struct.av* %call406 to %struct.sv*
  %call463 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %87) #6
  %call464 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call463) #6
  br label %if.then837

sw.bb466:                                         ; preds = %for.body, %for.body, %for.body
  br i1 %cmp347, label %if.then469, label %if.then839

if.then469:                                       ; preds = %sw.bb466
  %88 = load i8** %beg400, align 8, !tbaa !0
  %89 = load i8** %end473, align 8, !tbaa !0
  %sub.ptr.lhs.cast476 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast477 = ptrtoint i8* %88 to i64
  %sub.ptr.sub478 = sub i64 %sub.ptr.lhs.cast476, %sub.ptr.rhs.cast477
  %call479 = call %struct.sv* @Perl_newSVpvn(i8* %88, i64 %sub.ptr.sub478) #6
  %call480 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call479) #6
  br i1 %tobool12, label %if.then482, label %if.end485

if.then482:                                       ; preds = %if.then469
  %sv_flags483 = getelementptr inbounds %struct.sv* %call480, i64 0, i32 2
  %90 = load i32* %sv_flags483, align 4, !tbaa !3
  %or484 = or i32 %90, 536870912
  store i32 %or484, i32* %sv_flags483, align 4, !tbaa !3
  br label %if.end485

if.end485:                                        ; preds = %if.then482, %if.then469
  %91 = load i8* %xml_mode486, align 1, !tbaa !1
  %tobool488 = icmp eq i8 %91, 0
  br i1 %tobool488, label %lor.lhs.false489, label %if.end498

lor.lhs.false489:                                 ; preds = %if.end485
  %92 = load i8* %case_sensitive490, align 1, !tbaa !1
  %tobool492 = icmp ne i8 %92, 0
  %cmp494 = icmp eq i8 %77, 4
  %or.cond1361 = or i1 %tobool492, %cmp494
  br i1 %or.cond1361, label %if.end498, label %if.then496

if.then496:                                       ; preds = %lor.lhs.false489
  %call497 = call fastcc %struct.sv* @sv_lower(%struct.sv* %call480) #5
  br label %if.end498

if.end498:                                        ; preds = %lor.lhs.false489, %if.end485, %if.then496
  %cmp499 = icmp ne i8 %77, 6
  %or.cond1362 = or i1 %cmp499, %cmp502
  br i1 %or.cond1362, label %if.then837, label %if.then504

if.then504:                                       ; preds = %if.end498
  call void @Perl_sv_insert(%struct.sv* %call480, i64 0, i64 0, i8* %arrayidx507, i64 1) #6
  br label %if.then837

sw.bb510:                                         ; preds = %for.body, %for.body
  br i1 %cmp502, label %if.then513, label %if.else662

if.then513:                                       ; preds = %sw.bb510
  %cmp517 = icmp eq i8 %77, 7
  br i1 %cmp517, label %if.then519, label %if.end524

if.then519:                                       ; preds = %if.then513
  %call520 = call %struct.hv* @Perl_newHV() #6
  %93 = bitcast %struct.hv* %call520 to %struct.sv*
  %call521 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %93) #6
  %call522 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call521) #6
  br label %if.end524

if.end524:                                        ; preds = %if.then513, %if.then519
  %push_arg.0 = phi i32 [ 1, %if.then519 ], [ 0, %if.then513 ]
  %arg.0 = phi %struct.sv* [ %call522, %if.then519 ], [ null, %if.then513 ]
  %hv.0 = phi %struct.hv* [ %call520, %if.then519 ], [ null, %if.then513 ]
  br i1 %cmp5261378, label %for.body528, label %sw.epilog

for.body528:                                      ; preds = %if.end524, %for.inc659
  %indvars.iv1394 = phi i64 [ %indvars.iv.next1395, %for.inc659 ], [ 1, %if.end524 ]
  %sp.31380 = phi %struct.sv** [ %sp.6, %for.inc659 ], [ %sp.21388, %if.end524 ]
  %beg532 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1394, i32 0
  %94 = load i8** %beg532, align 8, !tbaa !0
  %end535 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv1394, i32 1
  %95 = load i8** %end535, align 8, !tbaa !0
  %sub.ptr.lhs.cast539 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast540 = ptrtoint i8* %94 to i64
  %sub.ptr.sub541 = sub i64 %sub.ptr.lhs.cast539, %sub.ptr.rhs.cast540
  %call542 = call %struct.sv* @Perl_newSVpvn(i8* %94, i64 %sub.ptr.sub541) #6
  br i1 %tobool12, label %if.then545, label %if.end548

if.then545:                                       ; preds = %for.body528
  %sv_flags546 = getelementptr inbounds %struct.sv* %call542, i64 0, i32 2
  %96 = load i32* %sv_flags546, align 4, !tbaa !3
  %or547 = or i32 %96, 536870912
  store i32 %or547, i32* %sv_flags546, align 4, !tbaa !3
  br label %if.end548

if.end548:                                        ; preds = %if.then545, %for.body528
  %97 = add nsw i64 %indvars.iv1394, 1
  %beg552 = getelementptr inbounds %struct.token_pos* %tokens, i64 %97, i32 0
  %98 = load i8** %beg552, align 8, !tbaa !0
  %tobool553 = icmp eq i8* %98, null
  br i1 %tobool553, label %if.else600, label %if.then554

if.then554:                                       ; preds = %if.end548
  %end565 = getelementptr inbounds %struct.token_pos* %tokens, i64 %97, i32 1
  %99 = load i8** %end565, align 8, !tbaa !0
  %sub.ptr.lhs.cast566 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast567 = ptrtoint i8* %98 to i64
  %sub.ptr.sub568 = sub i64 %sub.ptr.lhs.cast566, %sub.ptr.rhs.cast567
  %100 = load i8* %98, align 1, !tbaa !1
  switch i8 %100, label %if.end579 [
    i8 34, label %if.then576
    i8 39, label %if.then576
  ]

if.then576:                                       ; preds = %if.then554, %if.then554
  %incdec.ptr577 = getelementptr inbounds i8* %98, i64 1
  %sub578 = add i64 %sub.ptr.sub568, -2
  br label %if.end579

if.end579:                                        ; preds = %if.then554, %if.then576
  %beg556.0 = phi i8* [ %incdec.ptr577, %if.then576 ], [ %98, %if.then554 ]
  %len.0 = phi i64 [ %sub578, %if.then576 ], [ %sub.ptr.sub568, %if.then554 ]
  %call580 = call %struct.sv* @Perl_newSVpvn(i8* %beg556.0, i64 %len.0) #6
  br i1 %tobool12, label %if.then582, label %if.end585

if.then582:                                       ; preds = %if.end579
  %sv_flags583 = getelementptr inbounds %struct.sv* %call580, i64 0, i32 2
  %101 = load i32* %sv_flags583, align 4, !tbaa !3
  %or584 = or i32 %101, 536870912
  store i32 %or584, i32* %sv_flags583, align 4, !tbaa !3
  br label %if.end585

if.end585:                                        ; preds = %if.then582, %if.end579
  %102 = load i8* %attr_encoded, align 1, !tbaa !1
  %tobool586 = icmp eq i8 %102, 0
  br i1 %tobool586, label %if.then587, label %if.end609

if.then587:                                       ; preds = %if.end585
  %103 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool588 = icmp eq i8 %103, 0
  br i1 %tobool588, label %if.end591, label %if.then589

if.then589:                                       ; preds = %if.then587
  %call590 = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %call580) #6
  br label %if.end591

if.end591:                                        ; preds = %if.then587, %if.then589
  %104 = load %struct.hv** %entity2char, align 8, !tbaa !0
  call fastcc void @decode_entities(%struct.sv* %call580, %struct.hv* %104, i8 signext 0) #5
  %105 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool594 = icmp eq i8 %105, 0
  br i1 %tobool594, label %if.end609, label %if.then595

if.then595:                                       ; preds = %if.end591
  %sv_flags596 = getelementptr inbounds %struct.sv* %call580, i64 0, i32 2
  %106 = load i32* %sv_flags596, align 4, !tbaa !3
  %and597 = and i32 %106, -536870913
  store i32 %and597, i32* %sv_flags596, align 4, !tbaa !3
  br label %if.end609

if.else600:                                       ; preds = %if.end548
  %107 = load %struct.sv** %bool_attr_val, align 8, !tbaa !0
  %tobool602 = icmp eq %struct.sv* %107, null
  br i1 %tobool602, label %if.else606, label %if.then603

if.then603:                                       ; preds = %if.else600
  %call605 = call %struct.sv* @Perl_newSVsv(%struct.sv* %107) #6
  br label %if.end609

if.else606:                                       ; preds = %if.else600
  %call607 = call %struct.sv* @Perl_newSVsv(%struct.sv* %call542) #6
  br label %if.end609

if.end609:                                        ; preds = %if.end591, %if.end585, %if.then603, %if.else606, %if.then595
  %attrval.0 = phi %struct.sv* [ %call580, %if.end585 ], [ %call580, %if.then595 ], [ %call580, %if.end591 ], [ %call605, %if.then603 ], [ %call607, %if.else606 ]
  %108 = load i8* %xml_mode486, align 1, !tbaa !1
  %tobool612 = icmp eq i8 %108, 0
  br i1 %tobool612, label %lor.lhs.false613, label %if.end619

lor.lhs.false613:                                 ; preds = %if.end609
  %109 = load i8* %case_sensitive490, align 1, !tbaa !1
  %tobool616 = icmp eq i8 %109, 0
  br i1 %tobool616, label %if.then617, label %if.end619

if.then617:                                       ; preds = %lor.lhs.false613
  %call618 = call fastcc %struct.sv* @sv_lower(%struct.sv* %call542) #5
  br label %if.end619

if.end619:                                        ; preds = %lor.lhs.false613, %if.end609, %if.then617
  br i1 %cmp517, label %if.then622, label %if.else631

if.then622:                                       ; preds = %if.end619
  %call623 = call signext i8 @Perl_hv_exists_ent(%struct.hv* %hv.0, %struct.sv* %call542, i32 0) #6
  %tobool625 = icmp eq i8 %call623, 0
  br i1 %tobool625, label %lor.lhs.false626, label %if.then629

lor.lhs.false626:                                 ; preds = %if.then622
  %call627 = call %struct.he* @Perl_hv_store_ent(%struct.hv* %hv.0, %struct.sv* %call542, %struct.sv* %attrval.0, i32 0) #6
  %tobool628 = icmp eq %struct.he* %call627, null
  br i1 %tobool628, label %if.then629, label %if.end630

if.then629:                                       ; preds = %lor.lhs.false626, %if.then622
  call void @Perl_sv_free(%struct.sv* %attrval.0) #6
  br label %if.end630

if.end630:                                        ; preds = %lor.lhs.false626, %if.then629
  call void @Perl_sv_free(%struct.sv* %call542) #6
  br label %for.inc659

if.else631:                                       ; preds = %if.end619
  br i1 %tobool842, label %if.else634, label %if.then633

if.then633:                                       ; preds = %if.else631
  call void @Perl_av_push(%struct.av* %array.0, %struct.sv* %call542) #6
  call void @Perl_av_push(%struct.av* %array.0, %struct.sv* %attrval.0) #6
  br label %for.inc659

if.else634:                                       ; preds = %if.else631
  %110 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast635 = ptrtoint %struct.sv** %110 to i64
  %sub.ptr.rhs.cast636 = ptrtoint %struct.sv** %sp.31380 to i64
  %sub.ptr.sub637 = sub i64 %sub.ptr.lhs.cast635, %sub.ptr.rhs.cast636
  %cmp639 = icmp slt i64 %sub.ptr.sub637, 8
  br i1 %cmp639, label %if.then641, label %if.end643

if.then641:                                       ; preds = %if.else634
  %call642 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.31380, %struct.sv** %sp.31380, i32 1) #6
  br label %if.end643

if.end643:                                        ; preds = %if.then641, %if.else634
  %sp.4 = phi %struct.sv** [ %call642, %if.then641 ], [ %sp.31380, %if.else634 ]
  %call644 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call542) #6
  %incdec.ptr645 = getelementptr inbounds %struct.sv** %sp.4, i64 1
  store %struct.sv* %call644, %struct.sv** %incdec.ptr645, align 8, !tbaa !0
  %111 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast646 = ptrtoint %struct.sv** %111 to i64
  %sub.ptr.rhs.cast647 = ptrtoint %struct.sv** %incdec.ptr645 to i64
  %sub.ptr.sub648 = sub i64 %sub.ptr.lhs.cast646, %sub.ptr.rhs.cast647
  %cmp650 = icmp slt i64 %sub.ptr.sub648, 8
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %if.end643
  %call653 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr645, %struct.sv** %incdec.ptr645, i32 1) #6
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %if.end643
  %sp.5 = phi %struct.sv** [ %call653, %if.then652 ], [ %incdec.ptr645, %if.end643 ]
  %call655 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %attrval.0) #6
  %incdec.ptr656 = getelementptr inbounds %struct.sv** %sp.5, i64 1
  store %struct.sv* %call655, %struct.sv** %incdec.ptr656, align 8, !tbaa !0
  br label %for.inc659

for.inc659:                                       ; preds = %if.end630, %if.end654, %if.then633
  %sp.6 = phi %struct.sv** [ %sp.31380, %if.end630 ], [ %sp.31380, %if.then633 ], [ %incdec.ptr656, %if.end654 ]
  %indvars.iv.next1395 = add i64 %indvars.iv1394, 2
  %112 = trunc i64 %indvars.iv.next1395 to i32
  %cmp526 = icmp slt i32 %112, %num_tokens
  br i1 %cmp526, label %for.body528, label %sw.epilog

if.else662:                                       ; preds = %sw.bb510
  %not.cmp663 = icmp ne i8 %77, 8
  %. = zext i1 %not.cmp663 to i32
  br label %sw.epilog

sw.bb668:                                         ; preds = %for.body
  br i1 %cmp502, label %if.then671, label %if.then839

if.then671:                                       ; preds = %sw.bb668
  %call674 = call %struct.av* @Perl_newAV() #6
  br i1 %cmp5261378, label %for.body680, label %for.end713

for.body680:                                      ; preds = %if.then671, %if.end710
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end710 ], [ 1, %if.then671 ]
  %beg685 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv, i32 0
  %113 = load i8** %beg685, align 8, !tbaa !0
  %end688 = getelementptr inbounds %struct.token_pos* %tokens, i64 %indvars.iv, i32 1
  %114 = load i8** %end688, align 8, !tbaa !0
  %sub.ptr.lhs.cast692 = ptrtoint i8* %114 to i64
  %sub.ptr.rhs.cast693 = ptrtoint i8* %113 to i64
  %sub.ptr.sub694 = sub i64 %sub.ptr.lhs.cast692, %sub.ptr.rhs.cast693
  %call695 = call %struct.sv* @Perl_newSVpvn(i8* %113, i64 %sub.ptr.sub694) #6
  br i1 %tobool12, label %if.then697, label %if.end700

if.then697:                                       ; preds = %for.body680
  %sv_flags698 = getelementptr inbounds %struct.sv* %call695, i64 0, i32 2
  %115 = load i32* %sv_flags698, align 4, !tbaa !3
  %or699 = or i32 %115, 536870912
  store i32 %or699, i32* %sv_flags698, align 4, !tbaa !3
  br label %if.end700

if.end700:                                        ; preds = %if.then697, %for.body680
  %116 = load i8* %xml_mode486, align 1, !tbaa !1
  %tobool703 = icmp eq i8 %116, 0
  br i1 %tobool703, label %lor.lhs.false704, label %if.end710

lor.lhs.false704:                                 ; preds = %if.end700
  %117 = load i8* %case_sensitive490, align 1, !tbaa !1
  %tobool707 = icmp eq i8 %117, 0
  br i1 %tobool707, label %if.then708, label %if.end710

if.then708:                                       ; preds = %lor.lhs.false704
  %call709 = call fastcc %struct.sv* @sv_lower(%struct.sv* %call695) #5
  br label %if.end710

if.end710:                                        ; preds = %lor.lhs.false704, %if.end700, %if.then708
  call void @Perl_av_push(%struct.av* %call674, %struct.sv* %call695) #6
  %indvars.iv.next = add i64 %indvars.iv, 2
  %118 = trunc i64 %indvars.iv.next to i32
  %cmp678 = icmp slt i32 %118, %num_tokens
  br i1 %cmp678, label %for.body680, label %for.end713

for.end713:                                       ; preds = %if.end710, %if.then671
  %119 = bitcast %struct.av* %call674 to %struct.sv*
  %call714 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %119) #6
  %call715 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call714) #6
  br label %if.then837

sw.bb717:                                         ; preds = %for.body
  %call721 = call %struct.sv* @Perl_newSVpvn(i8* %beg, i64 %sub.ptr.sub720) #6
  %call722 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call721) #6
  br i1 %tobool12, label %if.then724, label %if.then837

if.then724:                                       ; preds = %sw.bb717
  %sv_flags725 = getelementptr inbounds %struct.sv* %call722, i64 0, i32 2
  %120 = load i32* %sv_flags725, align 4, !tbaa !3
  %or726 = or i32 %120, 536870912
  store i32 %or726, i32* %sv_flags725, align 4, !tbaa !3
  br label %if.end841

sw.bb728:                                         ; preds = %for.body
  br i1 %cmp213, label %if.then731, label %if.then839

if.then731:                                       ; preds = %sw.bb728
  %call735 = call %struct.sv* @Perl_newSVpvn(i8* %beg, i64 %sub.ptr.sub720) #6
  %call736 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call735) #6
  br i1 %tobool12, label %if.then738, label %if.end741

if.then738:                                       ; preds = %if.then731
  %sv_flags739 = getelementptr inbounds %struct.sv* %call736, i64 0, i32 2
  %121 = load i32* %sv_flags739, align 4, !tbaa !3
  %or740 = or i32 %121, 536870912
  store i32 %or740, i32* %sv_flags739, align 4, !tbaa !3
  br label %if.end741

if.end741:                                        ; preds = %if.then738, %if.then731
  %122 = load i8* %is_cdata742, align 1, !tbaa !1
  %tobool743 = icmp eq i8 %122, 0
  br i1 %tobool743, label %if.then744, label %if.then837

if.then744:                                       ; preds = %if.end741
  %123 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool746 = icmp eq i8 %123, 0
  br i1 %tobool746, label %if.end749, label %if.then747

if.then747:                                       ; preds = %if.then744
  %call748 = call signext i8 @Perl_sv_utf8_decode(%struct.sv* %call736) #6
  br label %if.end749

if.end749:                                        ; preds = %if.then744, %if.then747
  %124 = load %struct.hv** %entity2char, align 8, !tbaa !0
  call fastcc void @decode_entities(%struct.sv* %call736, %struct.hv* %124, i8 signext 1) #5
  %125 = load i8* %utf8_mode, align 1, !tbaa !1
  %tobool753 = icmp eq i8 %125, 0
  br i1 %tobool753, label %if.then837, label %if.then754

if.then754:                                       ; preds = %if.end749
  %sv_flags755 = getelementptr inbounds %struct.sv* %call736, i64 0, i32 2
  %126 = load i32* %sv_flags755, align 4, !tbaa !3
  %and756 = and i32 %126, -536870913
  store i32 %and756, i32* %sv_flags755, align 4, !tbaa !3
  br label %if.end841

sw.bb760:                                         ; preds = %for.body
  br i1 %cmp213, label %if.then763, label %if.then839

if.then763:                                       ; preds = %sw.bb760
  %127 = load i8* %is_cdata742, align 1, !tbaa !1
  %tobool766 = icmp ne i8 %127, 0
  %cond767 = select i1 %tobool766, %struct.sv* @PL_sv_yes, %struct.sv* @PL_sv_no
  br label %if.end841

sw.bb769:                                         ; preds = %for.body
  %128 = load %struct.sv** %skipped_text, align 8, !tbaa !0
  %call770 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %128) #6
  %call771 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str63, i64 0, i64 0), i64 0) #6
  store %struct.sv* %call771, %struct.sv** %skipped_text, align 8, !tbaa !0
  br label %if.then837

sw.bb773:                                         ; preds = %for.body
  %call774 = call %struct.sv* @Perl_newSViv(i64 %1) #6
  %call775 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call774) #6
  br label %if.then837

sw.bb776:                                         ; preds = %for.body
  br i1 %tobool12, label %cond.true778, label %cond.end784

cond.true778:                                     ; preds = %sw.bb776
  %call779 = call i64 @Perl_utf8_distance(i8* %end, i8* %beg) #6
  br label %cond.end784

cond.end784:                                      ; preds = %sw.bb776, %cond.true778
  %cond785 = phi i64 [ %call779, %cond.true778 ], [ %sub.ptr.sub720, %sw.bb776 ]
  %add786 = add i64 %cond785, %1
  %call787 = call %struct.sv* @Perl_newSViv(i64 %add786) #6
  %call788 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call787) #6
  br label %if.then837

sw.bb789:                                         ; preds = %for.body
  br i1 %tobool12, label %cond.true791, label %cond.end797

cond.true791:                                     ; preds = %sw.bb789
  %call792 = call i64 @Perl_utf8_distance(i8* %end, i8* %beg) #6
  br label %cond.end797

cond.end797:                                      ; preds = %sw.bb789, %cond.true791
  %cond798 = phi i64 [ %call792, %cond.true791 ], [ %sub.ptr.sub720, %sw.bb789 ]
  %call799 = call %struct.sv* @Perl_newSViv(i64 %cond798) #6
  %call800 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call799) #6
  br label %if.then837

sw.bb801:                                         ; preds = %for.body
  %call802 = call %struct.sv* @Perl_newSViv(i64 %2) #6
  %call803 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call802) #6
  br label %if.then837

sw.bb804:                                         ; preds = %for.body
  %call805 = call %struct.sv* @Perl_newSViv(i64 %3) #6
  %call806 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call805) #6
  br label %if.then837

sw.bb807:                                         ; preds = %for.body
  %129 = load i8** %arrayidx809, align 8, !tbaa !0
  %call810 = call %struct.sv* @Perl_newSVpv(i8* %129, i64 0) #6
  %call811 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call810) #6
  br label %if.then837

sw.bb812:                                         ; preds = %for.body
  %arrayidx815 = getelementptr inbounds i8* %s.01387, i64 1
  %130 = load i8* %arrayidx815, align 1, !tbaa !1
  %conv816 = zext i8 %130 to i64
  %add.ptr817 = getelementptr inbounds i8* %s.01387, i64 2
  %call819 = call %struct.sv* @Perl_newSVpvn(i8* %add.ptr817, i64 %conv816) #6
  %call820 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call819) #6
  %131 = load %struct.sv** %argspec285, align 8, !tbaa !0
  %sv_flags822 = getelementptr inbounds %struct.sv* %131, i64 0, i32 2
  %132 = load i32* %sv_flags822, align 4, !tbaa !3
  %and823 = and i32 %132, 536870912
  %tobool824 = icmp eq i32 %and823, 0
  br i1 %tobool824, label %if.end828, label %if.then825

if.then825:                                       ; preds = %sw.bb812
  %sv_flags826 = getelementptr inbounds %struct.sv* %call820, i64 0, i32 2
  %133 = load i32* %sv_flags826, align 4, !tbaa !3
  %or827 = or i32 %133, 536870912
  store i32 %or827, i32* %sv_flags826, align 4, !tbaa !3
  br label %if.end828

if.end828:                                        ; preds = %sw.bb812, %if.then825
  %add829 = add i64 %conv816, 1
  %add.ptr830 = getelementptr inbounds i8* %s.01387, i64 %add829
  br label %if.then837

sw.bb831:                                         ; preds = %for.body
  %call832 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef) #6
  br label %if.then837

sw.default:                                       ; preds = %for.body
  %call834 = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([15 x i8]* @.str92, i64 0, i64 0), i32 %conv344) #6
  %call835 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call834) #6
  br label %if.then837

sw.epilog:                                        ; preds = %if.end524, %for.inc659, %if.else662
  %push_arg.1 = phi i32 [ %., %if.else662 ], [ %push_arg.0, %for.inc659 ], [ %push_arg.0, %if.end524 ]
  %arg.1 = phi %struct.sv* [ null, %if.else662 ], [ %arg.0, %for.inc659 ], [ %arg.0, %if.end524 ]
  %sp.7 = phi %struct.sv** [ %sp.21388, %if.else662 ], [ %sp.6, %for.inc659 ], [ %sp.21388, %if.end524 ]
  %tobool836 = icmp eq i32 %push_arg.1, 0
  br i1 %tobool836, label %for.inc860, label %if.then837

if.then837:                                       ; preds = %sw.bb, %for.end, %for.end462, %if.end498, %if.then504, %for.end713, %sw.bb717, %if.end749, %if.end741, %sw.bb769, %sw.bb773, %cond.end784, %cond.end797, %sw.bb801, %sw.bb804, %sw.bb807, %if.end828, %sw.bb831, %sw.default, %sw.epilog
  %sp.71367 = phi %struct.sv** [ %sp.7, %sw.epilog ], [ %sp.21388, %sw.default ], [ %sp.21388, %sw.bb831 ], [ %sp.21388, %if.end828 ], [ %sp.21388, %sw.bb807 ], [ %sp.21388, %sw.bb804 ], [ %sp.21388, %sw.bb801 ], [ %sp.21388, %cond.end797 ], [ %sp.21388, %cond.end784 ], [ %sp.21388, %sw.bb773 ], [ %sp.21388, %sw.bb769 ], [ %sp.21388, %if.end741 ], [ %sp.21388, %if.end749 ], [ %sp.21388, %sw.bb717 ], [ %sp.21388, %for.end713 ], [ %sp.21388, %if.then504 ], [ %sp.21388, %if.end498 ], [ %sp.21388, %for.end462 ], [ %sp.21388, %for.end ], [ %sp.21388, %sw.bb ]
  %s.11365 = phi i8* [ %s.01387, %sw.epilog ], [ %s.01387, %sw.default ], [ %s.01387, %sw.bb831 ], [ %add.ptr830, %if.end828 ], [ %s.01387, %sw.bb807 ], [ %s.01387, %sw.bb804 ], [ %s.01387, %sw.bb801 ], [ %s.01387, %cond.end797 ], [ %s.01387, %cond.end784 ], [ %s.01387, %sw.bb773 ], [ %s.01387, %sw.bb769 ], [ %s.01387, %if.end741 ], [ %s.01387, %if.end749 ], [ %s.01387, %sw.bb717 ], [ %s.01387, %for.end713 ], [ %s.01387, %if.then504 ], [ %s.01387, %if.end498 ], [ %s.01387, %for.end462 ], [ %s.01387, %for.end ], [ %s.01387, %sw.bb ]
  %arg.11364 = phi %struct.sv* [ %arg.1, %sw.epilog ], [ %call835, %sw.default ], [ %call832, %sw.bb831 ], [ %call820, %if.end828 ], [ %call811, %sw.bb807 ], [ %call806, %sw.bb804 ], [ %call803, %sw.bb801 ], [ %call800, %cond.end797 ], [ %call788, %cond.end784 ], [ %call775, %sw.bb773 ], [ %call770, %sw.bb769 ], [ %call736, %if.end741 ], [ %call736, %if.end749 ], [ %call722, %sw.bb717 ], [ %call715, %for.end713 ], [ %call480, %if.then504 ], [ %call480, %if.end498 ], [ %call464, %for.end462 ], [ %call393, %for.end ], [ %call345, %sw.bb ]
  %tobool838 = icmp eq %struct.sv* %arg.11364, null
  br i1 %tobool838, label %if.then839, label %if.end841

if.then839:                                       ; preds = %sw.bb346, %sw.bb395, %land.lhs.true398, %sw.bb466, %sw.bb668, %sw.bb728, %sw.bb760, %if.then837
  %s.113651372 = phi i8* [ %s.11365, %if.then837 ], [ %s.01387, %sw.bb760 ], [ %s.01387, %sw.bb728 ], [ %s.01387, %sw.bb668 ], [ %s.01387, %sw.bb466 ], [ %s.01387, %land.lhs.true398 ], [ %s.01387, %sw.bb395 ], [ %s.01387, %sw.bb346 ]
  %sp.713671370 = phi %struct.sv** [ %sp.71367, %if.then837 ], [ %sp.21388, %sw.bb760 ], [ %sp.21388, %sw.bb728 ], [ %sp.21388, %sw.bb668 ], [ %sp.21388, %sw.bb466 ], [ %sp.21388, %land.lhs.true398 ], [ %sp.21388, %sw.bb395 ], [ %sp.21388, %sw.bb346 ]
  %call840 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* @PL_sv_undef) #6
  br label %if.end841

if.end841:                                        ; preds = %if.then724, %if.then754, %if.then763, %if.then837, %if.then839
  %s.113651371 = phi i8* [ %s.11365, %if.then837 ], [ %s.113651372, %if.then839 ], [ %s.01387, %if.then763 ], [ %s.01387, %if.then754 ], [ %s.01387, %if.then724 ]
  %sp.713671369 = phi %struct.sv** [ %sp.71367, %if.then837 ], [ %sp.713671370, %if.then839 ], [ %sp.21388, %if.then763 ], [ %sp.21388, %if.then754 ], [ %sp.21388, %if.then724 ]
  %134 = phi %struct.sv* [ %arg.11364, %if.then837 ], [ %call840, %if.then839 ], [ %cond767, %if.then763 ], [ %call736, %if.then754 ], [ %call722, %if.then724 ]
  br i1 %tobool842, label %if.else847, label %if.then843

if.then843:                                       ; preds = %if.end841
  store %struct.sv* %134, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool844 = icmp eq %struct.sv* %134, null
  br i1 %tobool844, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then843
  %sv_refcnt = getelementptr inbounds %struct.sv* %134, i64 0, i32 1
  %135 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc845 = add i32 %135, 1
  store i32 %inc845, i32* %sv_refcnt, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %if.then843, %land.rhs
  call void @Perl_av_push(%struct.av* %array.0, %struct.sv* %134) #6
  br label %for.inc860

if.else847:                                       ; preds = %if.end841
  %136 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast848 = ptrtoint %struct.sv** %136 to i64
  %sub.ptr.rhs.cast849 = ptrtoint %struct.sv** %sp.713671369 to i64
  %sub.ptr.sub850 = sub i64 %sub.ptr.lhs.cast848, %sub.ptr.rhs.cast849
  %cmp852 = icmp slt i64 %sub.ptr.sub850, 8
  br i1 %cmp852, label %if.then854, label %if.end856

if.then854:                                       ; preds = %if.else847
  %call855 = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.713671369, %struct.sv** %sp.713671369, i32 1) #6
  br label %if.end856

if.end856:                                        ; preds = %if.then854, %if.else847
  %sp.8 = phi %struct.sv** [ %call855, %if.then854 ], [ %sp.713671369, %if.else847 ]
  %incdec.ptr857 = getelementptr inbounds %struct.sv** %sp.8, i64 1
  store %struct.sv* %134, %struct.sv** %incdec.ptr857, align 8, !tbaa !0
  br label %for.inc860

for.inc860:                                       ; preds = %sw.epilog, %if.end856, %land.end
  %s.11366 = phi i8* [ %s.113651371, %land.end ], [ %s.113651371, %if.end856 ], [ %s.01387, %sw.epilog ]
  %sp.9 = phi %struct.sv** [ %sp.713671369, %land.end ], [ %incdec.ptr857, %if.end856 ], [ %sp.7, %sw.epilog ]
  %incdec.ptr861 = getelementptr inbounds i8* %s.11366, i64 1
  %137 = load i8* %incdec.ptr861, align 1, !tbaa !1
  %tobool340 = icmp eq i8 %137, 0
  br i1 %tobool340, label %for.end862, label %for.body

for.end862:                                       ; preds = %for.inc860, %if.end339
  %sp.2.lcssa = phi %struct.sv** [ %sp.1, %if.end339 ], [ %sp.9, %for.inc860 ]
  %tobool863 = icmp eq %struct.av* %array.0, null
  br i1 %tobool863, label %if.else872, label %if.then864

if.then864:                                       ; preds = %for.end862
  %138 = load %struct.sv** %cb154, align 8, !tbaa !0
  %139 = bitcast %struct.sv* %138 to %struct.av*
  %cmp866 = icmp eq %struct.av* %array.0, %139
  br i1 %cmp866, label %if.end978, label %if.then868

if.then868:                                       ; preds = %if.then864
  %140 = bitcast %struct.av* %array.0 to %struct.sv*
  %call870 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %140) #6
  call void @Perl_av_push(%struct.av* %139, %struct.sv* %call870) #6
  br label %if.end978

if.else872:                                       ; preds = %for.end862
  store %struct.sv** %sp.2.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %141 = load i8* %argspec.1, align 1, !tbaa !1
  %cmp874 = icmp eq i8 %141, 1
  %142 = load %struct.sv** %cb154, align 8, !tbaa !0
  br i1 %cmp874, label %land.lhs.true876, label %if.else901

land.lhs.true876:                                 ; preds = %if.else872
  %sv_flags878 = getelementptr inbounds %struct.sv* %142, i64 0, i32 2
  %143 = load i32* %sv_flags878, align 4, !tbaa !3
  %and879 = and i32 %143, 524288
  %tobool880 = icmp eq i32 %and879, 0
  br i1 %tobool880, label %if.then881, label %if.else901

if.then881:                                       ; preds = %land.lhs.true876
  %and885 = and i32 %143, 262144
  %cmp886 = icmp eq i32 %and885, 0
  br i1 %cmp886, label %cond.false895, label %cond.true888

cond.true888:                                     ; preds = %if.then881
  %sv_any890 = getelementptr inbounds %struct.sv* %142, i64 0, i32 0
  %144 = load i8** %sv_any890, align 8, !tbaa !0
  %xpv_cur891 = getelementptr inbounds i8* %144, i64 8
  %145 = bitcast i8* %xpv_cur891 to i64*
  %146 = load i64* %145, align 8, !tbaa !4
  store i64 %146, i64* %my_na, align 8, !tbaa !4
  %xpv_pv894 = bitcast i8* %144 to i8**
  %147 = load i8** %xpv_pv894, align 8, !tbaa !0
  br label %cond.end898

cond.false895:                                    ; preds = %if.then881
  %call897 = call i8* @Perl_sv_2pv_flags(%struct.sv* %142, i64* %my_na, i32 2) #6
  br label %cond.end898

cond.end898:                                      ; preds = %cond.false895, %cond.true888
  %cond899 = phi i8* [ %147, %cond.true888 ], [ %call897, %cond.false895 ]
  %call900 = call i32 @Perl_call_method(i8* %cond899, i32 134) #6
  br label %if.end904

if.else901:                                       ; preds = %if.else872, %land.lhs.true876
  %call903 = call i32 @Perl_call_sv(%struct.sv* %142, i32 134) #6
  br label %if.end904

if.end904:                                        ; preds = %if.else901, %cond.end898
  %148 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any905 = getelementptr inbounds %struct.gv* %148, i64 0, i32 0
  %149 = load %struct.xpvgv** %sv_any905, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %149, i64 0, i32 7
  %150 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %150, i64 0, i32 0
  %151 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool906 = icmp eq %struct.sv* %151, null
  br i1 %tobool906, label %if.end973, label %cond.false908

cond.false908:                                    ; preds = %if.end904
  %sv_flags912 = getelementptr inbounds %struct.sv* %151, i64 0, i32 2
  %152 = load i32* %sv_flags912, align 4, !tbaa !3
  %and913 = and i32 %152, 262144
  %tobool914 = icmp eq i32 %and913, 0
  br i1 %tobool914, label %cond.false935, label %cond.true915

cond.true915:                                     ; preds = %cond.false908
  %sv_any919 = getelementptr inbounds %struct.sv* %151, i64 0, i32 0
  %153 = load i8** %sv_any919, align 8, !tbaa !0
  %154 = bitcast i8* %153 to %struct.xpv*
  store %struct.xpv* %154, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool920 = icmp eq i8* %153, null
  br i1 %tobool920, label %if.end973, label %land.lhs.true921

land.lhs.true921:                                 ; preds = %cond.true915
  %xpv_cur922 = getelementptr inbounds i8* %153, i64 8
  %155 = bitcast i8* %xpv_cur922 to i64*
  %156 = load i64* %155, align 8, !tbaa !4
  %cmp923 = icmp ugt i64 %156, 1
  br i1 %cmp923, label %if.then972, label %lor.lhs.false925

lor.lhs.false925:                                 ; preds = %land.lhs.true921
  %tobool927 = icmp eq i64 %156, 0
  br i1 %tobool927, label %if.end973, label %land.lhs.true928

land.lhs.true928:                                 ; preds = %lor.lhs.false925
  %xpv_pv929 = bitcast i8* %153 to i8**
  %157 = load i8** %xpv_pv929, align 8, !tbaa !0
  %158 = load i8* %157, align 1, !tbaa !1
  %cmp931 = icmp eq i8 %158, 48
  br i1 %cmp931, label %if.end973, label %if.then972

cond.false935:                                    ; preds = %cond.false908
  %and940 = and i32 %152, 65536
  %tobool941 = icmp eq i32 %and940, 0
  br i1 %tobool941, label %cond.false950, label %cond.true942

cond.true942:                                     ; preds = %cond.false935
  %sv_any946 = getelementptr inbounds %struct.sv* %151, i64 0, i32 0
  %159 = load i8** %sv_any946, align 8, !tbaa !0
  %xiv_iv947 = getelementptr inbounds i8* %159, i64 24
  %160 = bitcast i8* %xiv_iv947 to i64*
  %161 = load i64* %160, align 8, !tbaa !4
  %cmp948 = icmp eq i64 %161, 0
  br i1 %cmp948, label %if.end973, label %if.then972

cond.false950:                                    ; preds = %cond.false935
  %and955 = and i32 %152, 131072
  %tobool956 = icmp eq i32 %and955, 0
  br i1 %tobool956, label %cond.false965, label %cond.true957

cond.true957:                                     ; preds = %cond.false950
  %sv_any961 = getelementptr inbounds %struct.sv* %151, i64 0, i32 0
  %162 = load i8** %sv_any961, align 8, !tbaa !0
  %xnv_nv962 = getelementptr inbounds i8* %162, i64 32
  %163 = bitcast i8* %xnv_nv962 to double*
  %164 = load double* %163, align 8, !tbaa !5
  %cmp963 = fcmp une double %164, 0.000000e+00
  br i1 %cmp963, label %if.then972, label %if.end973

cond.false965:                                    ; preds = %cond.false950
  %call969 = call signext i8 @Perl_sv_2bool(%struct.sv* %151) #6
  %tobool971 = icmp eq i8 %call969, 0
  br i1 %tobool971, label %if.end973, label %if.then972

if.then972:                                       ; preds = %land.lhs.true928, %cond.true942, %cond.false965, %land.lhs.true921, %cond.true957
  call void (i8*, ...)* @Perl_croak(i8* null) #6
  br label %if.end973

if.end973:                                        ; preds = %land.lhs.true928, %lor.lhs.false925, %cond.true915, %cond.true942, %cond.false965, %if.end904, %if.then972, %cond.true957
  %165 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %166 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp974 = icmp sgt i32 %165, %166
  br i1 %cmp974, label %if.then976, label %if.end977

if.then976:                                       ; preds = %if.end973
  call void @Perl_free_tmps() #6
  br label %if.end977

if.end977:                                        ; preds = %if.then976, %if.end973
  call void @Perl_pop_scope() #6
  br label %if.end978

if.end978:                                        ; preds = %if.then864, %if.then868, %if.end977
  %skipped_text979 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 16
  %167 = load %struct.sv** %skipped_text979, align 8, !tbaa !0
  %tobool980 = icmp eq %struct.sv* %167, null
  br i1 %tobool980, label %return, label %if.then981

if.then981:                                       ; preds = %if.end978
  %sv_any983 = getelementptr inbounds %struct.sv* %167, i64 0, i32 0
  %168 = load i8** %sv_any983, align 8, !tbaa !0
  %xpv_cur984 = getelementptr inbounds i8* %168, i64 8
  %169 = bitcast i8* %xpv_cur984 to i64*
  store i64 0, i64* %169, align 8, !tbaa !4
  br label %return

IGNORE_EVENT:                                     ; preds = %if.then90, %land.lhs.true123, %land.lhs.true131, %if.else137, %if.then146, %if.else99, %if.then103, %if.then97, %if.end52, %if.end48, %if.then116
  %skipped_text986 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 16
  %170 = load %struct.sv** %skipped_text986, align 8, !tbaa !0
  %tobool987 = icmp eq %struct.sv* %170, null
  br i1 %tobool987, label %return, label %if.then988

if.then988:                                       ; preds = %IGNORE_EVENT
  %cmp989 = icmp eq i32 %event, 4
  br i1 %cmp989, label %if.end1000, label %land.lhs.true991

land.lhs.true991:                                 ; preds = %if.then988
  %pend_text992 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 11
  %171 = load %struct.sv** %pend_text992, align 8, !tbaa !0
  %tobool993 = icmp eq %struct.sv* %171, null
  br i1 %tobool993, label %if.end1000, label %land.lhs.true994

land.lhs.true994:                                 ; preds = %land.lhs.true991
  %sv_flags996 = getelementptr inbounds %struct.sv* %171, i64 0, i32 2
  %172 = load i32* %sv_flags996, align 4, !tbaa !3
  %and997 = and i32 %172, 118423552
  %tobool998 = icmp eq i32 %and997, 0
  br i1 %tobool998, label %if.end1000, label %if.then999

if.then999:                                       ; preds = %land.lhs.true994
  call fastcc void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #5
  %.pre = load %struct.sv** %skipped_text986, align 8, !tbaa !0
  br label %if.end1000

if.end1000:                                       ; preds = %land.lhs.true994, %land.lhs.true991, %if.then988, %if.then999
  %173 = phi %struct.sv* [ %170, %land.lhs.true994 ], [ %170, %land.lhs.true991 ], [ %170, %if.then988 ], [ %.pre, %if.then999 ]
  %sv_flags1004 = getelementptr inbounds %struct.sv* %173, i64 0, i32 2
  %174 = load i32* %sv_flags1004, align 4, !tbaa !3
  %and1005 = and i32 %174, 536870912
  %tobool1006 = icmp eq i32 %and1005, 0
  br i1 %tobool12, label %land.lhs.true1002, label %lor.lhs.false1012

land.lhs.true1002:                                ; preds = %if.end1000
  br i1 %tobool1006, label %if.then1007, label %if.then1017

if.then1007:                                      ; preds = %land.lhs.true1002
  %call1009 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %173, i32 2) #6
  %.pre1404 = load %struct.sv** %skipped_text986, align 8, !tbaa !0
  br label %if.then1017

lor.lhs.false1012:                                ; preds = %if.end1000
  br i1 %tobool1006, label %if.then1017, label %if.else1022

if.then1017:                                      ; preds = %if.then1007, %land.lhs.true1002, %lor.lhs.false1012
  %175 = phi %struct.sv* [ %.pre1404, %if.then1007 ], [ %173, %land.lhs.true1002 ], [ %173, %lor.lhs.false1012 ]
  %sub.ptr.lhs.cast1019 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast1020 = ptrtoint i8* %beg to i64
  %sub.ptr.sub1021 = sub i64 %sub.ptr.lhs.cast1019, %sub.ptr.rhs.cast1020
  call void @Perl_sv_catpvn_flags(%struct.sv* %175, i8* %beg, i64 %sub.ptr.sub1021, i32 2) #6
  br label %return

if.else1022:                                      ; preds = %lor.lhs.false1012
  %sub.ptr.lhs.cast1025 = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast1026 = ptrtoint i8* %beg to i64
  %sub.ptr.sub1027 = sub i64 %sub.ptr.lhs.cast1025, %sub.ptr.rhs.cast1026
  %call1028 = call %struct.sv* @Perl_newSVpvn(i8* %beg, i64 %sub.ptr.sub1027) #6
  %call1029 = call i64 @Perl_sv_utf8_upgrade_flags(%struct.sv* %call1028, i32 2) #6
  %pend_text1030 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 11
  %176 = load %struct.sv** %pend_text1030, align 8, !tbaa !0
  call void @Perl_sv_catsv_flags(%struct.sv* %176, %struct.sv* %call1028, i32 2) #6
  call void @Perl_sv_free(%struct.sv* %call1028) #6
  br label %return

return:                                           ; preds = %land.lhs.true177, %lor.lhs.false174, %cond.true168, %cond.true188, %cond.false203, %if.end978, %IGNORE_EVENT, %if.else1022, %if.then1017, %if.then981, %if.then259, %if.else264, %cond.true198
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @flush_pending_text(%struct.p_state* %p_state, %struct.sv* %self) #0 {
entry:
  %unbroken_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 24
  %0 = load i8* %unbroken_text, align 1, !tbaa !1
  %pend_text = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 11
  %1 = load %struct.sv** %pend_text, align 8, !tbaa !0
  %is_cdata = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  %2 = load i8* %is_cdata, align 1, !tbaa !1
  %offset = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 2
  %3 = load i64* %offset, align 8, !tbaa !4
  %line = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 3
  %4 = load i64* %line, align 8, !tbaa !4
  %column = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 4
  %5 = load i64* %column, align 8, !tbaa !4
  store i8 0, i8* %unbroken_text, align 1, !tbaa !1
  store %struct.sv* null, %struct.sv** %pend_text, align 8, !tbaa !0
  %pend_text_is_cdata = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 12
  %6 = load i8* %pend_text_is_cdata, align 1, !tbaa !1
  store i8 %6, i8* %is_cdata, align 1, !tbaa !1
  %pend_text_offset = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 13
  %7 = load i64* %pend_text_offset, align 8, !tbaa !4
  store i64 %7, i64* %offset, align 8, !tbaa !4
  %pend_text_line = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 14
  %8 = load i64* %pend_text_line, align 8, !tbaa !4
  store i64 %8, i64* %line, align 8, !tbaa !4
  %pend_text_column = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 15
  %9 = load i64* %pend_text_column, align 8, !tbaa !4
  store i64 %9, i64* %column, align 8, !tbaa !4
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %10 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %10, i64 8
  %12 = bitcast i8* %xpv_cur to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %11, i64 %13
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %14 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %14, 536870912
  tail call fastcc void @report_event(%struct.p_state* %p_state, i32 4, i8* %11, i8* %add.ptr, i32 %and, %struct.token_pos* null, i32 0, %struct.sv* %self) #5
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and11 = and i32 %15, 1223753727
  store i32 %and11, i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %15, 2097152
  %tobool = icmp eq i32 %and13, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @Perl_sv_backoff(%struct.sv* %1) #6
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  store i8 %0, i8* %unbroken_text, align 1, !tbaa !1
  store %struct.sv* %1, %struct.sv** %pend_text, align 8, !tbaa !0
  store i8 %2, i8* %is_cdata, align 1, !tbaa !1
  store i64 %3, i64* %offset, align 8, !tbaa !4
  store i64 %4, i64* %line, align 8, !tbaa !4
  store i64 %5, i64* %column, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #1

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i64 @Perl_utf8_distance(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @sv_lower(%struct.sv* %sv) #0 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 10223616
  %cmp = icmp eq i32 %and, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %for.cond

cond.false:                                       ; preds = %entry
  %call = call i8* @Perl_sv_pvn_force_flags(%struct.sv* %sv, i64* %len, i32 2) #6
  br label %for.condthread-pre-split

for.condthread-pre-split:                         ; preds = %for.body, %cond.false
  %s.0.ph = phi i8* [ %call, %cond.false ], [ %incdec.ptr, %for.body ]
  %.pr = load i64* %len, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.condthread-pre-split, %cond.true
  %5 = phi i64 [ %.pr, %for.condthread-pre-split ], [ %3, %cond.true ]
  %s.0 = phi i8* [ %s.0.ph, %for.condthread-pre-split ], [ %4, %cond.true ]
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len, align 8, !tbaa !4
  %tobool = icmp eq i64 %5, 0
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %6 = load i8* %s.0, align 1, !tbaa !1
  %.off = add i8 %6, -65
  %7 = icmp ult i8 %.off, 26
  %add = add i8 %6, 32
  %add. = select i1 %7, i8 %add, i8 %6
  store i8 %add., i8* %s.0, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %s.0, i64 1
  br label %for.condthread-pre-split

for.end:                                          ; preds = %for.cond
  ret %struct.sv* %sv
}

; Function Attrs: optsize
declare i32 @Perl_sv_eq(%struct.sv*, %struct.sv*) #1

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #1

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags(%struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #1

; Function Attrs: optsize
declare void @Perl_push_scope() #1

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #1

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #1

; Function Attrs: optsize
declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #1

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #1

; Function Attrs: optsize
declare signext i8 @Perl_hv_exists_ent(%struct.hv*, %struct.sv*, i32) #1

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #1

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #1

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #1

; Function Attrs: optsize
declare void @Perl_free_tmps() #1

; Function Attrs: optsize
declare void @Perl_pop_scope() #1

; Function Attrs: optsize
declare %struct.sv* @Perl_av_pop(%struct.av*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @marked_section_update(%struct.p_state* nocapture %p_state) #0 {
entry:
  %len = alloca i64, align 8
  %ms_stack1 = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 18
  %0 = load %struct.av** %ms_stack1, align 8, !tbaa !0
  %ms = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 17
  store i32 0, i32* %ms, align 4, !tbaa !6
  %tobool = icmp eq %struct.av* %0, null
  br i1 %tobool, label %if.end45, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @Perl_av_len(%struct.av* %0) #6
  %cmp71 = icmp slt i32 %call, 0
  br i1 %cmp71, label %if.end45.loopexit, label %for.body

for.body:                                         ; preds = %if.then, %for.inc42
  %stack_idx.072 = phi i32 [ %inc43, %for.inc42 ], [ 0, %if.then ]
  %call2 = call %struct.sv** @Perl_av_fetch(%struct.av* %0, i32 %stack_idx.072, i32 0) #6
  %tobool3 = icmp eq %struct.sv** %call2, null
  br i1 %tobool3, label %for.inc42, label %if.then4

if.then4:                                         ; preds = %for.body
  %1 = load %struct.sv** %call2, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %2 to %struct.sv**
  %3 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %4 = bitcast %struct.sv* %3 to %struct.av*
  %call5 = call i32 @Perl_av_len(%struct.av* %4) #6
  %cmp769 = icmp slt i32 %call5, 0
  br i1 %cmp769, label %for.inc42, label %for.body8

for.body8:                                        ; preds = %if.then4, %for.inc
  %i.070 = phi i32 [ %inc, %for.inc ], [ 0, %if.then4 ]
  %call10 = call %struct.sv** @Perl_av_fetch(%struct.av* %4, i32 %i.070, i32 0) #6
  %tobool11 = icmp eq %struct.sv** %call10, null
  br i1 %tobool11, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body8
  %5 = load %struct.sv** %call10, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 262144
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then12
  %sv_any14 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any14, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  store i64 %9, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %7 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  %call16 = call i8* @Perl_sv_2pv_flags(%struct.sv* %5, i64* %len, i32 2) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ %call16, %cond.false ]
  %call17 = call i32 @strcmp(i8* %cond, i8* getelementptr inbounds ([8 x i8]* @.str97, i64 0, i64 0)) #6
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.end34, label %if.else

if.else:                                          ; preds = %cond.end
  %call20 = call i32 @strcmp(i8* %cond, i8* getelementptr inbounds ([7 x i8]* @.str101, i64 0, i64 0)) #6
  %tobool21 = icmp eq i32 %call20, 0
  br i1 %tobool21, label %if.end34, label %if.else23

if.else23:                                        ; preds = %if.else
  %call24 = call i32 @strcmp(i8* %cond, i8* getelementptr inbounds ([6 x i8]* @.str102, i64 0, i64 0)) #6
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %if.end34, label %if.else27

if.else27:                                        ; preds = %if.else23
  %call28 = call i32 @strcmp(i8* %cond, i8* getelementptr inbounds ([7 x i8]* @.str103, i64 0, i64 0)) #6
  %tobool29 = icmp eq i32 %call28, 0
  %. = select i1 %tobool29, i32 4, i32 0
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %if.else23, %if.else, %cond.end
  %token.0 = phi i32 [ 1, %cond.end ], [ 2, %if.else ], [ 3, %if.else23 ], [ %., %if.else27 ]
  %11 = load i32* %ms, align 4, !tbaa !6
  %cmp36 = icmp ult i32 %11, %token.0
  br i1 %cmp36, label %if.then37, label %for.inc

if.then37:                                        ; preds = %if.end34
  store i32 %token.0, i32* %ms, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %if.then37, %if.end34
  %inc = add nsw i32 %i.070, 1
  %exitcond = icmp eq i32 %i.070, %call5
  br i1 %exitcond, label %for.inc42, label %for.body8

for.inc42:                                        ; preds = %if.then4, %for.inc, %for.body
  %inc43 = add nsw i32 %stack_idx.072, 1
  %exitcond73 = icmp eq i32 %stack_idx.072, %call
  br i1 %exitcond73, label %if.end45.loopexit, label %for.body

if.end45.loopexit:                                ; preds = %for.inc42, %if.then
  %.pre = load i32* %ms, align 4, !tbaa !6
  %phitmp = icmp eq i32 %.pre, 3
  br label %if.end45

if.end45:                                         ; preds = %if.end45.loopexit, %entry
  %12 = phi i1 [ %phitmp, %if.end45.loopexit ], [ false, %entry ]
  %conv48 = zext i1 %12 to i8
  %is_cdata = getelementptr inbounds %struct.p_state* %p_state, i64 0, i32 8
  store i8 %conv48, i8* %is_cdata, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @strnEQx(i8* nocapture %s1, i8* nocapture %s2, i64 %n, i32 %ignore_case) #4 {
entry:
  %tobool45 = icmp eq i64 %n, 0
  br i1 %tobool45, label %return, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %tobool1 = icmp eq i32 %ignore_case, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end31
  %dec48.in = phi i64 [ %n, %while.body.lr.ph ], [ %dec48, %if.end31 ]
  %s2.addr.047 = phi i8* [ %s2, %while.body.lr.ph ], [ %incdec.ptr32, %if.end31 ]
  %s1.addr.046 = phi i8* [ %s1, %while.body.lr.ph ], [ %incdec.ptr, %if.end31 ]
  %dec48 = add i64 %dec48.in, -1
  %0 = load i8* %s1.addr.046, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %.off = add i8 %0, -65
  %1 = icmp ult i8 %.off, 26
  %add = add nsw i32 %conv, 32
  %add.conv = select i1 %1, i32 %add, i32 %conv
  %2 = load i8* %s2.addr.047, align 1, !tbaa !1
  %conv8 = sext i8 %2 to i32
  %.off43 = add i8 %2, -65
  %3 = icmp ult i8 %.off43, 26
  %add17 = add nsw i32 %conv8, 32
  %cond21 = select i1 %3, i32 %add17, i32 %conv8
  %cmp22 = icmp eq i32 %add.conv, %cond21
  br i1 %cmp22, label %if.end31, label %return

if.else:                                          ; preds = %while.body
  %4 = load i8* %s2.addr.047, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %0, %4
  br i1 %cmp27, label %if.end31, label %return

if.end31:                                         ; preds = %if.then, %if.else
  %incdec.ptr = getelementptr inbounds i8* %s1.addr.046, i64 1
  %incdec.ptr32 = getelementptr inbounds i8* %s2.addr.047, i64 1
  %tobool = icmp eq i64 %dec48, 0
  br i1 %tobool, label %return, label %while.body

return:                                           ; preds = %if.end31, %if.else, %if.then, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then ], [ 0, %if.else ], [ 1, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @tokens_grow(%struct.token_pos** nocapture %token_ptr, i32* nocapture %token_lim_ptr, i8 signext %tokens_on_heap) #0 {
entry:
  %0 = load i32* %token_lim_ptr, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, 4
  %.op = shl i32 %0, 1
  %mul = select i1 %cmp, i32 8, i32 %.op
  %tobool = icmp eq i8 %tokens_on_heap, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %entry
  %1 = load %struct.token_pos** %token_ptr, align 8, !tbaa !0
  %2 = bitcast %struct.token_pos* %1 to i8*
  %conv = sext i32 %mul to i64
  %mul2 = shl nsw i64 %conv, 4
  %call = tail call i8* @Perl_safesysrealloc(i8* %2, i64 %mul2) #6
  %3 = bitcast i8* %call to %struct.token_pos*
  br label %if.end10

if.else:                                          ; preds = %entry
  %conv3 = sext i32 %mul to i64
  %mul4 = shl nsw i64 %conv3, 4
  %call5 = tail call i8* @Perl_safesysmalloc(i64 %mul4) #6
  %4 = bitcast i8* %call5 to %struct.token_pos*
  %5 = load i32* %token_lim_ptr, align 4, !tbaa !3
  %cmp624 = icmp sgt i32 %5, 0
  br i1 %cmp624, label %for.body, label %if.end10

for.body:                                         ; preds = %if.else, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds %struct.token_pos* %4, i64 %indvars.iv
  %6 = load %struct.token_pos** %token_ptr, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.token_pos* %6, i64 %indvars.iv
  %7 = bitcast %struct.token_pos* %arrayidx to i8*
  %8 = bitcast %struct.token_pos* %arrayidx9 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !tbaa.struct !7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %token_lim_ptr, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %10, %9
  br i1 %cmp6, label %for.body, label %if.end10

if.end10:                                         ; preds = %if.else, %for.body, %if.then1
  %storemerge = phi %struct.token_pos* [ %3, %if.then1 ], [ %4, %for.body ], [ %4, %if.else ]
  store %struct.token_pos* %storemerge, %struct.token_pos** %token_ptr, align 8, !tbaa !0
  store i32 %mul, i32* %token_lim_ptr, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i8* @skip_until_gt(i8* %beg, i8* %end) #4 {
entry:
  %cmp39 = icmp ult i8* %beg, %end
  br i1 %cmp39, label %while.body, label %return

while.body:                                       ; preds = %entry, %if.end27
  %prev.043 = phi i32 [ %phitmp, %if.end27 ], [ 32, %entry ]
  %quote.042 = phi i8 [ %quote.1, %if.end27 ], [ 0, %entry ]
  %s.040 = phi i8* [ %incdec.ptr, %if.end27 ], [ %beg, %entry ]
  %tobool = icmp ne i8 %quote.042, 0
  %.pr = load i8* %s.040, align 1, !tbaa !1
  %tobool.not = xor i1 %tobool, true
  %cmp1 = icmp eq i8 %.pr, 62
  %or.cond = and i1 %cmp1, %tobool.not
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %while.body
  switch i8 %.pr, label %if.end27 [
    i8 34, label %if.then9
    i8 39, label %if.then9
  ]

if.then9:                                         ; preds = %if.end, %if.end
  %cmp12 = icmp eq i8 %.pr, %quote.042
  %brmerge = or i1 %cmp12, %tobool
  %.mux = select i1 %cmp12, i8 0, i8 %quote.042
  br i1 %brmerge, label %if.end27, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.then9
  switch i32 %prev.043, label %if.end27 [
    i32 32, label %if.then24
    i32 61, label %if.then24
  ]

if.then24:                                        ; preds = %land.lhs.true16, %land.lhs.true16
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true16, %if.then9, %if.end, %if.then24
  %quote.1 = phi i8 [ %.pr, %if.then24 ], [ %quote.042, %if.end ], [ %.mux, %if.then9 ], [ 0, %land.lhs.true16 ]
  %incdec.ptr = getelementptr inbounds i8* %s.040, i64 1
  %phitmp = sext i8 %.pr to i32
  %cmp = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp, label %while.body, label %return

return:                                           ; preds = %if.end27, %while.body, %entry
  %retval.0 = phi i8* [ %end, %entry ], [ %s.040, %while.body ], [ %end, %if.end27 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.p_state* @get_pstate_iv(%struct.sv* %sv) #0 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 65536
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %1, i64 24
  %2 = bitcast i8* %xiv_iv to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2iv(%struct.sv* %sv) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = inttoptr i64 %cond to %struct.p_state*
  %signature = getelementptr inbounds %struct.p_state* %4, i64 0, i32 0
  %5 = load i32* %signature, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, 369695076
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str106, i64 0, i64 0), %struct.p_state* %4) #6
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret %struct.p_state* %4
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"_ZTS16marked_section_t", metadata !1}
!7 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 8, metadata !0}
