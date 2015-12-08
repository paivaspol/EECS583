; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/regcomp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regnode = type { i8, i8, i16 }
%struct.reg_data = type { i32, i8*, [1 x i8*] }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.interpreter = type { i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.reg_substr_data = type { [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i32, i32, %struct.sv*, %struct.sv* }
%struct.curcur = type { i32, i32, i32, i32, i32, %struct.regnode*, %struct.regnode*, i8*, %struct.curcur* }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.re_cc_state = type opaque
%struct.scan_data_t = type { i32, i32, i32, i32, %struct.sv*, i32, i32, i32, %struct.sv**, %struct.sv*, i32, %struct.sv*, i32, i32, i32, i32, i32*, %struct.regnode_charclass_class* }
%struct.regnode_charclass_class = type { i8, i8, i16, i32, [32 x i8], [4 x i8] }
%struct.RExC_state_t = type { i32, i8*, %struct.regexp*, i8*, i8*, i8*, i32, %struct.regnode*, %struct.regnode*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PL_regkind = constant [62 x i8] c"\00\00\02\02\02\06\06\06\06\09\09\0B\0B\0D\0E\0E\0E\11\12\12\14\14\16\16\18\18\1A\1A\1C\1C\1E\1F !!!$$&'((((,-.///88886789:;8$", align 16
@PL_varies = constant [17 x i8] c"\1F &'(+/01,*)854\1E\00", align 16
@PL_simple = constant [15 x i8] c"\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1C\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"PERL_RE_COLORS\00", align 1
@PL_colors = external global [6 x i8*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_colorset = external global i32
@PL_regdummy = external global %struct.regnode
@.str2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"%s in regex m/%.*s%s/\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"NULL regexp argument\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c"Regexp out of space\00", align 1
@regarglen = internal unnamed_addr constant [62 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\01\00", align 16
@.str6 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@PL_regdata = external global %struct.reg_data*
@.str7 = private unnamed_addr constant [24 x i8] c"panic: pregfree comppad\00", align 1
@PL_comppad = external global %struct.av*
@PL_curpad = external global %struct.sv**
@.str8 = private unnamed_addr constant [30 x i8] c"panic: regfree data code '%c'\00", align 1
@PL_reg_flags = external global i32
@PL_bostr = external global i8*
@PL_reginput = external global i8*
@PL_regbol = external global i8*
@PL_regeol = external global i8*
@PL_regstartp = external global i32*
@PL_regendp = external global i32*
@PL_reglastparen = external global i32*
@PL_reglastcloseparen = external global i32*
@PL_regtill = external global i8*
@PL_reg_start_tmp = external global i8**
@PL_reg_start_tmpl = external global i32
@PL_reg_eval_set = external global i32
@PL_regnarrate = external global i32
@PL_regprogram = external global %struct.regnode*
@PL_regindent = external global i32
@PL_regcc = external global %struct.curcur*
@PL_curcop = external global %struct.cop*
@PL_reg_call_cc = external global %struct.re_cc_state*
@PL_reg_re = external global %struct.regexp*
@PL_reg_ganch = external global i8*
@PL_reg_sv = external global %struct.sv*
@PL_reg_match_utf8 = external global i8
@PL_reg_magic = external global %struct.magic*
@PL_reg_oldpos = external global i32
@PL_reg_oldcurpm = external global %struct.pmop*
@PL_reg_curpm = external global %struct.pmop*
@PL_reg_oldsaved = external global i8*
@PL_reg_oldsavedlen = external global i64
@PL_reg_maxiter = external global i32
@PL_reg_leftiter = external global i32
@PL_reg_poscache = external global i8*
@PL_reg_poscache_size = external global i64
@PL_regprecomp = external global i8*
@PL_regnpar = external global i32
@PL_regsize = external global i32
@PL_curpm = external global %struct.pmop*
@.str9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@PL_regfree = external global void (%struct.regexp*)*
@.str10 = private unnamed_addr constant [34 x i8] c"Sequence (?%c...) not implemented\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c" in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str12 = private unnamed_addr constant [31 x i8] c"Sequence (?#... not terminated\00", align 1
@PL_dowarn = external global i8
@.str13 = private unnamed_addr constant [55 x i8] c"%s in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str14 = private unnamed_addr constant [34 x i8] c"(?p{}) is deprecated - use (??{})\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"Sequence (?{...}) not terminated or not {}-balanced\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@PL_reginterp_cnt = external global i32
@PL_compiling = external global %struct.cop
@.str18 = private unnamed_addr constant [49 x i8] c"Eval-group not allowed at runtime, use re 'eval'\00", align 1
@PL_tainting = external global i8
@PL_tainted = external global i8
@.str19 = private unnamed_addr constant [42 x i8] c"Eval-group in insecure regular expression\00", align 1
@.str20 = private unnamed_addr constant [36 x i8] c"value of node is %d in Length macro\00", align 1
@.str21 = private unnamed_addr constant [36 x i8] c"value of node is %d in Offset macro\00", align 1
@.str22 = private unnamed_addr constant [32 x i8] c"Switch condition not recognized\00", align 1
@.str23 = private unnamed_addr constant [51 x i8] c"Switch (?(condition)... contains too many branches\00", align 1
@.str24 = private unnamed_addr constant [33 x i8] c"Unknown switch condition (?(%.2s\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"Sequence (? incomplete\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"iogcmsx\00", align 1
@.str27 = private unnamed_addr constant [88 x i8] c"Useless (%s%c) - %suse /%c modifier in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"?-\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"don't \00", align 1
@.str31 = private unnamed_addr constant [87 x i8] c"Useless (%sc) - %suse /gc modifier in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str32 = private unnamed_addr constant [34 x i8] c"Sequence (%.*s...) not recognized\00", align 1
@S_reg.parens = internal global [6 x i8] c"=!<,>\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"Unmatched (\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"Unmatched )\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"Junk on end of regexp\00", align 1
@.str36 = private unnamed_addr constant [33 x i8] c"Quantifier in {,} bigger than %d\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"Can't do {n,m} with n > m\00", align 1
@.str38 = private unnamed_addr constant [88 x i8] c"%.*s matches null string many times in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str39 = private unnamed_addr constant [19 x i8] c"Nested quantifiers\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"Unmatched [\00", align 1
@.str41 = private unnamed_addr constant [13 x i8] c"Internal urp\00", align 1
@.str42 = private unnamed_addr constant [27 x i8] c"Quantifier follows nothing\00", align 1
@.str43 = private unnamed_addr constant [29 x i8] c"Missing right brace on \5C%c{}\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"Reference to nonexistent group\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c"Trailing \5C\00", align 1
@.str46 = private unnamed_addr constant [28 x i8] c"Missing right brace on \5Cx{}\00", align 1
@.str47 = private unnamed_addr constant [91 x i8] c"Unrecognized escape \5C%c passed through in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str48 = private unnamed_addr constant [18 x i8] c"Internal disaster\00", align 1
@PL_encoding = external global %struct.sv*
@.str49 = private unnamed_addr constant [11 x i8] c"# comment\0A\00", align 1
@.str50 = private unnamed_addr constant [12 x i8] c"Empty \5C%c{}\00", align 1
@.str51 = private unnamed_addr constant [13 x i8] c"+utf8::%.*s\0A\00", align 1
@.str52 = private unnamed_addr constant [13 x i8] c"!utf8::%.*s\0A\00", align 1
@.str53 = private unnamed_addr constant [110 x i8] c"Unrecognized escape \5C%c in character class passed through in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str54 = private unnamed_addr constant [75 x i8] c"False [] range \22%*.*s\22 in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str55 = private unnamed_addr constant [13 x i8] c"%04lx\0A%04lx\0A\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"Word\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"Alnum\00", align 1
@.str58 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"Blank\00", align 1
@.str61 = private unnamed_addr constant [6 x i8] c"Cntrl\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"Digit\00", align 1
@.str63 = private unnamed_addr constant [6 x i8] c"Graph\00", align 1
@.str64 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str65 = private unnamed_addr constant [6 x i8] c"Print\00", align 1
@.str66 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str67 = private unnamed_addr constant [6 x i8] c"Punct\00", align 1
@.str68 = private unnamed_addr constant [10 x i8] c"SpacePerl\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str70 = private unnamed_addr constant [7 x i8] c"XDigit\00", align 1
@.str71 = private unnamed_addr constant [19 x i8] c"Invalid [::] class\00", align 1
@.str72 = private unnamed_addr constant [14 x i8] c"%cutf8::Is%s\0A\00", align 1
@.str73 = private unnamed_addr constant [25 x i8] c"Invalid [] range \22%*.*s\22\00", align 1
@.str74 = private unnamed_addr constant [13 x i8] c"%04lx\09%04lx\0A\00", align 1
@.str75 = private unnamed_addr constant [7 x i8] c"%04lx\0A\00", align 1
@PL_fold = external constant [0 x i8]
@.str76 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str77 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str78 = private unnamed_addr constant [5 x i8] c"alph\00", align 1
@.str79 = private unnamed_addr constant [5 x i8] c"spac\00", align 1
@.str80 = private unnamed_addr constant [5 x i8] c"grap\00", align 1
@.str81 = private unnamed_addr constant [5 x i8] c"asci\00", align 1
@.str82 = private unnamed_addr constant [5 x i8] c"blan\00", align 1
@.str83 = private unnamed_addr constant [5 x i8] c"cntr\00", align 1
@.str84 = private unnamed_addr constant [5 x i8] c"alnu\00", align 1
@.str85 = private unnamed_addr constant [5 x i8] c"lowe\00", align 1
@.str86 = private unnamed_addr constant [5 x i8] c"uppe\00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c"digi\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c"prin\00", align 1
@.str89 = private unnamed_addr constant [5 x i8] c"punc\00", align 1
@.str90 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str91 = private unnamed_addr constant [29 x i8] c"POSIX class [:%.*s:] unknown\00", align 1
@.str92 = private unnamed_addr constant [55 x i8] c"POSIX syntax [%c %c] is reserved for future extensions\00", align 1
@.str93 = private unnamed_addr constant [106 x i8] c"POSIX syntax [%c %c] belongs inside character classes in regex; marked by <-- HERE in m/%.*s <-- HERE %s/\00", align 1
@.str94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str95 = private unnamed_addr constant [33 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c"\CC\88\CC\81\00", align 1
@.str97 = private unnamed_addr constant [48 x i8] c"Quantifier unexpected on zero-length expression\00", align 1
@.str98 = private unnamed_addr constant [16 x i8] c"Panic opt close\00", align 1
@.str99 = private unnamed_addr constant [43 x i8] c"Variable length lookbehind not implemented\00", align 1
@.str100 = private unnamed_addr constant [43 x i8] c"Lookbehind longer than %lu not implemented\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Perl_reginitcolors() #0 {
entry:
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #8
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.body10, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @Perl_savepv(i8* %call) #8
  store i8* %call1, i8** getelementptr inbounds ([6 x i8*]* @PL_colors, i64 0, i64 0), align 8, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %if.then
  %indvars.iv29 = phi i64 [ 1, %if.then ], [ %indvars.iv.next30, %while.cond.backedge ]
  %s.027 = phi i8* [ %call1, %if.then ], [ %s.0.be, %while.cond.backedge ]
  %call2 = tail call i8* @strchr(i8* %s.027, i32 9) #8
  %tobool3 = icmp eq i8* %call2, null
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %while.body
  store i8 0, i8* %call2, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %call2, i64 1
  %arrayidx = getelementptr inbounds [6 x i8*]* @PL_colors, i64 0, i64 %indvars.iv29
  store i8* %incdec.ptr, i8** %arrayidx, align 8, !tbaa !0
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %arrayidx6 = getelementptr inbounds [6 x i8*]* @PL_colors, i64 0, i64 %indvars.iv29
  store i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8** %arrayidx6, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then4
  %s.0.be = phi i8* [ %incdec.ptr, %if.then4 ], [ getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), %if.else ]
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, 6
  br i1 %exitcond32, label %if.end15, label %while.body

while.body10:                                     ; preds = %entry, %while.body10
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body10 ], [ 0, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx13 = getelementptr inbounds [6 x i8*]* @PL_colors, i64 0, i64 %indvars.iv
  store i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8** %arrayidx13, align 8, !tbaa !0
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 6
  br i1 %exitcond, label %if.end15, label %while.body10

if.end15:                                         ; preds = %while.cond.backedge, %while.body10
  store i32 1, i32* @PL_colorset, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.regexp* @Perl_pregcomp(i8* %exp, i8* %xend, %struct.pmop* nocapture %pm) #0 {
entry:
  %scan = alloca %struct.regnode*, align 8
  %first = alloca %struct.regnode*, align 8
  %flags = alloca i32, align 4
  %data = alloca %struct.scan_data_t, align 8
  %RExC_state = alloca %struct.RExC_state_t, align 8
  %fake = alloca i32, align 4
  %ch_class = alloca %struct.regnode_charclass_class, align 8
  %last_close = alloca i32, align 4
  %fake741 = alloca i32, align 4
  %ch_class742 = alloca %struct.regnode_charclass_class, align 8
  %last_close743 = alloca i32, align 4
  %0 = bitcast %struct.scan_data_t* %data to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #3
  %1 = bitcast %struct.RExC_state_t* %RExC_state to i8*
  call void @llvm.lifetime.start(i64 112, i8* %1) #3
  %cmp = icmp eq i8* %exp, null
  br i1 %cmp, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  %precomp9.pre = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 1
  %end14.pre = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 4
  %emit15.pre = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 8
  br label %if.end7

if.end:                                           ; preds = %entry
  %end = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 4
  %precomp = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 1
  %emit = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 8
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* undef) #8
  %.pre = load i8** %precomp, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32 undef, i8* %.pre, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #8
  br label %if.end7

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.end
  %emit15.pre-phi = phi %struct.regnode** [ %emit15.pre, %entry.if.end7_crit_edge ], [ %emit, %if.end ]
  %end14.pre-phi = phi i8** [ %end14.pre, %entry.if.end7_crit_edge ], [ %end, %if.end ]
  %precomp9.pre-phi = phi i8** [ %precomp9.pre, %entry.if.end7_crit_edge ], [ %precomp, %if.end ]
  %op_pmdynflags = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 16
  %2 = load i8* %op_pmdynflags, align 1, !tbaa !1
  %conv8 = zext i8 %2 to i32
  %and = and i32 %conv8, 12
  %utf8 = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 17
  store i32 %and, i32* %utf8, align 8, !tbaa !3
  store i8* %exp, i8** %precomp9.pre-phi, align 8, !tbaa !0
  %op_pmflags = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 14
  %3 = load i32* %op_pmflags, align 4, !tbaa !3
  %flags10 = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 0
  store i32 %3, i32* %flags10, align 8, !tbaa !3
  %sawback = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 10
  store i32 0, i32* %sawback, align 4, !tbaa !3
  %seen = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 11
  store i32 0, i32* %seen, align 8, !tbaa !3
  %4 = load i8* %exp, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %4, 94
  %cond = sext i1 %cmp12 to i32
  %seen_zerolen = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 15
  store i32 %cond, i32* %seen_zerolen, align 8, !tbaa !3
  %seen_evals = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 16
  store i32 0, i32* %seen_evals, align 4, !tbaa !3
  %extralen = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 14
  store i32 0, i32* %extralen, align 4, !tbaa !3
  %parse = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 5
  store i8* %exp, i8** %parse, align 8, !tbaa !0
  %start = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 3
  store i8* %exp, i8** %start, align 8, !tbaa !0
  store i8* %xend, i8** %end14.pre-phi, align 8, !tbaa !0
  %naughty = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 9
  store i32 0, i32* %naughty, align 8, !tbaa !3
  %npar = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 13
  store i32 1, i32* %npar, align 8, !tbaa !3
  %size = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 12
  store i32 0, i32* %size, align 4, !tbaa !3
  store %struct.regnode* @PL_regdummy, %struct.regnode** %emit15.pre-phi, align 8, !tbaa !0
  %whilem_seen = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 6
  store i32 0, i32* %whilem_seen, align 8, !tbaa !3
  %call = call fastcc %struct.regnode* @S_reg(%struct.RExC_state_t* %RExC_state, i32 0, i32* %flags) #9
  %cmp16 = icmp eq %struct.regnode* %call, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end7
  store i8* null, i8** %precomp9.pre-phi, align 8, !tbaa !0
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %5 = load i32* %size, align 4, !tbaa !3
  %cmp23 = icmp sgt i32 %5, 65535
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %6 = load i32* %extralen, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %size, align 4, !tbaa !3
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true, %if.end20
  store i32 0, i32* %extralen, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %7 = phi i32 [ %5, %if.else ], [ %add, %if.then26 ]
  %8 = load i32* %whilem_seen, align 8, !tbaa !3
  %cmp32 = icmp sgt i32 %8, 15
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end30
  store i32 15, i32* %whilem_seen, align 8, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30
  %conv38 = zext i32 %7 to i64
  %mul = shl nuw nsw i64 %conv38, 2
  %add39 = add i64 %mul, 104
  %call41 = call i8* @Perl_safesysmalloc(i64 %add39) #8
  %9 = bitcast i8* %call41 to %struct.regexp*
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then44, label %if.end64

if.then44:                                        ; preds = %if.end36
  %10 = load i8** %end14.pre-phi, align 8, !tbaa !0
  %11 = load i8** %precomp9.pre-phi, align 8, !tbaa !0
  %sub.ptr.lhs.cast49 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %11 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %12 = load %struct.regnode** %emit15.pre-phi, align 8, !tbaa !0
  %cmp53 = icmp eq %struct.regnode* %12, @PL_regdummy
  br i1 %cmp53, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.then44
  %rx56 = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 2
  %13 = load %struct.regexp** %rx56, align 8, !tbaa !0
  %14 = bitcast %struct.regexp* %13 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %14) #8
  %.pre1114 = load i8** %precomp9.pre-phi, align 8, !tbaa !0
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then44
  %15 = phi i8* [ %.pre1114, %if.then55 ], [ %11, %if.then44 ]
  %cmp58 = icmp sgt i64 %sub.ptr.sub51, 127
  %.1082 = select i1 %cmp58, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %16 = trunc i64 %sub.ptr.sub51 to i32
  %conv62 = select i1 %cmp58, i32 117, i32 %16
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0), i32 %conv62, i8* %15, i8* %.1082) #8
  br label %if.end64

if.end64:                                         ; preds = %if.end57, %if.end36
  %refcnt = getelementptr inbounds i8* %call41, i64 68
  %17 = bitcast i8* %refcnt to i32*
  store i32 1, i32* %17, align 4, !tbaa !3
  %sub.ptr.lhs.cast65 = ptrtoint i8* %xend to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %exp to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  %prelen = getelementptr inbounds i8* %call41, i64 76
  %18 = bitcast i8* %prelen to i32*
  store i32 %conv68, i32* %18, align 4, !tbaa !3
  %19 = load i8** %precomp9.pre-phi, align 8, !tbaa !0
  %call71 = call i8* @Perl_savepvn(i8* %19, i32 %conv68) #8
  %precomp72 = getelementptr inbounds i8* %call41, i64 32
  %20 = bitcast i8* %precomp72 to i8**
  store i8* %call71, i8** %20, align 8, !tbaa !0
  %subbeg = getelementptr inbounds i8* %call41, i64 48
  %21 = bitcast i8* %subbeg to i8**
  store i8* null, i8** %21, align 8, !tbaa !0
  %22 = load i32* %op_pmflags, align 4, !tbaa !3
  %and74 = and i32 %22, 63488
  %reganch = getelementptr inbounds i8* %call41, i64 92
  %23 = bitcast i8* %reganch to i32*
  store i32 %and74, i32* %23, align 4, !tbaa !3
  %24 = load i32* %npar, align 8, !tbaa !3
  %sub = add nsw i32 %24, -1
  %nparens = getelementptr inbounds i8* %call41, i64 80
  %25 = bitcast i8* %nparens to i32*
  store i32 %sub, i32* %25, align 4, !tbaa !3
  %substrs = getelementptr inbounds i8* %call41, i64 24
  %26 = bitcast i8* %substrs to %struct.reg_substr_data**
  store %struct.reg_substr_data* null, %struct.reg_substr_data** %26, align 8, !tbaa !0
  %startp = bitcast i8* %call41 to i32**
  %endp = getelementptr inbounds i8* %call41, i64 8
  %27 = bitcast i8* %endp to i32**
  call void @llvm.memset.p0i8.i64(i8* %call41, i8 0, i64 16, i32 8, i1 false)
  %28 = load i32* %size, align 4, !tbaa !3
  %mul77 = shl nsw i32 %28, 1
  %add781077 = or i32 %mul77, 1
  %conv79 = sext i32 %add781077 to i64
  %mul80 = shl nsw i64 %conv79, 2
  %call81 = call i8* @Perl_safesysmalloc(i64 %mul80) #8
  %29 = bitcast i8* %call81 to i32*
  %offsets = getelementptr inbounds i8* %call41, i64 56
  %30 = bitcast i8* %offsets to i32**
  store i32* %29, i32** %30, align 8, !tbaa !0
  %31 = load i32* %size, align 4, !tbaa !3
  %mul84 = shl nsw i32 %31, 1
  %add851078 = or i32 %mul84, 1
  %conv86 = sext i32 %add851078 to i64
  %mul87 = shl nsw i64 %conv86, 2
  call void @llvm.memset.p0i8.i64(i8* %call81, i8 0, i64 %mul87, i32 1, i1 false)
  %32 = load i32** %30, align 8, !tbaa !0
  %tobool89 = icmp eq i32* %32, null
  br i1 %tobool89, label %if.end93, label %if.then90

if.then90:                                        ; preds = %if.end64
  %33 = load i32* %size, align 4, !tbaa !3
  store i32 %33, i32* %32, align 4, !tbaa !3
  br label %if.end93

if.end93:                                         ; preds = %if.end64, %if.then90
  %rx94 = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 2
  store %struct.regexp* %9, %struct.regexp** %rx94, align 8, !tbaa !0
  %34 = load i32* %op_pmflags, align 4, !tbaa !3
  store i32 %34, i32* %flags10, align 8, !tbaa !3
  store i8* %exp, i8** %parse, align 8, !tbaa !0
  store i8* %xend, i8** %end14.pre-phi, align 8, !tbaa !0
  store i32 0, i32* %naughty, align 8, !tbaa !3
  store i32 1, i32* %npar, align 8, !tbaa !3
  %program = getelementptr inbounds i8* %call41, i64 96
  %arraydecay = bitcast i8* %program to %struct.regnode*
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %RExC_state, i64 0, i32 7
  store %struct.regnode* %arraydecay, %struct.regnode** %emit_start, align 8, !tbaa !0
  store %struct.regnode* %arraydecay, %struct.regnode** %emit15.pre-phi, align 8, !tbaa !0
  %35 = load i32* %seen_evals, align 4, !tbaa !3
  %cmp105 = icmp sgt i32 %35, 65535
  %phitmp = trunc i32 %35 to i16
  %.phitmp = select i1 %cmp105, i16 -1, i16 %phitmp
  %next_off = getelementptr inbounds i8* %call41, i64 98
  %36 = bitcast i8* %next_off to i16*
  store i16 %.phitmp, i16* %36, align 2, !tbaa !4
  %cmp112 = icmp eq i8* %program, getelementptr inbounds (%struct.regnode* @PL_regdummy, i64 0, i32 0)
  %incdec.ptr118 = getelementptr inbounds i8* %call41, i64 100
  %37 = bitcast i8* %incdec.ptr118 to %struct.regnode*
  store %struct.regnode* %37, %struct.regnode** %emit15.pre-phi, align 8, !tbaa !0
  br i1 %cmp112, label %if.end119, label %if.then114

if.then114:                                       ; preds = %if.end93
  store i8 -100, i8* %program, align 1, !tbaa !1
  br label %if.end119

if.end119:                                        ; preds = %if.end93, %if.then114
  %data120 = getelementptr inbounds i8* %call41, i64 40
  %38 = bitcast i8* %data120 to %struct.reg_data**
  store %struct.reg_data* null, %struct.reg_data** %38, align 8, !tbaa !0
  %call121 = call fastcc %struct.regnode* @S_reg(%struct.RExC_state_t* %RExC_state, i32 0, i32* %flags) #9
  %cmp122 = icmp eq %struct.regnode* %call121, null
  br i1 %cmp122, label %cleanup, label %if.end125

if.end125:                                        ; preds = %if.end119
  %39 = load i32* %op_pmflags, align 4, !tbaa !3
  %and127 = and i32 %39, 63488
  store i32 %and127, i32* %23, align 4, !tbaa !3
  %40 = load i32* %flags10, align 8, !tbaa !3
  store i32 %40, i32* %op_pmflags, align 4, !tbaa !3
  %41 = load i32* %utf8, align 8, !tbaa !3
  %cmp132 = icmp eq i32 %41, 0
  br i1 %cmp132, label %if.end136, label %if.then134

if.then134:                                       ; preds = %if.end125
  %42 = load i32* %23, align 4, !tbaa !3
  %or = or i32 %42, 65536
  store i32 %or, i32* %23, align 4, !tbaa !3
  br label %if.end136

if.end136:                                        ; preds = %if.end125, %if.then134
  %regstclass = getelementptr inbounds i8* %call41, i64 16
  %43 = bitcast i8* %regstclass to %struct.regnode**
  store %struct.regnode* null, %struct.regnode** %43, align 8, !tbaa !0
  %44 = load i32* %naughty, align 8, !tbaa !3
  %cmp138 = icmp sgt i32 %44, 9
  br i1 %cmp138, label %if.then140, label %if.end143

if.then140:                                       ; preds = %if.end136
  %45 = load i32* %23, align 4, !tbaa !3
  %or142 = or i32 %45, 131072
  store i32 %or142, i32* %23, align 4, !tbaa !3
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.end136
  %add.ptr = getelementptr inbounds i8* %call41, i64 100
  %46 = bitcast i8* %add.ptr to %struct.regnode*
  store %struct.regnode* %46, %struct.regnode** %scan, align 8, !tbaa !0
  %call146 = call i8* @Perl_safesysmalloc(i64 72) #8
  %47 = bitcast i8* %call146 to %struct.reg_substr_data*
  store %struct.reg_substr_data* %47, %struct.reg_substr_data** %26, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %call146, i8 0, i64 72, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 104, i32 8, i1 false)
  %48 = getelementptr inbounds i8* %call41, i64 101
  %49 = load i8* %48, align 1, !tbaa !1
  %cmp150 = icmp eq i8 %49, 31
  br i1 %cmp150, label %if.else740, label %if.then152

if.then152:                                       ; preds = %if.end143
  %50 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class, i64 0, i32 0
  call void @llvm.lifetime.start(i64 44, i8* %50) #3
  store i32 0, i32* %last_close, align 4, !tbaa !3
  br label %while.cond

while.cond:                                       ; preds = %if.end197, %if.then152
  %storemerge = phi %struct.regnode* [ %46, %if.then152 ], [ %add.ptr198, %if.end197 ]
  %sawopen.0 = phi i32 [ 0, %if.then152 ], [ %sawopen.11122, %if.end197 ]
  %sawplus.0 = phi i32 [ 0, %if.then152 ], [ %sawplus.1, %if.end197 ]
  %type153 = getelementptr inbounds %struct.regnode* %storemerge, i64 0, i32 1
  %51 = load i8* %type153, align 1, !tbaa !1
  switch i8 %51, label %lor.rhs [
    i8 45, label %if.else191
    i8 31, label %land.lhs.true162
    i8 39, label %while.body
    i8 58, label %while.body
  ]

land.lhs.true162:                                 ; preds = %while.cond
  %call163 = call %struct.regnode* @Perl_regnext(%struct.regnode* %storemerge) #9
  %type164 = getelementptr inbounds %struct.regnode* %call163, i64 0, i32 1
  %52 = load i8* %type164, align 1, !tbaa !1
  %cmp166 = icmp eq i8 %52, 31
  br i1 %cmp166, label %lor.rhs, label %if.else191

lor.rhs:                                          ; preds = %while.cond, %land.lhs.true162
  %idxprom = zext i8 %51 to i64
  %53 = add i64 %idxprom, -40
  %cmp181 = icmp ult i64 %53, 4
  br i1 %cmp181, label %land.rhs, label %again.preheader

land.rhs:                                         ; preds = %lor.rhs
  %arg1 = getelementptr inbounds %struct.regnode* %storemerge, i64 1
  %54 = bitcast %struct.regnode* %arg1 to i16*
  %55 = load i16* %54, align 2, !tbaa !4
  %cmp184 = icmp eq i16 %55, 0
  br i1 %cmp184, label %again.preheader, label %while.body

again.preheader:                                  ; preds = %lor.rhs, %land.rhs
  store %struct.regnode* %storemerge, %struct.regnode** %first, align 8, !tbaa !0
  %56 = load i8* %type153, align 1, !tbaa !1
  %idxprom2001103 = zext i8 %56 to i64
  %57 = add i64 %idxprom2001103, -33
  %cmp2031104 = icmp ult i64 %57, 3
  br i1 %cmp2031104, label %if.then205, label %if.else225.lr.ph

if.else225.lr.ph:                                 ; preds = %again.preheader
  %tobool282 = icmp eq i32 %sawopen.0, 0
  br label %if.else225

while.body:                                       ; preds = %while.cond, %while.cond, %land.rhs
  %cmp188 = icmp eq i8 %51, 39
  br i1 %cmp188, label %if.end197, label %if.else191

if.else191:                                       ; preds = %while.cond, %land.lhs.true162, %while.body
  %sawopen.11121 = phi i32 [ %sawopen.0, %while.body ], [ 1, %while.cond ], [ %sawopen.0, %land.lhs.true162 ]
  %idxprom193 = zext i8 %51 to i64
  %arrayidx194 = getelementptr inbounds [62 x i8]* @regarglen, i64 0, i64 %idxprom193
  %58 = load i8* %arrayidx194, align 1, !tbaa !1
  %idx.ext = zext i8 %58 to i64
  %add.ptr196 = getelementptr inbounds %struct.regnode* %storemerge, i64 %idx.ext
  br label %if.end197

if.end197:                                        ; preds = %while.body, %if.else191
  %sawopen.11122 = phi i32 [ %sawopen.11121, %if.else191 ], [ %sawopen.0, %while.body ]
  %storemerge1107 = phi %struct.regnode* [ %add.ptr196, %if.else191 ], [ %storemerge, %while.body ]
  %sawplus.1 = phi i32 [ %sawplus.0, %if.else191 ], [ 1, %while.body ]
  %add.ptr198 = getelementptr inbounds %struct.regnode* %storemerge1107, i64 1
  br label %while.cond

if.then205:                                       ; preds = %again.backedge, %again.preheader
  %.lcssa1098 = phi i8 [ %56, %again.preheader ], [ %66, %again.backedge ]
  %.lcssa = phi %struct.regnode* [ %storemerge, %again.preheader ], [ %65, %again.backedge ]
  %.off = add i8 %.lcssa1098, -34
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then221, label %if.end319

if.then221:                                       ; preds = %if.then205
  store %struct.regnode* %.lcssa, %struct.regnode** %43, align 8, !tbaa !0
  br label %if.end319

if.else225:                                       ; preds = %if.else225.lr.ph, %again.backedge
  %idxprom2001105 = phi i64 [ %idxprom2001103, %if.else225.lr.ph ], [ %idxprom200, %again.backedge ]
  %59 = phi i8 [ %56, %if.else225.lr.ph ], [ %66, %again.backedge ]
  %60 = phi %struct.regnode* [ %storemerge, %if.else225.lr.ph ], [ %65, %again.backedge ]
  %conv207 = zext i8 %59 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([15 x i8]* @PL_simple, i64 0, i64 0), i32 %conv207, i64 15)
  %tobool229 = icmp eq i8* %memchr, null
  br i1 %tobool229, label %if.else232, label %if.then230

if.then230:                                       ; preds = %if.else225
  store %struct.regnode* %60, %struct.regnode** %43, align 8, !tbaa !0
  br label %if.end319

if.else232:                                       ; preds = %if.else225
  %idxprom234.off = add i64 %idxprom2001105, -9
  %61 = icmp ult i64 %idxprom234.off, 2
  %idxprom234.off1079 = add i64 %idxprom2001105, -11
  %62 = icmp ult i64 %idxprom234.off1079, 2
  %or.cond = or i1 %61, %62
  br i1 %or.cond, label %if.then246, label %if.else248

if.then246:                                       ; preds = %if.else232
  store %struct.regnode* %60, %struct.regnode** %43, align 8, !tbaa !0
  br label %if.end319

if.else248:                                       ; preds = %if.else232
  %63 = add i64 %idxprom2001105, -2
  %cmp253 = icmp ult i64 %63, 3
  br i1 %cmp253, label %if.then255, label %if.else272

if.then255:                                       ; preds = %if.else248
  %cmp258 = icmp eq i8 %59, 3
  br i1 %cmp258, label %cond.end267, label %cond.false261

cond.false261:                                    ; preds = %if.then255
  %cmp264 = icmp eq i8 %59, 4
  %cond266 = select i1 %cmp264, i32 4, i32 1
  br label %cond.end267

cond.end267:                                      ; preds = %if.then255, %cond.false261
  %cond268 = phi i32 [ %cond266, %cond.false261 ], [ 2, %if.then255 ]
  %64 = load i32* %23, align 4, !tbaa !3
  %or270 = or i32 %64, %cond268
  store i32 %or270, i32* %23, align 4, !tbaa !3
  %add.ptr271 = getelementptr inbounds %struct.regnode* %60, i64 1
  store %struct.regnode* %add.ptr271, %struct.regnode** %first, align 8, !tbaa !0
  br label %again.backedge

again.backedge:                                   ; preds = %cond.end267, %if.then277, %if.then300
  %65 = phi %struct.regnode* [ %add.ptr271, %cond.end267 ], [ %add.ptr280, %if.then277 ], [ %add.ptr313, %if.then300 ]
  %type199 = getelementptr inbounds %struct.regnode* %65, i64 0, i32 1
  %66 = load i8* %type199, align 1, !tbaa !1
  %idxprom200 = zext i8 %66 to i64
  %67 = add i64 %idxprom200, -33
  %cmp203 = icmp ult i64 %67, 3
  br i1 %cmp203, label %if.then205, label %if.else225

if.else272:                                       ; preds = %if.else248
  %cmp275 = icmp eq i8 %59, 13
  br i1 %cmp275, label %if.then277, label %if.else281

if.then277:                                       ; preds = %if.else272
  %68 = load i32* %23, align 4, !tbaa !3
  %or279 = or i32 %68, 8
  store i32 %or279, i32* %23, align 4, !tbaa !3
  %add.ptr280 = getelementptr inbounds %struct.regnode* %60, i64 1
  store %struct.regnode* %add.ptr280, %struct.regnode** %first, align 8, !tbaa !0
  br label %again.backedge

if.else281:                                       ; preds = %if.else272
  %cmp286 = icmp eq i8 %59, 38
  %or.cond1084 = and i1 %tobool282, %cmp286
  br i1 %or.cond1084, label %land.lhs.true288, label %if.end319

land.lhs.true288:                                 ; preds = %if.else281
  %type290 = getelementptr inbounds %struct.regnode* %60, i64 1, i32 1
  %69 = load i8* %type290, align 1, !tbaa !1
  %idxprom291 = zext i8 %69 to i64
  %70 = add i64 %idxprom291, -14
  %cmp294 = icmp ult i64 %70, 3
  br i1 %cmp294, label %land.lhs.true296, label %if.end319

land.lhs.true296:                                 ; preds = %land.lhs.true288
  %71 = load i32* %23, align 4, !tbaa !3
  %and298 = and i32 %71, 15
  %tobool299 = icmp eq i32 %and298, 0
  br i1 %tobool299, label %if.then300, label %if.end319

if.then300:                                       ; preds = %land.lhs.true296
  %cmp305 = icmp eq i8 %69, 14
  %.1085 = select i1 %cmp305, i32 34, i32 36
  %or312 = or i32 %71, %.1085
  store i32 %or312, i32* %23, align 4, !tbaa !3
  %add.ptr313 = getelementptr inbounds %struct.regnode* %60, i64 1
  store %struct.regnode* %add.ptr313, %struct.regnode** %first, align 8, !tbaa !0
  br label %again.backedge

if.end319:                                        ; preds = %land.lhs.true296, %if.else281, %land.lhs.true288, %if.then205, %if.then230, %if.then246, %if.then221
  %tobool320 = icmp eq i32 %sawplus.0, 0
  br i1 %tobool320, label %if.end333, label %land.lhs.true321

land.lhs.true321:                                 ; preds = %if.end319
  %tobool322 = icmp eq i32 %sawopen.0, 0
  br i1 %tobool322, label %land.lhs.true326, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %land.lhs.true321
  %72 = load i32* %sawback, align 4, !tbaa !3
  %tobool325 = icmp eq i32 %72, 0
  br i1 %tobool325, label %land.lhs.true326, label %if.end333

land.lhs.true326:                                 ; preds = %lor.lhs.false323, %land.lhs.true321
  %73 = load i32* %seen, align 8, !tbaa !3
  %and328 = and i32 %73, 8
  %tobool329 = icmp eq i32 %and328, 0
  br i1 %tobool329, label %if.then330, label %if.end333

if.then330:                                       ; preds = %land.lhs.true326
  %74 = load i32* %23, align 4, !tbaa !3
  %or332 = or i32 %74, 16
  store i32 %or332, i32* %23, align 4, !tbaa !3
  br label %if.end333

if.end333:                                        ; preds = %lor.lhs.false323, %land.lhs.true326, %if.end319, %if.then330
  %call334 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #8
  %longest_fixed = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 9
  store %struct.sv* %call334, %struct.sv** %longest_fixed, align 8, !tbaa !0
  %call335 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #8
  %longest_float = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 11
  store %struct.sv* %call335, %struct.sv** %longest_float, align 8, !tbaa !0
  %call336 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #8
  %last_found = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 4
  store %struct.sv* %call336, %struct.sv** %last_found, align 8, !tbaa !0
  %longest = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 8
  store %struct.sv** %longest_fixed, %struct.sv*** %longest, align 8, !tbaa !0
  store %struct.regnode* %46, %struct.regnode** %first, align 8, !tbaa !0
  %75 = load %struct.regnode** %43, align 8, !tbaa !0
  %tobool339 = icmp eq %struct.regnode* %75, null
  br i1 %tobool339, label %if.then340, label %if.end342

if.then340:                                       ; preds = %if.end333
  %76 = bitcast %struct.regnode_charclass_class* %ch_class to i64*
  store i64 0, i64* %76, align 8
  %type.i = getelementptr inbounds %struct.regnode_charclass_class* %ch_class, i64 0, i32 1
  store i8 17, i8* %type.i, align 1, !tbaa !1
  %arraydecay.i.i = getelementptr inbounds %struct.regnode_charclass_class* %ch_class, i64 0, i32 5, i64 0
  %77 = bitcast i8* %arraydecay.i.i to i32*
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %78, i8 -1, i64 32, i32 8, i1 false) #3
  %79 = load i32* %flags10, align 8, !tbaa !3
  %and.i.i = and i32 %79, 2048
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %cmp.i.i, i8 80, i8 81
  store i8 %..i.i, i8* %50, align 8, !tbaa !1
  %start_class = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 17
  store %struct.regnode_charclass_class* %ch_class, %struct.regnode_charclass_class** %start_class, align 8, !tbaa !0
  br label %if.end342

if.end342:                                        ; preds = %if.end333, %if.then340
  %stclass_flag.0 = phi i32 [ 2048, %if.then340 ], [ 0, %if.end333 ]
  %last_closep = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 16
  store i32* %last_close, i32** %last_closep, align 8, !tbaa !0
  %80 = load i32* %size, align 4, !tbaa !3
  %idx.ext344 = sext i32 %80 to i64
  %add.ptr345 = getelementptr inbounds %struct.regnode* %46, i64 %idx.ext344
  %or346 = or i32 %stclass_flag.0, 9216
  %call347 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %RExC_state, %struct.regnode** %first, i32* %fake, %struct.regnode* %add.ptr345, %struct.scan_data_t* %data, i32 %or346) #9
  %81 = load i32* %npar, align 8, !tbaa !3
  %cmp349 = icmp eq i32 %81, 1
  br i1 %cmp349, label %land.lhs.true351, label %if.end376

land.lhs.true351:                                 ; preds = %if.end342
  %82 = load %struct.sv*** %longest, align 8, !tbaa !0
  %cmp354 = icmp eq %struct.sv** %82, %longest_fixed
  br i1 %cmp354, label %land.lhs.true356, label %if.end376

land.lhs.true356:                                 ; preds = %land.lhs.true351
  %last_start_min = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 6
  %83 = load i32* %last_start_min, align 4, !tbaa !3
  %cmp357 = icmp eq i32 %83, 0
  br i1 %cmp357, label %land.lhs.true359, label %if.end376

land.lhs.true359:                                 ; preds = %land.lhs.true356
  %last_end = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 5
  %84 = load i32* %last_end, align 8, !tbaa !3
  %cmp360 = icmp sgt i32 %84, 0
  br i1 %cmp360, label %land.lhs.true362, label %if.end376

land.lhs.true362:                                 ; preds = %land.lhs.true359
  %85 = load i32* %seen_zerolen, align 8, !tbaa !3
  %tobool364 = icmp eq i32 %85, 0
  br i1 %tobool364, label %land.lhs.true365, label %if.end376

land.lhs.true365:                                 ; preds = %land.lhs.true362
  %86 = load i32* %seen, align 8, !tbaa !3
  %and367 = and i32 %86, 4
  %tobool368 = icmp eq i32 %and367, 0
  %.pre1119 = load i32* %23, align 4, !tbaa !3
  br i1 %tobool368, label %if.then373, label %lor.lhs.false369

lor.lhs.false369:                                 ; preds = %land.lhs.true365
  %and371 = and i32 %.pre1119, 8
  %tobool372 = icmp eq i32 %and371, 0
  br i1 %tobool372, label %if.end376, label %if.then373

if.then373:                                       ; preds = %land.lhs.true365, %lor.lhs.false369
  %or375 = or i32 %.pre1119, 256
  store i32 %or375, i32* %23, align 4, !tbaa !3
  br label %if.end376

if.end376:                                        ; preds = %lor.lhs.false369, %land.lhs.true362, %if.then373, %land.lhs.true359, %land.lhs.true356, %land.lhs.true351, %if.end342
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %RExC_state, %struct.scan_data_t* %data) #9
  %87 = load %struct.sv** %last_found, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %87) #8
  %88 = load i32* %utf8, align 8, !tbaa !3
  %cmp379 = icmp eq i32 %88, 0
  %89 = load %struct.sv** %longest_float, align 8, !tbaa !0
  br i1 %cmp379, label %cond.false384, label %cond.true381

cond.true381:                                     ; preds = %if.end376
  %call383 = call i64 @Perl_sv_len_utf8(%struct.sv* %89) #8
  br label %cond.end386

cond.false384:                                    ; preds = %if.end376
  %sv_any = getelementptr inbounds %struct.sv* %89, i64 0, i32 0
  %90 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %90, i64 8
  %91 = bitcast i8* %xpv_cur to i64*
  %92 = load i64* %91, align 8, !tbaa !5
  br label %cond.end386

cond.end386:                                      ; preds = %cond.false384, %cond.true381
  %cond387 = phi i64 [ %call383, %cond.true381 ], [ %92, %cond.false384 ]
  %tobool388 = icmp eq i64 %cond387, 0
  br i1 %tobool388, label %lor.lhs.false389, label %if.then401

lor.lhs.false389:                                 ; preds = %cond.end386
  %flags390 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %93 = load i32* %flags390, align 8, !tbaa !3
  %and391 = and i32 %93, 48
  %tobool392 = icmp eq i32 %and391, 0
  br i1 %tobool392, label %remove_float, label %land.lhs.true393

land.lhs.true393:                                 ; preds = %lor.lhs.false389
  %and395 = and i32 %93, 32
  %tobool396 = icmp eq i32 %and395, 0
  br i1 %tobool396, label %if.then401, label %lor.lhs.false397

lor.lhs.false397:                                 ; preds = %land.lhs.true393
  %94 = load i32* %flags10, align 8, !tbaa !3
  %and399 = and i32 %94, 4096
  %tobool400 = icmp eq i32 %and399, 0
  br i1 %tobool400, label %remove_float, label %if.then401

if.then401:                                       ; preds = %lor.lhs.false397, %land.lhs.true393, %cond.end386
  %95 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  %sv_any403 = getelementptr inbounds %struct.sv* %95, i64 0, i32 0
  %96 = load i8** %sv_any403, align 8, !tbaa !0
  %xpv_cur404 = getelementptr inbounds i8* %96, i64 8
  %97 = bitcast i8* %xpv_cur404 to i64*
  %98 = load i64* %97, align 8, !tbaa !5
  %tobool405 = icmp eq i64 %98, 0
  br i1 %tobool405, label %if.end419, label %land.lhs.true406

land.lhs.true406:                                 ; preds = %if.then401
  %offset_fixed = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 10
  %99 = load i32* %offset_fixed, align 8, !tbaa !3
  %offset_float_min = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 12
  %100 = load i32* %offset_float_min, align 8, !tbaa !3
  %cmp407 = icmp eq i32 %99, %100
  br i1 %cmp407, label %land.lhs.true409, label %if.end419

land.lhs.true409:                                 ; preds = %land.lhs.true406
  %101 = load %struct.sv** %longest_float, align 8, !tbaa !0
  %sv_any414 = getelementptr inbounds %struct.sv* %101, i64 0, i32 0
  %102 = load i8** %sv_any414, align 8, !tbaa !0
  %xpv_cur415 = getelementptr inbounds i8* %102, i64 8
  %103 = bitcast i8* %xpv_cur415 to i64*
  %104 = load i64* %103, align 8, !tbaa !5
  %cmp416 = icmp eq i64 %98, %104
  br i1 %cmp416, label %remove_float, label %if.end419

if.end419:                                        ; preds = %land.lhs.true406, %if.then401, %land.lhs.true409
  %105 = load %struct.sv** %longest_float, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %105, i64 0, i32 2
  %106 = load i32* %sv_flags, align 4, !tbaa !3
  %and421 = and i32 %106, 536870912
  %tobool422 = icmp eq i32 %and421, 0
  %107 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  br i1 %tobool422, label %if.else431, label %if.then423

if.then423:                                       ; preds = %if.end419
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %107, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* %105, %struct.sv** %utf8_substr, align 8, !tbaa !0
  %108 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr = getelementptr inbounds %struct.reg_substr_data* %108, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* null, %struct.sv** %substr, align 8, !tbaa !0
  br label %if.end441

if.else431:                                       ; preds = %if.end419
  %substr436 = getelementptr inbounds %struct.reg_substr_data* %107, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* %105, %struct.sv** %substr436, align 8, !tbaa !0
  %109 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr440 = getelementptr inbounds %struct.reg_substr_data* %109, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr440, align 8, !tbaa !0
  br label %if.end441

if.end441:                                        ; preds = %if.else431, %if.then423
  %offset_float_min442 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 12
  %110 = load i32* %offset_float_min442, align 8, !tbaa !3
  %111 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %min_offset = getelementptr inbounds %struct.reg_substr_data* %111, i64 0, i32 0, i64 1, i32 0
  store i32 %110, i32* %min_offset, align 4, !tbaa !3
  %offset_float_max = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 13
  %112 = load i32* %offset_float_max, align 4, !tbaa !3
  %max_offset = getelementptr inbounds %struct.reg_substr_data* %111, i64 0, i32 0, i64 1, i32 1
  store i32 %112, i32* %max_offset, align 4, !tbaa !3
  %flags449 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %113 = load i32* %flags449, align 8, !tbaa !3
  %and450 = and i32 %113, 48
  %tobool451 = icmp eq i32 %and450, 0
  br i1 %tobool451, label %land.end461, label %land.rhs452

land.rhs452:                                      ; preds = %if.end441
  %and454 = and i32 %113, 32
  %tobool455 = icmp eq i32 %and454, 0
  br i1 %tobool455, label %land.end461, label %lor.rhs456

lor.rhs456:                                       ; preds = %land.rhs452
  %114 = load i32* %flags10, align 8, !tbaa !3
  %and458 = and i32 %114, 4096
  %tobool459 = icmp ne i32 %and458, 0
  %phitmp1081 = select i1 %tobool459, i32 15, i32 0
  br label %land.end461

land.end461:                                      ; preds = %land.rhs452, %if.end441, %lor.rhs456
  %115 = phi i32 [ 0, %if.end441 ], [ 15, %land.rhs452 ], [ %phitmp1081, %lor.rhs456 ]
  %116 = load %struct.sv** %longest_float, align 8, !tbaa !0
  call void @Perl_fbm_compile(%struct.sv* %116, i32 %115) #8
  br label %if.end475

remove_float:                                     ; preds = %lor.lhs.false397, %lor.lhs.false389, %land.lhs.true409
  %117 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr469 = getelementptr inbounds %struct.reg_substr_data* %117, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr469, align 8, !tbaa !0
  %118 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr473 = getelementptr inbounds %struct.reg_substr_data* %118, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* null, %struct.sv** %substr473, align 8, !tbaa !0
  %119 = load %struct.sv** %longest_float, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %119) #8
  br label %if.end475

if.end475:                                        ; preds = %remove_float, %land.end461
  %longest_float_length.0 = phi i64 [ 0, %remove_float ], [ %cond387, %land.end461 ]
  %120 = load i32* %utf8, align 8, !tbaa !3
  %cmp477 = icmp eq i32 %120, 0
  %121 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  br i1 %cmp477, label %cond.false482, label %cond.true479

cond.true479:                                     ; preds = %if.end475
  %call481 = call i64 @Perl_sv_len_utf8(%struct.sv* %121) #8
  br label %cond.end486

cond.false482:                                    ; preds = %if.end475
  %sv_any484 = getelementptr inbounds %struct.sv* %121, i64 0, i32 0
  %122 = load i8** %sv_any484, align 8, !tbaa !0
  %xpv_cur485 = getelementptr inbounds i8* %122, i64 8
  %123 = bitcast i8* %xpv_cur485 to i64*
  %124 = load i64* %123, align 8, !tbaa !5
  br label %cond.end486

cond.end486:                                      ; preds = %cond.false482, %cond.true479
  %cond487 = phi i64 [ %call481, %cond.true479 ], [ %124, %cond.false482 ]
  %tobool488 = icmp eq i64 %cond487, 0
  br i1 %tobool488, label %lor.lhs.false489, label %if.then501

lor.lhs.false489:                                 ; preds = %cond.end486
  %flags490 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %125 = load i32* %flags490, align 8, !tbaa !3
  %and491 = and i32 %125, 12
  %tobool492 = icmp eq i32 %and491, 0
  br i1 %tobool492, label %if.else550, label %land.lhs.true493

land.lhs.true493:                                 ; preds = %lor.lhs.false489
  %and495 = and i32 %125, 8
  %tobool496 = icmp eq i32 %and495, 0
  br i1 %tobool496, label %if.then501, label %lor.lhs.false497

lor.lhs.false497:                                 ; preds = %land.lhs.true493
  %126 = load i32* %flags10, align 8, !tbaa !3
  %and499 = and i32 %126, 4096
  %tobool500 = icmp eq i32 %and499, 0
  br i1 %tobool500, label %if.else550, label %if.then501

if.then501:                                       ; preds = %lor.lhs.false497, %land.lhs.true493, %cond.end486
  %127 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  %sv_flags504 = getelementptr inbounds %struct.sv* %127, i64 0, i32 2
  %128 = load i32* %sv_flags504, align 4, !tbaa !3
  %and505 = and i32 %128, 536870912
  %tobool506 = icmp eq i32 %and505, 0
  %129 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  br i1 %tobool506, label %if.else517, label %if.then507

if.then507:                                       ; preds = %if.then501
  %utf8_substr512 = getelementptr inbounds %struct.reg_substr_data* %129, i64 0, i32 0, i64 0, i32 3
  store %struct.sv* %127, %struct.sv** %utf8_substr512, align 8, !tbaa !0
  %130 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr516 = getelementptr inbounds %struct.reg_substr_data* %130, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* null, %struct.sv** %substr516, align 8, !tbaa !0
  br label %if.end527

if.else517:                                       ; preds = %if.then501
  %substr522 = getelementptr inbounds %struct.reg_substr_data* %129, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* %127, %struct.sv** %substr522, align 8, !tbaa !0
  %131 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr526 = getelementptr inbounds %struct.reg_substr_data* %131, i64 0, i32 0, i64 0, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr526, align 8, !tbaa !0
  br label %if.end527

if.end527:                                        ; preds = %if.else517, %if.then507
  %offset_fixed528 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 10
  %132 = load i32* %offset_fixed528, align 8, !tbaa !3
  %133 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %min_offset532 = getelementptr inbounds %struct.reg_substr_data* %133, i64 0, i32 0, i64 0, i32 0
  store i32 %132, i32* %min_offset532, align 4, !tbaa !3
  %flags533 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %134 = load i32* %flags533, align 8, !tbaa !3
  %and534 = and i32 %134, 12
  %tobool535 = icmp eq i32 %and534, 0
  br i1 %tobool535, label %land.end545, label %land.rhs536

land.rhs536:                                      ; preds = %if.end527
  %and538 = and i32 %134, 8
  %tobool539 = icmp eq i32 %and538, 0
  br i1 %tobool539, label %land.end545, label %lor.rhs540

lor.rhs540:                                       ; preds = %land.rhs536
  %135 = load i32* %flags10, align 8, !tbaa !3
  %and542 = and i32 %135, 4096
  %tobool543 = icmp ne i32 %and542, 0
  %phitmp1080 = select i1 %tobool543, i32 15, i32 0
  br label %land.end545

land.end545:                                      ; preds = %land.rhs536, %if.end527, %lor.rhs540
  %136 = phi i32 [ 0, %if.end527 ], [ 15, %land.rhs536 ], [ %phitmp1080, %lor.rhs540 ]
  %137 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  call void @Perl_fbm_compile(%struct.sv* %137, i32 %136) #8
  br label %if.end560

if.else550:                                       ; preds = %lor.lhs.false497, %lor.lhs.false489
  %138 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr554 = getelementptr inbounds %struct.reg_substr_data* %138, i64 0, i32 0, i64 0, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr554, align 8, !tbaa !0
  %139 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr558 = getelementptr inbounds %struct.reg_substr_data* %139, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* null, %struct.sv** %substr558, align 8, !tbaa !0
  %140 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %140) #8
  br label %if.end560

if.end560:                                        ; preds = %if.else550, %land.end545
  %longest_fixed_length.0 = phi i64 [ %cond487, %land.end545 ], [ 0, %if.else550 ]
  %141 = load %struct.regnode** %43, align 8, !tbaa !0
  %tobool562 = icmp eq %struct.regnode* %141, null
  br i1 %tobool562, label %if.end577, label %land.lhs.true563

land.lhs.true563:                                 ; preds = %if.end560
  %type565 = getelementptr inbounds %struct.regnode* %141, i64 0, i32 1
  %142 = load i8* %type565, align 1, !tbaa !1
  %.off1087 = add i8 %142, -14
  %switch1088 = icmp ult i8 %.off1087, 2
  br i1 %switch1088, label %if.then575, label %if.end577

if.then575:                                       ; preds = %land.lhs.true563
  store %struct.regnode* null, %struct.regnode** %43, align 8, !tbaa !0
  br label %if.end577

if.end577:                                        ; preds = %land.lhs.true563, %if.end560, %if.then575
  %143 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr581 = getelementptr inbounds %struct.reg_substr_data* %143, i64 0, i32 0, i64 0, i32 2
  %144 = load %struct.sv** %substr581, align 8, !tbaa !0
  %tobool582 = icmp eq %struct.sv* %144, null
  br i1 %tobool582, label %lor.lhs.false583, label %lor.lhs.false589

lor.lhs.false583:                                 ; preds = %if.end577
  %utf8_substr587 = getelementptr inbounds %struct.reg_substr_data* %143, i64 0, i32 0, i64 0, i32 3
  %145 = load %struct.sv** %utf8_substr587, align 8, !tbaa !0
  %tobool588 = icmp eq %struct.sv* %145, null
  br i1 %tobool588, label %land.lhs.true595, label %lor.lhs.false589

lor.lhs.false589:                                 ; preds = %lor.lhs.false583, %if.end577
  %min_offset593 = getelementptr inbounds %struct.reg_substr_data* %143, i64 0, i32 0, i64 0, i32 0
  %146 = load i32* %min_offset593, align 4, !tbaa !3
  %tobool594 = icmp eq i32 %146, 0
  %tobool596 = icmp eq i32 %stclass_flag.0, 0
  %or.cond1086 = or i1 %tobool594, %tobool596
  br i1 %or.cond1086, label %if.end630, label %land.lhs.true597

land.lhs.true595:                                 ; preds = %lor.lhs.false583
  %tobool596.old = icmp eq i32 %stclass_flag.0, 0
  br i1 %tobool596.old, label %if.end630, label %land.lhs.true597

land.lhs.true597:                                 ; preds = %lor.lhs.false589, %land.lhs.true595
  %start_class598 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 17
  %147 = load %struct.regnode_charclass_class** %start_class598, align 8, !tbaa !0
  %flags599 = getelementptr inbounds %struct.regnode_charclass_class* %147, i64 0, i32 0
  %148 = load i8* %flags599, align 1, !tbaa !1
  %and601 = and i8 %148, 16
  %tobool602 = icmp eq i8 %and601, 0
  br i1 %tobool602, label %land.lhs.true603, label %if.end630

land.lhs.true603:                                 ; preds = %land.lhs.true597
  %call605 = call fastcc i32 @S_cl_is_anything(%struct.regnode_charclass_class* %147) #9
  %tobool606 = icmp eq i32 %call605, 0
  br i1 %tobool606, label %if.then607, label %if.end630

if.then607:                                       ; preds = %land.lhs.true603
  %call608 = call fastcc i32 @S_add_data(%struct.RExC_state_t* %RExC_state, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #9
  %call609 = call i8* @Perl_safesysmalloc(i64 44) #8
  %idxprom610 = sext i32 %call608 to i64
  %149 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data612 = getelementptr inbounds %struct.regexp* %149, i64 0, i32 5
  %150 = load %struct.reg_data** %data612, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds %struct.reg_data* %150, i64 0, i32 2, i64 %idxprom610
  store i8* %call609, i8** %arrayidx614, align 8, !tbaa !0
  %151 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data617 = getelementptr inbounds %struct.regexp* %151, i64 0, i32 5
  %152 = load %struct.reg_data** %data617, align 8, !tbaa !0
  %arrayidx619 = getelementptr inbounds %struct.reg_data* %152, i64 0, i32 2, i64 %idxprom610
  %153 = load i8** %arrayidx619, align 8, !tbaa !0
  %154 = load %struct.regnode_charclass_class** %start_class598, align 8, !tbaa !0
  %155 = getelementptr inbounds %struct.regnode_charclass_class* %154, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %155, i64 44, i32 4, i1 false), !tbaa.struct !6
  %156 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data623 = getelementptr inbounds %struct.regexp* %156, i64 0, i32 5
  %157 = load %struct.reg_data** %data623, align 8, !tbaa !0
  %arrayidx625 = getelementptr inbounds %struct.reg_data* %157, i64 0, i32 2, i64 %idxprom610
  %158 = load i8** %arrayidx625, align 8, !tbaa !0
  %159 = bitcast i8* %158 to %struct.regnode*
  store %struct.regnode* %159, %struct.regnode** %43, align 8, !tbaa !0
  %160 = load i32* %23, align 4, !tbaa !3
  %and628 = and i32 %160, -17
  store i32 %and628, i32* %23, align 4, !tbaa !3
  %161 = load %struct.reg_data** %38, align 8, !tbaa !0
  store %struct.reg_data* %161, %struct.reg_data** @PL_regdata, align 8, !tbaa !0
  %.pre1118 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  br label %if.end630

if.end630:                                        ; preds = %lor.lhs.false589, %land.lhs.true603, %land.lhs.true597, %land.lhs.true595, %if.then607
  %162 = phi %struct.reg_substr_data* [ %143, %lor.lhs.false589 ], [ %143, %land.lhs.true603 ], [ %143, %land.lhs.true597 ], [ %143, %land.lhs.true595 ], [ %.pre1118, %if.then607 ]
  %cmp631 = icmp ugt i64 %longest_fixed_length.0, %longest_float_length.0
  br i1 %cmp631, label %if.then633, label %if.else669

if.then633:                                       ; preds = %if.end630
  %substr637 = getelementptr inbounds %struct.reg_substr_data* %162, i64 0, i32 0, i64 0, i32 2
  %163 = load %struct.sv** %substr637, align 8, !tbaa !0
  %substr641 = getelementptr inbounds %struct.reg_substr_data* %162, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* %163, %struct.sv** %substr641, align 8, !tbaa !0
  %164 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr645 = getelementptr inbounds %struct.reg_substr_data* %164, i64 0, i32 0, i64 0, i32 3
  %165 = load %struct.sv** %utf8_substr645, align 8, !tbaa !0
  %utf8_substr649 = getelementptr inbounds %struct.reg_substr_data* %164, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* %165, %struct.sv** %utf8_substr649, align 8, !tbaa !0
  %166 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %min_offset653 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 0, i32 0
  %167 = load i32* %min_offset653, align 4, !tbaa !3
  %max_offset657 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 2, i32 1
  store i32 %167, i32* %max_offset657, align 4, !tbaa !3
  %min_offset661 = getelementptr inbounds %struct.reg_substr_data* %166, i64 0, i32 0, i64 2, i32 0
  store i32 %167, i32* %min_offset661, align 4, !tbaa !3
  %168 = load i32* %23, align 4, !tbaa !3
  %and663 = and i32 %168, 12
  %tobool664 = icmp eq i32 %and663, 0
  br i1 %tobool664, label %if.end696, label %if.then665

if.then665:                                       ; preds = %if.then633
  %or667 = or i32 %168, 64
  store i32 %or667, i32* %23, align 4, !tbaa !3
  br label %if.end696

if.else669:                                       ; preds = %if.end630
  %substr673 = getelementptr inbounds %struct.reg_substr_data* %162, i64 0, i32 0, i64 1, i32 2
  %169 = load %struct.sv** %substr673, align 8, !tbaa !0
  %substr677 = getelementptr inbounds %struct.reg_substr_data* %162, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* %169, %struct.sv** %substr677, align 8, !tbaa !0
  %170 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr681 = getelementptr inbounds %struct.reg_substr_data* %170, i64 0, i32 0, i64 1, i32 3
  %171 = load %struct.sv** %utf8_substr681, align 8, !tbaa !0
  %utf8_substr685 = getelementptr inbounds %struct.reg_substr_data* %170, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* %171, %struct.sv** %utf8_substr685, align 8, !tbaa !0
  %offset_float_min686 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 12
  %172 = load i32* %offset_float_min686, align 8, !tbaa !3
  %173 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %min_offset690 = getelementptr inbounds %struct.reg_substr_data* %173, i64 0, i32 0, i64 2, i32 0
  store i32 %172, i32* %min_offset690, align 4, !tbaa !3
  %offset_float_max691 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 13
  %174 = load i32* %offset_float_max691, align 4, !tbaa !3
  %max_offset695 = getelementptr inbounds %struct.reg_substr_data* %173, i64 0, i32 0, i64 2, i32 1
  store i32 %174, i32* %max_offset695, align 4, !tbaa !3
  br label %if.end696

if.end696:                                        ; preds = %if.then633, %if.then665, %if.else669
  %175 = phi %struct.reg_substr_data* [ %166, %if.then633 ], [ %166, %if.then665 ], [ %173, %if.else669 ]
  %substr700 = getelementptr inbounds %struct.reg_substr_data* %175, i64 0, i32 0, i64 2, i32 2
  %176 = load %struct.sv** %substr700, align 8, !tbaa !0
  %tobool701 = icmp eq %struct.sv* %176, null
  br i1 %tobool701, label %lor.lhs.false702, label %land.lhs.true708

lor.lhs.false702:                                 ; preds = %if.end696
  %utf8_substr706 = getelementptr inbounds %struct.reg_substr_data* %175, i64 0, i32 0, i64 2, i32 3
  %177 = load %struct.sv** %utf8_substr706, align 8, !tbaa !0
  %tobool707 = icmp eq %struct.sv* %177, null
  br i1 %tobool707, label %if.end810, label %land.lhs.true708

land.lhs.true708:                                 ; preds = %lor.lhs.false702, %if.end696
  %178 = load i32* %23, align 4, !tbaa !3
  %and710 = and i32 %178, 8
  %tobool711 = icmp eq i32 %and710, 0
  br i1 %tobool711, label %if.then712, label %if.end810

if.then712:                                       ; preds = %land.lhs.true708
  %or714 = or i32 %178, 3145728
  store i32 %or714, i32* %23, align 4, !tbaa !3
  br i1 %tobool701, label %cond.false725, label %cond.end730

cond.false725:                                    ; preds = %if.then712
  %utf8_substr729 = getelementptr inbounds %struct.reg_substr_data* %175, i64 0, i32 0, i64 2, i32 3
  %179 = load %struct.sv** %utf8_substr729, align 8, !tbaa !0
  br label %cond.end730

cond.end730:                                      ; preds = %if.then712, %cond.false725
  %cond731 = phi %struct.sv* [ %179, %cond.false725 ], [ %176, %if.then712 ]
  %sv_flags732 = getelementptr inbounds %struct.sv* %cond731, i64 0, i32 2
  %180 = load i32* %sv_flags732, align 4, !tbaa !3
  %and733 = and i32 %180, 1073741824
  %tobool734 = icmp eq i32 %and733, 0
  br i1 %tobool734, label %if.end810, label %if.then735

if.then735:                                       ; preds = %cond.end730
  %or737 = or i32 %178, 137363456
  store i32 %or737, i32* %23, align 4, !tbaa !3
  br label %if.end810

if.else740:                                       ; preds = %if.end143
  %181 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class742, i64 0, i32 0
  call void @llvm.lifetime.start(i64 44, i8* %181) #3
  store i32 0, i32* %last_close743, align 4, !tbaa !3
  store %struct.regnode* %46, %struct.regnode** %scan, align 8, !tbaa !0
  %182 = bitcast %struct.regnode_charclass_class* %ch_class742 to i64*
  store i64 0, i64* %182, align 8
  %type.i1089 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class742, i64 0, i32 1
  store i8 17, i8* %type.i1089, align 1, !tbaa !1
  %arraydecay.i.i1090 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class742, i64 0, i32 5, i64 0
  %183 = bitcast i8* %arraydecay.i.i1090 to i32*
  store i32 0, i32* %183, align 8
  %184 = getelementptr inbounds %struct.regnode_charclass_class* %ch_class742, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %184, i8 -1, i64 32, i32 8, i1 false) #3
  %185 = load i32* %flags10, align 8, !tbaa !3
  %and.i.i1092 = and i32 %185, 2048
  %cmp.i.i1093 = icmp eq i32 %and.i.i1092, 0
  %..i.i1094 = select i1 %cmp.i.i1093, i8 80, i8 81
  store i8 %..i.i1094, i8* %181, align 8, !tbaa !1
  %start_class747 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 17
  store %struct.regnode_charclass_class* %ch_class742, %struct.regnode_charclass_class** %start_class747, align 8, !tbaa !0
  %last_closep748 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 16
  store i32* %last_close743, i32** %last_closep748, align 8, !tbaa !0
  %186 = load i32* %size, align 4, !tbaa !3
  %idx.ext750 = sext i32 %186 to i64
  %add.ptr751 = getelementptr inbounds %struct.regnode* %46, i64 %idx.ext750
  %call752 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %RExC_state, %struct.regnode** %scan, i32* %fake741, %struct.regnode* %add.ptr751, %struct.scan_data_t* %data, i32 10240) #9
  %187 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr756 = getelementptr inbounds %struct.reg_substr_data* %187, i64 0, i32 0, i64 1, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr756, align 8, !tbaa !0
  %188 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr760 = getelementptr inbounds %struct.reg_substr_data* %188, i64 0, i32 0, i64 1, i32 2
  store %struct.sv* null, %struct.sv** %substr760, align 8, !tbaa !0
  %189 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr764 = getelementptr inbounds %struct.reg_substr_data* %189, i64 0, i32 0, i64 0, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr764, align 8, !tbaa !0
  %190 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr768 = getelementptr inbounds %struct.reg_substr_data* %190, i64 0, i32 0, i64 0, i32 2
  store %struct.sv* null, %struct.sv** %substr768, align 8, !tbaa !0
  %191 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %utf8_substr772 = getelementptr inbounds %struct.reg_substr_data* %191, i64 0, i32 0, i64 2, i32 3
  store %struct.sv* null, %struct.sv** %utf8_substr772, align 8, !tbaa !0
  %192 = load %struct.reg_substr_data** %26, align 8, !tbaa !0
  %substr776 = getelementptr inbounds %struct.reg_substr_data* %192, i64 0, i32 0, i64 2, i32 2
  store %struct.sv* null, %struct.sv** %substr776, align 8, !tbaa !0
  %193 = load %struct.regnode_charclass_class** %start_class747, align 8, !tbaa !0
  %flags778 = getelementptr inbounds %struct.regnode_charclass_class* %193, i64 0, i32 0
  %194 = load i8* %flags778, align 1, !tbaa !1
  %and780 = and i8 %194, 16
  %tobool781 = icmp eq i8 %and780, 0
  br i1 %tobool781, label %land.lhs.true782, label %if.end810

land.lhs.true782:                                 ; preds = %if.else740
  %call784 = call fastcc i32 @S_cl_is_anything(%struct.regnode_charclass_class* %193) #9
  %tobool785 = icmp eq i32 %call784, 0
  br i1 %tobool785, label %if.then786, label %if.end810

if.then786:                                       ; preds = %land.lhs.true782
  %call788 = call fastcc i32 @S_add_data(%struct.RExC_state_t* %RExC_state, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #9
  %call789 = call i8* @Perl_safesysmalloc(i64 44) #8
  %idxprom790 = sext i32 %call788 to i64
  %195 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data792 = getelementptr inbounds %struct.regexp* %195, i64 0, i32 5
  %196 = load %struct.reg_data** %data792, align 8, !tbaa !0
  %arrayidx794 = getelementptr inbounds %struct.reg_data* %196, i64 0, i32 2, i64 %idxprom790
  store i8* %call789, i8** %arrayidx794, align 8, !tbaa !0
  %197 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data797 = getelementptr inbounds %struct.regexp* %197, i64 0, i32 5
  %198 = load %struct.reg_data** %data797, align 8, !tbaa !0
  %arrayidx799 = getelementptr inbounds %struct.reg_data* %198, i64 0, i32 2, i64 %idxprom790
  %199 = load i8** %arrayidx799, align 8, !tbaa !0
  %200 = load %struct.regnode_charclass_class** %start_class747, align 8, !tbaa !0
  %201 = getelementptr inbounds %struct.regnode_charclass_class* %200, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %199, i8* %201, i64 44, i32 4, i1 false), !tbaa.struct !6
  %202 = load %struct.regexp** %rx94, align 8, !tbaa !0
  %data803 = getelementptr inbounds %struct.regexp* %202, i64 0, i32 5
  %203 = load %struct.reg_data** %data803, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds %struct.reg_data* %203, i64 0, i32 2, i64 %idxprom790
  %204 = load i8** %arrayidx805, align 8, !tbaa !0
  %205 = bitcast i8* %204 to %struct.regnode*
  store %struct.regnode* %205, %struct.regnode** %43, align 8, !tbaa !0
  %206 = load i32* %23, align 4, !tbaa !3
  %and808 = and i32 %206, -17
  store i32 %and808, i32* %23, align 4, !tbaa !3
  br label %if.end810

if.end810:                                        ; preds = %if.then786, %if.else740, %land.lhs.true782, %if.then735, %lor.lhs.false702, %land.lhs.true708, %cond.end730
  %minlen.0 = phi i32 [ %call347, %cond.end730 ], [ %call347, %land.lhs.true708 ], [ %call347, %lor.lhs.false702 ], [ %call347, %if.then735 ], [ %call752, %land.lhs.true782 ], [ %call752, %if.else740 ], [ %call752, %if.then786 ]
  %minlen811 = getelementptr inbounds i8* %call41, i64 72
  %207 = bitcast i8* %minlen811 to i32*
  store i32 %minlen.0, i32* %207, align 4, !tbaa !3
  %208 = load i32* %seen, align 8, !tbaa !3
  %and813 = and i32 %208, 4
  %tobool814 = icmp eq i32 %and813, 0
  br i1 %tobool814, label %if.end818, label %if.then815

if.then815:                                       ; preds = %if.end810
  %209 = load i32* %23, align 4, !tbaa !3
  %or817 = or i32 %209, 128
  store i32 %or817, i32* %23, align 4, !tbaa !3
  %.pre1115 = load i32* %seen, align 8, !tbaa !3
  br label %if.end818

if.end818:                                        ; preds = %if.end810, %if.then815
  %210 = phi i32 [ %208, %if.end810 ], [ %.pre1115, %if.then815 ]
  %and820 = and i32 %210, 2
  %tobool821 = icmp eq i32 %and820, 0
  br i1 %tobool821, label %if.end825, label %if.then822

if.then822:                                       ; preds = %if.end818
  %211 = load i32* %23, align 4, !tbaa !3
  %or824 = or i32 %211, 512
  store i32 %or824, i32* %23, align 4, !tbaa !3
  %.pre1116 = load i32* %seen, align 8, !tbaa !3
  br label %if.end825

if.end825:                                        ; preds = %if.end818, %if.then822
  %212 = phi i32 [ %210, %if.end818 ], [ %.pre1116, %if.then822 ]
  %and827 = and i32 %212, 8
  %tobool828 = icmp eq i32 %and827, 0
  br i1 %tobool828, label %if.end832, label %if.then829

if.then829:                                       ; preds = %if.end825
  %213 = load i32* %23, align 4, !tbaa !3
  %or831 = or i32 %213, 1024
  store i32 %or831, i32* %23, align 4, !tbaa !3
  %.pre1117 = load i32* %seen, align 8, !tbaa !3
  br label %if.end832

if.end832:                                        ; preds = %if.end825, %if.then829
  %214 = phi i32 [ %212, %if.end825 ], [ %.pre1117, %if.then829 ]
  %and834 = and i32 %214, 16
  %tobool835 = icmp eq i32 %and834, 0
  br i1 %tobool835, label %if.end839, label %if.then836

if.then836:                                       ; preds = %if.end832
  %215 = load i32* %23, align 4, !tbaa !3
  %or838 = or i32 %215, 2048
  store i32 %or838, i32* %23, align 4, !tbaa !3
  br label %if.end839

if.end839:                                        ; preds = %if.end832, %if.then836
  %216 = load i32* %npar, align 8, !tbaa !3
  %conv841 = sext i32 %216 to i64
  %mul842 = shl nsw i64 %conv841, 2
  %call843 = call i8* @Perl_safesysmalloc(i64 %mul842) #8
  %217 = bitcast i8* %call843 to i32*
  store i32* %217, i32** %startp, align 8, !tbaa !0
  %218 = load i32* %npar, align 8, !tbaa !3
  %conv847 = sext i32 %218 to i64
  %mul848 = shl nsw i64 %conv847, 2
  call void @llvm.memset.p0i8.i64(i8* %call843, i8 0, i64 %mul848, i32 1, i1 false)
  %219 = load i32* %npar, align 8, !tbaa !3
  %conv850 = sext i32 %219 to i64
  %mul851 = shl nsw i64 %conv850, 2
  %call852 = call i8* @Perl_safesysmalloc(i64 %mul851) #8
  %220 = bitcast i8* %call852 to i32*
  store i32* %220, i32** %27, align 8, !tbaa !0
  %221 = load i32* %npar, align 8, !tbaa !3
  %conv856 = sext i32 %221 to i64
  %mul857 = shl nsw i64 %conv856, 2
  call void @llvm.memset.p0i8.i64(i8* %call852, i8 0, i64 %mul857, i32 1, i1 false)
  %222 = load %struct.reg_data** %38, align 8, !tbaa !0
  store %struct.reg_data* %222, %struct.reg_data** @PL_regdata, align 8, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end839, %if.then18
  %retval.0 = phi %struct.regexp* [ null, %if.then18 ], [ %9, %if.end839 ], [ null, %if.end119 ]
  call void @llvm.lifetime.end(i64 112, i8* %1) #3
  call void @llvm.lifetime.end(i64 104, i8* %0) #3
  ret %struct.regexp* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @Perl_save_destructor_x(void (i8*)*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal void @clear_re(i8* %r) #0 {
entry:
  %0 = load void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  %1 = bitcast i8* %r to %struct.regexp*
  tail call void %0(%struct.regexp* %1) #8
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_reg(%struct.RExC_state_t* %pRExC_state, i32 %paren, i32* nocapture %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  %posflags = alloca i32, align 4
  %negflags = alloca i32, align 4
  %sop = alloca %struct.op*, align 8
  %pad = alloca %struct.av*, align 8
  %flag = alloca i32, align 4
  %flags1 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %0 = load i32* %flags1, align 4, !tbaa !3
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %1 = load i8** %parse, align 8, !tbaa !0
  store i32 0, i32* %flagp, align 4, !tbaa !3
  %tobool = icmp eq i32 %paren, 0
  br i1 %tobool, label %if.end828, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 63
  br i1 %cmp, label %if.then5, label %if.else757

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %posflags, align 4, !tbaa !3
  store i32 0, i32* %negflags, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  %incdec.ptr9 = getelementptr inbounds i8* %1, i64 2
  store i8* %incdec.ptr9, i8** %parse, align 8, !tbaa !0
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv10 = sext i8 %3 to i32
  switch i32 %conv10, label %sw.default [
    i32 60, label %sw.bb
    i32 61, label %sw.bb28
    i32 33, label %sw.bb28
    i32 58, label %if.end828
    i32 62, label %if.end828
    i32 36, label %sw.bb30
    i32 64, label %sw.bb30
    i32 35, label %while.cond
    i32 112, label %sw.bb71
    i32 63, label %sw.bb117
    i32 123, label %sw.bb127
    i32 40, label %sw.bb363
    i32 0, label %sw.bb534
  ]

sw.bb:                                            ; preds = %if.then5
  %seen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %4 = load i32* %seen, align 4, !tbaa !3
  %or = or i32 %4, 2
  store i32 %or, i32* %seen, align 4, !tbaa !3
  %5 = load i8* %incdec.ptr9, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %5, 33
  %.conv10 = select i1 %cmp13, i32 44, i32 60
  switch i8 %5, label %unknown [
    i8 61, label %if.end25
    i8 33, label %if.end25
  ]

if.end25:                                         ; preds = %sw.bb, %sw.bb
  %incdec.ptr27 = getelementptr inbounds i8* %1, i64 3
  store i8* %incdec.ptr27, i8** %parse, align 8, !tbaa !0
  br label %sw.bb28

sw.bb28:                                          ; preds = %if.then5, %if.then5, %if.end25
  %paren.addr.1 = phi i32 [ %conv10, %if.then5 ], [ %conv10, %if.then5 ], [ %.conv10, %if.end25 ]
  %seen_zerolen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %6 = load i32* %seen_zerolen, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %seen_zerolen, align 4, !tbaa !3
  br label %if.end828

sw.bb30:                                          ; preds = %if.then5, %if.then5
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %7 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp31 = icmp eq %struct.regnode* %7, @PL_regdummy
  br i1 %cmp31, label %if.end34, label %if.then33

if.then33:                                        ; preds = %sw.bb30
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %8 = load %struct.regexp** %rx, align 8, !tbaa !0
  %9 = bitcast %struct.regexp* %8 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %9) #8
  %.pre1712 = load i8** %parse, align 8, !tbaa !0
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %sw.bb30
  %10 = phi i8* [ %.pre1712, %if.then33 ], [ %incdec.ptr9, %sw.bb30 ]
  %precomp = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %11 = load i8** %precomp, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  %add.ptr = getelementptr inbounds i8* %11, i64 %sub.ptr.sub
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0), i32 %conv10, i32 %conv36, i8* %11, i8* %add.ptr) #9
  br label %if.end828

while.cond:                                       ; preds = %if.then5, %while.body
  %12 = phi i8* [ %incdec.ptr48, %while.body ], [ %incdec.ptr9, %if.then5 ]
  %13 = load i8* %12, align 1, !tbaa !1
  switch i8 %13, label %while.body [
    i8 41, label %if.end70
    i8 0, label %if.then53
  ]

while.body:                                       ; preds = %while.cond
  %incdec.ptr48 = getelementptr inbounds i8* %12, i64 1
  store i8* %incdec.ptr48, i8** %parse, align 8, !tbaa !0
  br label %while.cond

if.then53:                                        ; preds = %while.cond
  %end = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %14 = load i8** %end, align 8, !tbaa !0
  %precomp54 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %15 = load i8** %precomp54, align 8, !tbaa !0
  %sub.ptr.lhs.cast55 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast56 = ptrtoint i8* %15 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %emit58 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %16 = load %struct.regnode** %emit58, align 8, !tbaa !0
  %cmp59 = icmp eq %struct.regnode* %16, @PL_regdummy
  br i1 %cmp59, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.then53
  %rx62 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %17 = load %struct.regexp** %rx62, align 8, !tbaa !0
  %18 = bitcast %struct.regexp* %17 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %18) #8
  %.pre1720 = load i8** %precomp54, align 8, !tbaa !0
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then53
  %19 = phi i8* [ %.pre1720, %if.then61 ], [ %15, %if.then53 ]
  %cmp64 = icmp sgt i64 %sub.ptr.sub57, 127
  %. = select i1 %cmp64, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %20 = trunc i64 %sub.ptr.sub57 to i32
  %conv68 = select i1 %cmp64, i32 117, i32 %20
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str12, i64 0, i64 0), i32 %conv68, i8* %19, i8* %.) #8
  br label %if.end70

if.end70:                                         ; preds = %while.cond, %if.end63
  %call = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  store i32 8, i32* %flagp, align 4, !tbaa !3
  br label %return

sw.bb71:                                          ; preds = %if.then5
  %emit72 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %21 = load %struct.regnode** %emit72, align 8, !tbaa !0
  %cmp73 = icmp eq %struct.regnode* %21, @PL_regdummy
  br i1 %cmp73, label %land.lhs.true75, label %sw.bb117

land.lhs.true75:                                  ; preds = %sw.bb71
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp76 = icmp eq %struct.sv* %23, null
  br i1 %cmp76, label %lor.lhs.false97, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true75
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings79 = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings79, align 8, !tbaa !0
  %cmp80 = icmp eq %struct.sv* %25, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp80, label %lor.lhs.false97, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %land.lhs.true78
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings83 = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings83, align 8, !tbaa !0
  %cmp84 = icmp eq %struct.sv* %27, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp84, label %if.then105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true82
  %28 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings86 = getelementptr inbounds %struct.cop* %28, i64 0, i32 14
  %29 = load %struct.sv** %cop_warnings86, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %30 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %30 to i8**
  %31 = load i8** %xpv_pv, align 8, !tbaa !0
  %32 = load i8* %31, align 1, !tbaa !1
  %and = and i8 %32, 16
  %tobool88 = icmp eq i8 %and, 0
  br i1 %tobool88, label %lor.lhs.false89, label %if.then105

lor.lhs.false89:                                  ; preds = %lor.lhs.false
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings90 = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings90, align 8, !tbaa !0
  %sv_any91 = getelementptr inbounds %struct.sv* %34, i64 0, i32 0
  %35 = load i8** %sv_any91, align 8, !tbaa !0
  %xpv_pv92 = bitcast i8* %35 to i8**
  %36 = load i8** %xpv_pv92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i8* %36, i64 5
  %37 = load i8* %arrayidx93, align 1, !tbaa !1
  %and95 = and i8 %37, 1
  %tobool96 = icmp eq i8 %and95, 0
  br i1 %tobool96, label %lor.lhs.false97, label %if.then105

lor.lhs.false97:                                  ; preds = %lor.lhs.false89, %land.lhs.true78, %land.lhs.true75
  %38 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings98 = getelementptr inbounds %struct.cop* %38, i64 0, i32 14
  %39 = load %struct.sv** %cop_warnings98, align 8, !tbaa !0
  %cmp99 = icmp eq %struct.sv* %39, null
  br i1 %cmp99, label %land.lhs.true101, label %sw.bb117

land.lhs.true101:                                 ; preds = %lor.lhs.false97
  %40 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and103 = and i8 %40, 1
  %tobool104 = icmp eq i8 %and103, 0
  br i1 %tobool104, label %sw.bb117, label %if.then105

if.then105:                                       ; preds = %lor.lhs.false89, %lor.lhs.false, %land.lhs.true101, %land.lhs.true82
  %41 = load i8** %parse, align 8, !tbaa !0
  %precomp108 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %42 = load i8** %precomp108, align 8, !tbaa !0
  %sub.ptr.lhs.cast109 = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast110 = ptrtoint i8* %42 to i64
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110
  %conv112 = trunc i64 %sub.ptr.sub111 to i32
  %add.ptr115 = getelementptr inbounds i8* %42, i64 %sub.ptr.sub111
  call void (i32, i8*, ...)* @Perl_warner(i32 5122, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str14, i64 0, i64 0), i32 %conv112, i8* %42, i8* %add.ptr115) #8
  br label %sw.bb117

sw.bb117:                                         ; preds = %land.lhs.true101, %lor.lhs.false97, %sw.bb71, %if.then105, %if.then5
  %43 = load i8** %parse, align 8, !tbaa !0
  %44 = load i8* %43, align 1, !tbaa !1
  %cmp120 = icmp eq i8 %44, 123
  br i1 %cmp120, label %if.end123, label %unknown

if.end123:                                        ; preds = %sw.bb117
  %incdec.ptr125 = getelementptr inbounds i8* %43, i64 1
  store i8* %incdec.ptr125, i8** %parse, align 8, !tbaa !0
  br label %sw.bb127

sw.bb127:                                         ; preds = %if.then5, %if.end123
  %45 = phi i8* [ %incdec.ptr9, %if.then5 ], [ %incdec.ptr125, %if.end123 ]
  %logical.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end123 ]
  %seen_zerolen130 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %46 = load i32* %seen_zerolen130, align 4, !tbaa !3
  %inc131 = add nsw i32 %46, 1
  store i32 %inc131, i32* %seen_zerolen130, align 4, !tbaa !3
  %seen132 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %47 = load i32* %seen132, align 4, !tbaa !3
  %or133 = or i32 %47, 8
  store i32 %or133, i32* %seen132, align 4, !tbaa !3
  br label %land.rhs136

land.rhs136:                                      ; preds = %sw.bb127, %if.end165
  %48 = phi i8* [ %45, %sw.bb127 ], [ %incdec.ptr167, %if.end165 ]
  %count.01698 = phi i32 [ 1, %sw.bb127 ], [ %count.1, %if.end165 ]
  %49 = load i8* %48, align 1, !tbaa !1
  switch i8 %49, label %if.end165 [
    i8 0, label %if.then173
    i8 92, label %land.lhs.true145
    i8 123, label %if.then156
    i8 125, label %if.then162
  ]

land.lhs.true145:                                 ; preds = %land.rhs136
  %arrayidx147 = getelementptr inbounds i8* %48, i64 1
  %50 = load i8* %arrayidx147, align 1, !tbaa !1
  %tobool149 = icmp eq i8 %50, 0
  br i1 %tobool149, label %if.end165, label %if.then150

if.then150:                                       ; preds = %land.lhs.true145
  store i8* %arrayidx147, i8** %parse, align 8, !tbaa !0
  br label %if.end165

if.then156:                                       ; preds = %land.rhs136
  %inc157 = add nsw i32 %count.01698, 1
  br label %if.end165

if.then162:                                       ; preds = %land.rhs136
  %dec = add nsw i32 %count.01698, -1
  br label %if.end165

if.end165:                                        ; preds = %land.lhs.true145, %land.rhs136, %if.then156, %if.then162, %if.then150
  %51 = phi i8* [ %arrayidx147, %if.then150 ], [ %48, %if.then156 ], [ %48, %if.then162 ], [ %48, %land.rhs136 ], [ %48, %land.lhs.true145 ]
  %count.1 = phi i32 [ %count.01698, %if.then150 ], [ %inc157, %if.then156 ], [ %dec, %if.then162 ], [ %count.01698, %land.rhs136 ], [ %count.01698, %land.lhs.true145 ]
  %incdec.ptr167 = getelementptr inbounds i8* %51, i64 1
  store i8* %incdec.ptr167, i8** %parse, align 8, !tbaa !0
  %tobool135 = icmp eq i32 %count.1, 0
  br i1 %tobool135, label %while.end168, label %land.rhs136

while.end168:                                     ; preds = %if.end165
  %.pre1723 = load i8* %incdec.ptr167, align 1, !tbaa !1
  %phitmp = icmp eq i8 %.pre1723, 41
  br i1 %phitmp, label %while.end168.if.end191_crit_edge, label %if.then173

while.end168.if.end191_crit_edge:                 ; preds = %while.end168
  %emit192.pre = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  br label %if.end191

if.then173:                                       ; preds = %land.rhs136, %while.end168
  store i8* %45, i8** %parse, align 8, !tbaa !0
  %emit175 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %52 = load %struct.regnode** %emit175, align 8, !tbaa !0
  %cmp176 = icmp eq %struct.regnode* %52, @PL_regdummy
  br i1 %cmp176, label %if.end180, label %if.then178

if.then178:                                       ; preds = %if.then173
  %rx179 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %53 = load %struct.regexp** %rx179, align 8, !tbaa !0
  %54 = bitcast %struct.regexp* %53 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %54) #8
  %.pre1716 = load i8** %parse, align 8, !tbaa !0
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %if.then173
  %55 = phi i8* [ %.pre1716, %if.then178 ], [ %45, %if.then173 ]
  %precomp183 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %56 = load i8** %precomp183, align 8, !tbaa !0
  %sub.ptr.lhs.cast184 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast185 = ptrtoint i8* %56 to i64
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185
  %conv187 = trunc i64 %sub.ptr.sub186 to i32
  %add.ptr190 = getelementptr inbounds i8* %56, i64 %sub.ptr.sub186
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), i32 %conv187, i8* %56, i8* %add.ptr190) #8
  br label %if.end191

if.end191:                                        ; preds = %while.end168.if.end191_crit_edge, %if.end180
  %emit192.pre-phi = phi %struct.regnode** [ %emit192.pre, %while.end168.if.end191_crit_edge ], [ %emit175, %if.end180 ]
  %57 = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  %cmp193 = icmp eq %struct.regnode* %57, @PL_regdummy
  br i1 %cmp193, label %if.else231, label %if.then195

if.then195:                                       ; preds = %if.end191
  %58 = load i8** %parse, align 8, !tbaa !0
  %add.ptr197 = getelementptr inbounds i8* %58, i64 -1
  %tobool201 = icmp eq i8* %add.ptr197, %45
  br i1 %tobool201, label %if.else209, label %if.then202

if.then202:                                       ; preds = %if.then195
  %sub.ptr.lhs.cast198 = ptrtoint i8* %add.ptr197 to i64
  %sub.ptr.rhs.cast199 = ptrtoint i8* %45 to i64
  %sub.ptr.sub200 = sub i64 %sub.ptr.lhs.cast198, %sub.ptr.rhs.cast199
  %call208 = call %struct.sv* @Perl_newSVpvn(i8* %45, i64 %sub.ptr.sub200) #8
  br label %if.end211

if.else209:                                       ; preds = %if.then195
  %call210 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #8
  br label %if.end211

if.end211:                                        ; preds = %if.else209, %if.then202
  %sv.0 = phi %struct.sv* [ %call208, %if.then202 ], [ %call210, %if.else209 ]
  call void @Perl_push_scope() #8
  call void @Perl_save_re_context() #9
  %call212 = call %struct.op* @Perl_sv_compile_2op(%struct.sv* %sv.0, %struct.op** %sop, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), %struct.av** %pad) #8
  %59 = load %struct.op** %sop, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %59, i64 0, i32 7
  %60 = load i8* %op_private, align 1, !tbaa !1
  %or214 = or i8 %60, 64
  store i8 %or214, i8* %op_private, align 1, !tbaa !1
  %61 = load %struct.op** %sop, align 8, !tbaa !0
  %op_targ = getelementptr inbounds %struct.op* %61, i64 0, i32 3
  store i64 1, i64* %op_targ, align 8, !tbaa !5
  call void @Perl_pop_scope() #8
  %call216 = call fastcc i32 @S_add_data(%struct.RExC_state_t* %pRExC_state, i32 3, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0)) #9
  %62 = bitcast %struct.op* %call212 to i8*
  %idxprom = sext i32 %call216 to i64
  %rx217 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %63 = load %struct.regexp** %rx217, align 8, !tbaa !0
  %data = getelementptr inbounds %struct.regexp* %63, i64 0, i32 5
  %64 = load %struct.reg_data** %data, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds %struct.reg_data* %64, i64 0, i32 2, i64 %idxprom
  store i8* %62, i8** %arrayidx219, align 8, !tbaa !0
  %65 = load %struct.op** %sop, align 8, !tbaa !0
  %66 = bitcast %struct.op* %65 to i8*
  %add = add nsw i32 %call216, 1
  %idxprom220 = sext i32 %add to i64
  %67 = load %struct.regexp** %rx217, align 8, !tbaa !0
  %data222 = getelementptr inbounds %struct.regexp* %67, i64 0, i32 5
  %68 = load %struct.reg_data** %data222, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds %struct.reg_data* %68, i64 0, i32 2, i64 %idxprom220
  store i8* %66, i8** %arrayidx224, align 8, !tbaa !0
  %69 = load %struct.av** %pad, align 8, !tbaa !0
  %70 = bitcast %struct.av* %69 to i8*
  %add225 = add nsw i32 %call216, 2
  %idxprom226 = sext i32 %add225 to i64
  %71 = load %struct.regexp** %rx217, align 8, !tbaa !0
  %data228 = getelementptr inbounds %struct.regexp* %71, i64 0, i32 5
  %72 = load %struct.reg_data** %data228, align 8, !tbaa !0
  %arrayidx230 = getelementptr inbounds %struct.reg_data* %72, i64 0, i32 2, i64 %idxprom226
  store i8* %70, i8** %arrayidx230, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %sv.0) #8
  br label %if.end285

if.else231:                                       ; preds = %if.end191
  %73 = load i32* @PL_reginterp_cnt, align 4, !tbaa !3
  %seen_evals = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 16
  %74 = load i32* %seen_evals, align 4, !tbaa !3
  %inc232 = add nsw i32 %74, 1
  store i32 %inc232, i32* %seen_evals, align 4, !tbaa !3
  %cmp233 = icmp slt i32 %73, %inc232
  br i1 %cmp233, label %land.lhs.true235, label %if.end258

land.lhs.true235:                                 ; preds = %if.else231
  %75 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cmp236 = icmp eq %struct.cop* %75, @PL_compiling
  br i1 %cmp236, label %if.end258, label %if.then238

if.then238:                                       ; preds = %land.lhs.true235
  %end241 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %76 = load i8** %end241, align 8, !tbaa !0
  %precomp242 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %77 = load i8** %precomp242, align 8, !tbaa !0
  %sub.ptr.lhs.cast243 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast244 = ptrtoint i8* %77 to i64
  %sub.ptr.sub245 = sub i64 %sub.ptr.lhs.cast243, %sub.ptr.rhs.cast244
  %78 = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  %cmp247 = icmp eq %struct.regnode* %78, @PL_regdummy
  br i1 %cmp247, label %if.end251, label %if.then249

if.then249:                                       ; preds = %if.then238
  %rx250 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %79 = load %struct.regexp** %rx250, align 8, !tbaa !0
  %80 = bitcast %struct.regexp* %79 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %80) #8
  %.pre1713 = load i8** %precomp242, align 8, !tbaa !0
  br label %if.end251

if.end251:                                        ; preds = %if.then249, %if.then238
  %81 = phi i8* [ %.pre1713, %if.then249 ], [ %77, %if.then238 ]
  %cmp252 = icmp sgt i64 %sub.ptr.sub245, 127
  %.1663 = select i1 %cmp252, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %82 = trunc i64 %sub.ptr.sub245 to i32
  %conv256 = select i1 %cmp252, i32 117, i32 %82
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str18, i64 0, i64 0), i32 %conv256, i8* %81, i8* %.1663) #8
  br label %if.end258

if.end258:                                        ; preds = %land.lhs.true235, %if.end251, %if.else231
  %83 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool260 = icmp eq i8 %83, 0
  %84 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool263 = icmp eq i8 %84, 0
  %or.cond = or i1 %tobool260, %tobool263
  br i1 %or.cond, label %if.end285, label %if.then264

if.then264:                                       ; preds = %if.end258
  %end267 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %85 = load i8** %end267, align 8, !tbaa !0
  %precomp268 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %86 = load i8** %precomp268, align 8, !tbaa !0
  %sub.ptr.lhs.cast269 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast270 = ptrtoint i8* %86 to i64
  %sub.ptr.sub271 = sub i64 %sub.ptr.lhs.cast269, %sub.ptr.rhs.cast270
  %87 = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  %cmp273 = icmp eq %struct.regnode* %87, @PL_regdummy
  br i1 %cmp273, label %if.end277, label %if.then275

if.then275:                                       ; preds = %if.then264
  %rx276 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %88 = load %struct.regexp** %rx276, align 8, !tbaa !0
  %89 = bitcast %struct.regexp* %88 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %89) #8
  %.pre1714 = load i8** %precomp268, align 8, !tbaa !0
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %if.then264
  %90 = phi i8* [ %.pre1714, %if.then275 ], [ %86, %if.then264 ]
  %cmp278 = icmp sgt i64 %sub.ptr.sub271, 127
  %.1664 = select i1 %cmp278, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %91 = trunc i64 %sub.ptr.sub271 to i32
  %conv282 = select i1 %cmp278, i32 117, i32 %91
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str19, i64 0, i64 0), i32 %conv282, i8* %90, i8* %.1664) #8
  br label %if.end285

if.end285:                                        ; preds = %if.end258, %if.end277, %if.end211
  %n.0 = phi i32 [ 0, %if.end277 ], [ 0, %if.end258 ], [ %call216, %if.end211 ]
  %call286 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %tobool287 = icmp eq i32 %logical.0, 0
  br i1 %tobool287, label %if.end297, label %if.then288

if.then288:                                       ; preds = %if.end285
  %call289 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 59) #9
  %92 = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  %cmp291 = icmp eq %struct.regnode* %92, @PL_regdummy
  br i1 %cmp291, label %if.end295, label %if.then293

if.then293:                                       ; preds = %if.then288
  %flags294 = getelementptr inbounds %struct.regnode* %call289, i64 0, i32 0
  store i8 2, i8* %flags294, align 1, !tbaa !1
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %if.then288
  %call296 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 57, i32 %n.0) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call289, %struct.regnode* %call296) #9
  br label %return

if.end297:                                        ; preds = %if.end285
  %call298 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 57, i32 %n.0) #9
  %93 = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  %cmp300 = icmp eq %struct.regnode* %93, @PL_regdummy
  br i1 %cmp300, label %return, label %if.then302

if.then302:                                       ; preds = %if.end297
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %94 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast303 = ptrtoint %struct.regnode* %call298 to i64
  %sub.ptr.rhs.cast304 = ptrtoint %struct.regnode* %94 to i64
  %sub.ptr.sub305 = sub i64 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  %cmp306 = icmp slt i64 %sub.ptr.sub305, 0
  br i1 %cmp306, label %if.then308, label %if.else314

if.then308:                                       ; preds = %if.then302
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub305, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div) #8
  %.pr.pre = load %struct.regnode** %emit192.pre-phi, align 8, !tbaa !0
  br label %if.end329

if.else314:                                       ; preds = %if.then302
  %95 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast316 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast317 = ptrtoint i8* %1 to i64
  %sub.ptr.sub318 = sub i64 1, %sub.ptr.rhs.cast317
  %add319 = add i64 %sub.ptr.sub318, %sub.ptr.lhs.cast316
  %conv320 = trunc i64 %add319 to i32
  %mul = ashr exact i64 %sub.ptr.sub305, 1
  %rx326 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %96 = load %struct.regexp** %rx326, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %96, i64 0, i32 7
  %97 = load i32** %offsets, align 8, !tbaa !0
  %arrayidx327 = getelementptr inbounds i32* %97, i64 %mul
  store i32 %conv320, i32* %arrayidx327, align 4, !tbaa !3
  br label %if.end329

if.end329:                                        ; preds = %if.then308, %if.else314
  %.pr = phi %struct.regnode* [ %.pr.pre, %if.then308 ], [ %93, %if.else314 ]
  %cmp331 = icmp eq %struct.regnode* %.pr, @PL_regdummy
  br i1 %cmp331, label %return, label %if.then333

if.then333:                                       ; preds = %if.end329
  %98 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.rhs.cast336 = ptrtoint %struct.regnode* %98 to i64
  %sub.ptr.sub337 = sub i64 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast336
  %cmp339 = icmp slt i64 %sub.ptr.sub337, 0
  br i1 %cmp339, label %if.then341, label %if.else347

if.then341:                                       ; preds = %if.then333
  %sub.ptr.div338 = ashr exact i64 %sub.ptr.sub337, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div338) #8
  br label %return

if.else347:                                       ; preds = %if.then333
  %start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %99 = load i8** %start, align 8, !tbaa !0
  %sub.ptr.lhs.cast348 = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast349 = ptrtoint i8* %99 to i64
  %sub.ptr.sub350 = sub i64 %sub.ptr.lhs.cast348, %sub.ptr.rhs.cast349
  %conv351 = trunc i64 %sub.ptr.sub350 to i32
  %mul357 = ashr exact i64 %sub.ptr.sub337, 1
  %sub = add nsw i64 %mul357, -1
  %rx358 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %100 = load %struct.regexp** %rx358, align 8, !tbaa !0
  %offsets359 = getelementptr inbounds %struct.regexp* %100, i64 0, i32 7
  %101 = load i32** %offsets359, align 8, !tbaa !0
  %arrayidx360 = getelementptr inbounds i32* %101, i64 %sub
  store i32 %conv351, i32* %arrayidx360, align 4, !tbaa !3
  br label %return

sw.bb363:                                         ; preds = %if.then5
  %102 = load i8* %incdec.ptr9, align 1, !tbaa !1
  %cmp367 = icmp eq i8 %102, 63
  br i1 %cmp367, label %if.then369, label %if.else403

if.then369:                                       ; preds = %sw.bb363
  %arrayidx371 = getelementptr inbounds i8* %1, i64 3
  %103 = load i8* %arrayidx371, align 1, !tbaa !1
  switch i8 %103, label %sw.bb534 [
    i8 61, label %if.then393
    i8 33, label %if.then393
    i8 60, label %if.then393
    i8 123, label %if.then393
  ]

if.then393:                                       ; preds = %if.then369, %if.then369, %if.then369, %if.then369
  %call394 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 59) #9
  %emit395 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %104 = load %struct.regnode** %emit395, align 8, !tbaa !0
  %cmp396 = icmp eq %struct.regnode* %104, @PL_regdummy
  br i1 %cmp396, label %if.end400, label %if.then398

if.then398:                                       ; preds = %if.then393
  %flags399 = getelementptr inbounds %struct.regnode* %call394, i64 0, i32 0
  store i8 1, i8* %flags399, align 1, !tbaa !1
  br label %if.end400

if.end400:                                        ; preds = %if.then398, %if.then393
  %call401 = call fastcc %struct.regnode* @S_reg(%struct.RExC_state_t* %pRExC_state, i32 1, i32* %flag) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call394, %struct.regnode* %call401) #9
  br label %insert_if

if.else403:                                       ; preds = %sw.bb363
  %.off = add i8 %102, -49
  %105 = icmp ult i8 %.off, 9
  br i1 %105, label %if.then415, label %if.else514

if.then415:                                       ; preds = %if.else403
  %incdec.ptr417 = getelementptr inbounds i8* %1, i64 3
  store i8* %incdec.ptr417, i8** %parse, align 8, !tbaa !0
  %call418 = call i32 @atoi(i8* %incdec.ptr9) #8
  %106 = load i8* %incdec.ptr417, align 1, !tbaa !1
  %.off16851699 = add i8 %106, -48
  %107 = icmp ult i8 %.off16851699, 10
  br i1 %107, label %while.body430, label %while.end433

while.body430:                                    ; preds = %if.then415, %while.body430
  %108 = phi i8* [ %incdec.ptr432, %while.body430 ], [ %incdec.ptr417, %if.then415 ]
  %incdec.ptr432 = getelementptr inbounds i8* %108, i64 1
  store i8* %incdec.ptr432, i8** %parse, align 8, !tbaa !0
  %109 = load i8* %incdec.ptr432, align 1, !tbaa !1
  %.off1685 = add i8 %109, -48
  %110 = icmp ult i8 %.off1685, 10
  br i1 %110, label %while.body430, label %while.end433

while.end433:                                     ; preds = %while.body430, %if.then415
  %call434 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 54, i32 %call418) #9
  %call435 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %111 = load i8* %call435, align 1, !tbaa !1
  %cmp437 = icmp eq i8 %111, 41
  br i1 %cmp437, label %insert_if, label %if.then439

if.then439:                                       ; preds = %while.end433
  %emit440 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %112 = load %struct.regnode** %emit440, align 8, !tbaa !0
  %cmp441 = icmp eq %struct.regnode* %112, @PL_regdummy
  br i1 %cmp441, label %if.end445, label %if.then443

if.then443:                                       ; preds = %if.then439
  %rx444 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %113 = load %struct.regexp** %rx444, align 8, !tbaa !0
  %114 = bitcast %struct.regexp* %113 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %114) #8
  br label %if.end445

if.end445:                                        ; preds = %if.then443, %if.then439
  %115 = load i8** %parse, align 8, !tbaa !0
  %precomp448 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %116 = load i8** %precomp448, align 8, !tbaa !0
  %sub.ptr.lhs.cast449 = ptrtoint i8* %115 to i64
  %sub.ptr.rhs.cast450 = ptrtoint i8* %116 to i64
  %sub.ptr.sub451 = sub i64 %sub.ptr.lhs.cast449, %sub.ptr.rhs.cast450
  %conv452 = trunc i64 %sub.ptr.sub451 to i32
  %add.ptr455 = getelementptr inbounds i8* %116, i64 %sub.ptr.sub451
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str22, i64 0, i64 0), i32 %conv452, i8* %116, i8* %add.ptr455) #8
  br label %insert_if

insert_if:                                        ; preds = %while.end433, %if.end445, %if.end400
  %ret.0 = phi %struct.regnode* [ %call394, %if.end400 ], [ %call434, %if.end445 ], [ %call434, %while.end433 ]
  %call457 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 53, i32 0) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %ret.0, %struct.regnode* %call457) #9
  %call458 = call fastcc %struct.regnode* @S_regbranch(%struct.RExC_state_t* %pRExC_state, i32* %flags, i32 1) #9
  %cmp459 = icmp eq %struct.regnode* %call458, null
  %call462 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 55, i32 0) #9
  br i1 %cmp459, label %if.end465, label %if.else463

if.else463:                                       ; preds = %insert_if
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call458, %struct.regnode* %call462) #9
  br label %if.end465

if.end465:                                        ; preds = %insert_if, %if.else463
  %br.0 = phi %struct.regnode* [ %call458, %if.else463 ], [ %call462, %insert_if ]
  %call466 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %117 = load i8* %call466, align 1, !tbaa !1
  %118 = load i32* %flags, align 4, !tbaa !3
  %and467 = and i32 %118, 1
  %tobool468 = icmp eq i32 %and467, 0
  br i1 %tobool468, label %if.end471, label %if.then469

if.then469:                                       ; preds = %if.end465
  %119 = load i32* %flagp, align 4, !tbaa !3
  %or470 = or i32 %119, 1
  store i32 %or470, i32* %flagp, align 4, !tbaa !3
  br label %if.end471

if.end471:                                        ; preds = %if.end465, %if.then469
  %cmp473 = icmp eq i8 %117, 124
  br i1 %cmp473, label %if.then475, label %if.end485

if.then475:                                       ; preds = %if.end471
  %call476 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 53, i32 0) #9
  %call477 = call fastcc %struct.regnode* @S_regbranch(%struct.RExC_state_t* %pRExC_state, i32* %flags, i32 1) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %ret.0, %struct.regnode* %call476) #9
  %120 = load i32* %flags, align 4, !tbaa !3
  %and478 = and i32 %120, 1
  %tobool479 = icmp eq i32 %and478, 0
  br i1 %tobool479, label %if.end482, label %if.then480

if.then480:                                       ; preds = %if.then475
  %121 = load i32* %flagp, align 4, !tbaa !3
  %or481 = or i32 %121, 1
  store i32 %or481, i32* %flagp, align 4, !tbaa !3
  br label %if.end482

if.end482:                                        ; preds = %if.then475, %if.then480
  %call483 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %122 = load i8* %call483, align 1, !tbaa !1
  br label %if.end485

if.end485:                                        ; preds = %if.end471, %if.end482
  %c.0 = phi i8 [ %122, %if.end482 ], [ %117, %if.end471 ]
  %lastbr.0 = phi %struct.regnode* [ %call476, %if.end482 ], [ null, %if.end471 ]
  %cmp487 = icmp eq i8 %c.0, 41
  br i1 %cmp487, label %if.end506, label %if.then489

if.then489:                                       ; preds = %if.end485
  %emit490 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %123 = load %struct.regnode** %emit490, align 8, !tbaa !0
  %cmp491 = icmp eq %struct.regnode* %123, @PL_regdummy
  br i1 %cmp491, label %if.end495, label %if.then493

if.then493:                                       ; preds = %if.then489
  %rx494 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %124 = load %struct.regexp** %rx494, align 8, !tbaa !0
  %125 = bitcast %struct.regexp* %124 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %125) #8
  br label %if.end495

if.end495:                                        ; preds = %if.then493, %if.then489
  %126 = load i8** %parse, align 8, !tbaa !0
  %precomp498 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %127 = load i8** %precomp498, align 8, !tbaa !0
  %sub.ptr.lhs.cast499 = ptrtoint i8* %126 to i64
  %sub.ptr.rhs.cast500 = ptrtoint i8* %127 to i64
  %sub.ptr.sub501 = sub i64 %sub.ptr.lhs.cast499, %sub.ptr.rhs.cast500
  %conv502 = trunc i64 %sub.ptr.sub501 to i32
  %add.ptr505 = getelementptr inbounds i8* %127, i64 %sub.ptr.sub501
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str23, i64 0, i64 0), i32 %conv502, i8* %127, i8* %add.ptr505) #8
  br label %if.end506

if.end506:                                        ; preds = %if.end485, %if.end495
  %call507 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 37) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %br.0, %struct.regnode* %call507) #9
  %tobool508 = icmp eq %struct.regnode* %lastbr.0, null
  br i1 %tobool508, label %if.else512, label %if.then509

if.then509:                                       ; preds = %if.end506
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %lastbr.0, %struct.regnode* %call507) #9
  %add.ptr511 = getelementptr inbounds %struct.regnode* %lastbr.0, i64 2
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %add.ptr511, %struct.regnode* %call507) #9
  br label %return

if.else512:                                       ; preds = %if.end506
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %ret.0, %struct.regnode* %call507) #9
  br label %return

if.else514:                                       ; preds = %if.else403
  %emit515 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %128 = load %struct.regnode** %emit515, align 8, !tbaa !0
  %cmp516 = icmp eq %struct.regnode* %128, @PL_regdummy
  br i1 %cmp516, label %if.end520, label %if.then518

if.then518:                                       ; preds = %if.else514
  %rx519 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %129 = load %struct.regexp** %rx519, align 8, !tbaa !0
  %130 = bitcast %struct.regexp* %129 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %130) #8
  %.pre1717 = load i8** %parse, align 8, !tbaa !0
  br label %if.end520

if.end520:                                        ; preds = %if.then518, %if.else514
  %131 = phi i8* [ %.pre1717, %if.then518 ], [ %incdec.ptr9, %if.else514 ]
  %precomp523 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %132 = load i8** %precomp523, align 8, !tbaa !0
  %sub.ptr.lhs.cast524 = ptrtoint i8* %131 to i64
  %sub.ptr.rhs.cast525 = ptrtoint i8* %132 to i64
  %sub.ptr.sub526 = sub i64 %sub.ptr.lhs.cast524, %sub.ptr.rhs.cast525
  %conv528 = trunc i64 %sub.ptr.sub526 to i32
  %add.ptr531 = getelementptr inbounds i8* %132, i64 %sub.ptr.sub526
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0), i8* %131, i32 %conv528, i8* %132, i8* %add.ptr531) #9
  %.pre1718 = load i8** %parse, align 8, !tbaa !0
  br label %sw.bb534

sw.bb534:                                         ; preds = %if.then369, %if.end520, %if.then5
  %133 = phi i8* [ %incdec.ptr9, %if.then369 ], [ %.pre1718, %if.end520 ], [ %incdec.ptr9, %if.then5 ]
  %incdec.ptr536 = getelementptr inbounds i8* %133, i64 -1
  store i8* %incdec.ptr536, i8** %parse, align 8, !tbaa !0
  %emit537 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %134 = load %struct.regnode** %emit537, align 8, !tbaa !0
  %cmp538 = icmp eq %struct.regnode* %134, @PL_regdummy
  br i1 %cmp538, label %if.end542, label %if.then540

if.then540:                                       ; preds = %sw.bb534
  %rx541 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %135 = load %struct.regexp** %rx541, align 8, !tbaa !0
  %136 = bitcast %struct.regexp* %135 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %136) #8
  %.pre1719 = load i8** %parse, align 8, !tbaa !0
  br label %if.end542

if.end542:                                        ; preds = %if.then540, %sw.bb534
  %137 = phi i8* [ %.pre1719, %if.then540 ], [ %incdec.ptr536, %sw.bb534 ]
  %precomp545 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %138 = load i8** %precomp545, align 8, !tbaa !0
  %sub.ptr.lhs.cast546 = ptrtoint i8* %137 to i64
  %sub.ptr.rhs.cast547 = ptrtoint i8* %138 to i64
  %sub.ptr.sub548 = sub i64 %sub.ptr.lhs.cast546, %sub.ptr.rhs.cast547
  %conv549 = trunc i64 %sub.ptr.sub548 to i32
  %add.ptr552 = getelementptr inbounds i8* %138, i64 %sub.ptr.sub548
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), i32 %conv549, i8* %138, i8* %add.ptr552) #8
  br label %if.end828

sw.default:                                       ; preds = %if.then5
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %emit576 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %precomp619 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  br label %while.cond555.outer

while.cond555.outer:                              ; preds = %if.then712, %sw.default
  %139 = phi i8* [ %incdec.ptr, %sw.default ], [ %incdec.ptr714, %if.then712 ]
  %flagsp.0.ph = phi i32* [ %posflags, %sw.default ], [ %negflags, %if.then712 ]
  %140 = load i8* %139, align 1, !tbaa !1
  %tobool5581695 = icmp eq i8 %140, 0
  br i1 %tobool5581695, label %if.end715, label %land.end564.lr.ph

land.end564.lr.ph:                                ; preds = %while.cond555.outer
  %cmp623 = icmp eq i32* %flagsp.0.ph, %negflags
  %cond625 = select i1 %cmp623, i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0)
  %cond630 = select i1 %cmp623, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  br label %land.end564

land.end564:                                      ; preds = %land.end564.lr.ph, %if.end704
  %141 = phi i8* [ %139, %land.end564.lr.ph ], [ %incdec.ptr706, %if.end704 ]
  %142 = phi i8 [ %140, %land.end564.lr.ph ], [ %179, %if.end704 ]
  %wastedflags.01696 = phi i32 [ 0, %land.end564.lr.ph ], [ %wastedflags.1, %if.end704 ]
  %conv557 = sext i8 %142 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([8 x i8]* @.str26, i64 0, i64 0), i32 %conv557, i64 8)
  %tobool563 = icmp eq i8* %memchr, null
  br i1 %tobool563, label %while.end707, label %while.body565

while.body565:                                    ; preds = %land.end564
  switch i8 %142, label %if.else700 [
    i8 111, label %if.then575
    i8 103, label %if.then575
    i8 99, label %if.then644
  ]

if.then575:                                       ; preds = %while.body565, %while.body565
  %143 = load %struct.regnode** %emit576, align 8, !tbaa !0
  %cmp577 = icmp eq %struct.regnode* %143, @PL_regdummy
  br i1 %cmp577, label %land.lhs.true579, label %if.end704

land.lhs.true579:                                 ; preds = %if.then575
  %144 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings580 = getelementptr inbounds %struct.cop* %144, i64 0, i32 14
  %145 = load %struct.sv** %cop_warnings580, align 8, !tbaa !0
  %cmp581 = icmp eq %struct.sv* %145, null
  br i1 %cmp581, label %lor.lhs.false599, label %land.lhs.true583

land.lhs.true583:                                 ; preds = %land.lhs.true579
  %146 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings584 = getelementptr inbounds %struct.cop* %146, i64 0, i32 14
  %147 = load %struct.sv** %cop_warnings584, align 8, !tbaa !0
  %cmp585 = icmp eq %struct.sv* %147, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp585, label %lor.lhs.false599, label %land.lhs.true587

land.lhs.true587:                                 ; preds = %land.lhs.true583
  %148 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings588 = getelementptr inbounds %struct.cop* %148, i64 0, i32 14
  %149 = load %struct.sv** %cop_warnings588, align 8, !tbaa !0
  %cmp589 = icmp eq %struct.sv* %149, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp589, label %if.then607, label %lor.lhs.false591

lor.lhs.false591:                                 ; preds = %land.lhs.true587
  %150 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings592 = getelementptr inbounds %struct.cop* %150, i64 0, i32 14
  %151 = load %struct.sv** %cop_warnings592, align 8, !tbaa !0
  %sv_any593 = getelementptr inbounds %struct.sv* %151, i64 0, i32 0
  %152 = load i8** %sv_any593, align 8, !tbaa !0
  %xpv_pv594 = bitcast i8* %152 to i8**
  %153 = load i8** %xpv_pv594, align 8, !tbaa !0
  %arrayidx595 = getelementptr inbounds i8* %153, i64 5
  %154 = load i8* %arrayidx595, align 1, !tbaa !1
  %and597 = and i8 %154, 1
  %tobool598 = icmp eq i8 %and597, 0
  br i1 %tobool598, label %lor.lhs.false599, label %if.then607

lor.lhs.false599:                                 ; preds = %lor.lhs.false591, %land.lhs.true583, %land.lhs.true579
  %155 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings600 = getelementptr inbounds %struct.cop* %155, i64 0, i32 14
  %156 = load %struct.sv** %cop_warnings600, align 8, !tbaa !0
  %cmp601 = icmp eq %struct.sv* %156, null
  br i1 %cmp601, label %land.lhs.true603, label %if.end704

land.lhs.true603:                                 ; preds = %lor.lhs.false599
  %157 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and605 = and i8 %157, 1
  %tobool606 = icmp eq i8 %and605, 0
  br i1 %tobool606, label %if.end704, label %if.then607

if.then607:                                       ; preds = %lor.lhs.false591, %land.lhs.true603, %land.lhs.true587
  %158 = load i8** %parse, align 8, !tbaa !0
  %159 = load i8* %158, align 1, !tbaa !1
  %conv609 = sext i8 %159 to i32
  %cmp610 = icmp eq i8 %159, 111
  %cond = select i1 %cmp610, i32 1, i32 2
  %and612 = and i32 %cond, %wastedflags.01696
  %tobool613 = icmp eq i32 %and612, 0
  br i1 %tobool613, label %if.then614, label %if.end704

if.then614:                                       ; preds = %if.then607
  %or615 = or i32 %cond, %wastedflags.01696
  %add.ptr618 = getelementptr inbounds i8* %158, i64 1
  %160 = load i8** %precomp619, align 8, !tbaa !0
  %sub.ptr.lhs.cast620 = ptrtoint i8* %add.ptr618 to i64
  %sub.ptr.rhs.cast621 = ptrtoint i8* %160 to i64
  %sub.ptr.sub622 = sub i64 %sub.ptr.lhs.cast620, %sub.ptr.rhs.cast621
  %conv633 = trunc i64 %sub.ptr.sub622 to i32
  %add.ptr636 = getelementptr inbounds i8* %160, i64 %sub.ptr.sub622
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([88 x i8]* @.str27, i64 0, i64 0), i8* %cond625, i32 %conv609, i8* %cond630, i32 %conv609, i32 %conv633, i8* %160, i8* %add.ptr636) #8
  br label %if.end704

if.then644:                                       ; preds = %while.body565
  %161 = load %struct.regnode** %emit576, align 8, !tbaa !0
  %cmp646 = icmp eq %struct.regnode* %161, @PL_regdummy
  br i1 %cmp646, label %land.lhs.true648, label %if.end704

land.lhs.true648:                                 ; preds = %if.then644
  %162 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings649 = getelementptr inbounds %struct.cop* %162, i64 0, i32 14
  %163 = load %struct.sv** %cop_warnings649, align 8, !tbaa !0
  %cmp650 = icmp eq %struct.sv* %163, null
  br i1 %cmp650, label %lor.lhs.false668, label %land.lhs.true652

land.lhs.true652:                                 ; preds = %land.lhs.true648
  %164 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings653 = getelementptr inbounds %struct.cop* %164, i64 0, i32 14
  %165 = load %struct.sv** %cop_warnings653, align 8, !tbaa !0
  %cmp654 = icmp eq %struct.sv* %165, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp654, label %lor.lhs.false668, label %land.lhs.true656

land.lhs.true656:                                 ; preds = %land.lhs.true652
  %166 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings657 = getelementptr inbounds %struct.cop* %166, i64 0, i32 14
  %167 = load %struct.sv** %cop_warnings657, align 8, !tbaa !0
  %cmp658 = icmp eq %struct.sv* %167, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp658, label %if.then676, label %lor.lhs.false660

lor.lhs.false660:                                 ; preds = %land.lhs.true656
  %168 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings661 = getelementptr inbounds %struct.cop* %168, i64 0, i32 14
  %169 = load %struct.sv** %cop_warnings661, align 8, !tbaa !0
  %sv_any662 = getelementptr inbounds %struct.sv* %169, i64 0, i32 0
  %170 = load i8** %sv_any662, align 8, !tbaa !0
  %xpv_pv663 = bitcast i8* %170 to i8**
  %171 = load i8** %xpv_pv663, align 8, !tbaa !0
  %arrayidx664 = getelementptr inbounds i8* %171, i64 5
  %172 = load i8* %arrayidx664, align 1, !tbaa !1
  %and666 = and i8 %172, 1
  %tobool667 = icmp eq i8 %and666, 0
  br i1 %tobool667, label %lor.lhs.false668, label %if.then676

lor.lhs.false668:                                 ; preds = %lor.lhs.false660, %land.lhs.true652, %land.lhs.true648
  %173 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings669 = getelementptr inbounds %struct.cop* %173, i64 0, i32 14
  %174 = load %struct.sv** %cop_warnings669, align 8, !tbaa !0
  %cmp670 = icmp eq %struct.sv* %174, null
  br i1 %cmp670, label %land.lhs.true672, label %if.end704

land.lhs.true672:                                 ; preds = %lor.lhs.false668
  %175 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and674 = and i8 %175, 1
  %tobool675 = icmp eq i8 %and674, 0
  br i1 %tobool675, label %if.end704, label %if.then676

if.then676:                                       ; preds = %lor.lhs.false660, %land.lhs.true672, %land.lhs.true656
  %and677 = and i32 %wastedflags.01696, 4
  %tobool678 = icmp eq i32 %and677, 0
  br i1 %tobool678, label %if.then679, label %if.end704

if.then679:                                       ; preds = %if.then676
  %or680 = or i32 %wastedflags.01696, 6
  %176 = load i8** %parse, align 8, !tbaa !0
  %add.ptr683 = getelementptr inbounds i8* %176, i64 1
  %177 = load i8** %precomp619, align 8, !tbaa !0
  %sub.ptr.lhs.cast685 = ptrtoint i8* %add.ptr683 to i64
  %sub.ptr.rhs.cast686 = ptrtoint i8* %177 to i64
  %sub.ptr.sub687 = sub i64 %sub.ptr.lhs.cast685, %sub.ptr.rhs.cast686
  %conv694 = trunc i64 %sub.ptr.sub687 to i32
  %add.ptr697 = getelementptr inbounds i8* %177, i64 %sub.ptr.sub687
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([87 x i8]* @.str31, i64 0, i64 0), i8* %cond625, i8* %cond630, i32 %conv694, i8* %177, i8* %add.ptr697) #8
  br label %if.end704

if.else700:                                       ; preds = %while.body565
  call void @Perl_pmflag(i32* %flagsp.0.ph, i32 %conv557) #8
  br label %if.end704

if.end704:                                        ; preds = %if.then676, %land.lhs.true672, %lor.lhs.false668, %land.lhs.true603, %lor.lhs.false599, %if.then607, %if.else700, %if.then679, %if.then644, %if.then575, %if.then614
  %wastedflags.1 = phi i32 [ %wastedflags.01696, %if.then607 ], [ %or615, %if.then614 ], [ %wastedflags.01696, %if.then575 ], [ %or680, %if.then679 ], [ %wastedflags.01696, %if.then644 ], [ %wastedflags.01696, %if.else700 ], [ %wastedflags.01696, %lor.lhs.false599 ], [ %wastedflags.01696, %land.lhs.true603 ], [ %wastedflags.01696, %lor.lhs.false668 ], [ %wastedflags.01696, %land.lhs.true672 ], [ %wastedflags.01696, %if.then676 ]
  %178 = load i8** %parse, align 8, !tbaa !0
  %incdec.ptr706 = getelementptr inbounds i8* %178, i64 1
  store i8* %incdec.ptr706, i8** %parse, align 8, !tbaa !0
  %179 = load i8* %incdec.ptr706, align 1, !tbaa !1
  %tobool558 = icmp eq i8 %179, 0
  br i1 %tobool558, label %if.end715, label %land.end564

while.end707:                                     ; preds = %land.end564
  %cmp710 = icmp eq i8 %142, 45
  br i1 %cmp710, label %if.then712, label %if.end715

if.then712:                                       ; preds = %while.end707
  %incdec.ptr714 = getelementptr inbounds i8* %141, i64 1
  store i8* %incdec.ptr714, i8** %parse, align 8, !tbaa !0
  br label %while.cond555.outer

if.end715:                                        ; preds = %while.cond555.outer, %if.end704, %while.end707
  %180 = phi i8* [ %141, %while.end707 ], [ %incdec.ptr706, %if.end704 ], [ %139, %while.cond555.outer ]
  %181 = load i32* %posflags, align 4, !tbaa !3
  %182 = load i32* %flags1, align 4, !tbaa !3
  %or717 = or i32 %182, %181
  %183 = load i32* %negflags, align 4, !tbaa !3
  %neg = xor i32 %183, -1
  %and719 = and i32 %or717, %neg
  store i32 %and719, i32* %flags1, align 4, !tbaa !3
  %184 = load i8* %180, align 1, !tbaa !1
  %cmp722 = icmp eq i8 %184, 58
  br i1 %cmp722, label %if.then724, label %unknown

if.then724:                                       ; preds = %if.end715
  %incdec.ptr726 = getelementptr inbounds i8* %180, i64 1
  store i8* %incdec.ptr726, i8** %parse, align 8, !tbaa !0
  br label %if.end828

unknown:                                          ; preds = %sw.bb, %sw.bb117, %if.end715
  %185 = phi i8 [ %5, %sw.bb ], [ %44, %sw.bb117 ], [ %184, %if.end715 ]
  %186 = phi i8* [ %incdec.ptr9, %sw.bb ], [ %43, %sw.bb117 ], [ %180, %if.end715 ]
  %cmp730 = icmp eq i8 %185, 41
  br i1 %cmp730, label %if.end755, label %if.then732

if.then732:                                       ; preds = %unknown
  %incdec.ptr734 = getelementptr inbounds i8* %186, i64 1
  store i8* %incdec.ptr734, i8** %parse, align 8, !tbaa !0
  %emit735 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %187 = load %struct.regnode** %emit735, align 8, !tbaa !0
  %cmp736 = icmp eq %struct.regnode* %187, @PL_regdummy
  br i1 %cmp736, label %if.end740, label %if.then738

if.then738:                                       ; preds = %if.then732
  %rx739 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %188 = load %struct.regexp** %rx739, align 8, !tbaa !0
  %189 = bitcast %struct.regexp* %188 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %189) #8
  %.pre1711 = load i8** %parse, align 8, !tbaa !0
  br label %if.end740

if.end740:                                        ; preds = %if.then738, %if.then732
  %190 = phi i8* [ %.pre1711, %if.then738 ], [ %incdec.ptr734, %if.then732 ]
  %precomp743 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %191 = load i8** %precomp743, align 8, !tbaa !0
  %sub.ptr.lhs.cast744 = ptrtoint i8* %190 to i64
  %sub.ptr.rhs.cast745 = ptrtoint i8* %191 to i64
  %sub.ptr.sub746 = sub i64 %sub.ptr.lhs.cast744, %sub.ptr.rhs.cast745
  %sub.ptr.rhs.cast749 = ptrtoint i8* %1 to i64
  %sub.ptr.sub750 = sub i64 %sub.ptr.lhs.cast744, %sub.ptr.rhs.cast749
  %conv751 = trunc i64 %sub.ptr.sub746 to i32
  %add.ptr754 = getelementptr inbounds i8* %191, i64 %sub.ptr.sub746
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([34 x i8]* @.str32, i64 0, i64 0), i64 %sub.ptr.sub750, i8* %1, i32 %conv751, i8* %191, i8* %add.ptr754) #9
  br label %if.end755

if.end755:                                        ; preds = %unknown, %if.end740
  %call756 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  store i32 8, i32* %flagp, align 4, !tbaa !3
  br label %return

if.else757:                                       ; preds = %if.then
  %npar = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 13
  %192 = load i32* %npar, align 4, !tbaa !3
  %inc759 = add nsw i32 %192, 1
  store i32 %inc759, i32* %npar, align 4, !tbaa !3
  %call760 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 45, i32 %192) #9
  %emit761 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %193 = load %struct.regnode** %emit761, align 8, !tbaa !0
  %cmp762 = icmp eq %struct.regnode* %193, @PL_regdummy
  br i1 %cmp762, label %if.end828, label %if.then764

if.then764:                                       ; preds = %if.else757
  %emit_start765 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %194 = load %struct.regnode** %emit_start765, align 8, !tbaa !0
  %sub.ptr.lhs.cast766 = ptrtoint %struct.regnode* %call760 to i64
  %sub.ptr.rhs.cast767 = ptrtoint %struct.regnode* %194 to i64
  %sub.ptr.sub768 = sub i64 %sub.ptr.lhs.cast766, %sub.ptr.rhs.cast767
  %cmp770 = icmp slt i64 %sub.ptr.sub768, 0
  br i1 %cmp770, label %if.then772, label %if.else778

if.then772:                                       ; preds = %if.then764
  %sub.ptr.div769 = ashr exact i64 %sub.ptr.sub768, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div769) #8
  %.pr1670.pre = load %struct.regnode** %emit761, align 8, !tbaa !0
  br label %if.end789

if.else778:                                       ; preds = %if.then764
  %mul784 = ashr exact i64 %sub.ptr.sub768, 1
  %rx785 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %195 = load %struct.regexp** %rx785, align 8, !tbaa !0
  %offsets786 = getelementptr inbounds %struct.regexp* %195, i64 0, i32 7
  %196 = load i32** %offsets786, align 8, !tbaa !0
  %arrayidx787 = getelementptr inbounds i32* %196, i64 %mul784
  store i32 1, i32* %arrayidx787, align 4, !tbaa !3
  br label %if.end789

if.end789:                                        ; preds = %if.then772, %if.else778
  %.pr1670 = phi %struct.regnode* [ %.pr1670.pre, %if.then772 ], [ %193, %if.else778 ]
  %cmp791 = icmp eq %struct.regnode* %.pr1670, @PL_regdummy
  br i1 %cmp791, label %if.end828, label %if.then793

if.then793:                                       ; preds = %if.end789
  %197 = load %struct.regnode** %emit_start765, align 8, !tbaa !0
  %sub.ptr.rhs.cast796 = ptrtoint %struct.regnode* %197 to i64
  %sub.ptr.sub797 = sub i64 %sub.ptr.lhs.cast766, %sub.ptr.rhs.cast796
  %cmp799 = icmp slt i64 %sub.ptr.sub797, 0
  br i1 %cmp799, label %if.then801, label %if.else807

if.then801:                                       ; preds = %if.then793
  %sub.ptr.div798 = ashr exact i64 %sub.ptr.sub797, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div798) #8
  br label %if.end828

if.else807:                                       ; preds = %if.then793
  %198 = load i8** %parse, align 8, !tbaa !0
  %start809 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %199 = load i8** %start809, align 8, !tbaa !0
  %sub.ptr.lhs.cast810 = ptrtoint i8* %198 to i64
  %sub.ptr.rhs.cast811 = ptrtoint i8* %199 to i64
  %sub.ptr.sub812 = sub i64 %sub.ptr.lhs.cast810, %sub.ptr.rhs.cast811
  %conv813 = trunc i64 %sub.ptr.sub812 to i32
  %mul819 = ashr exact i64 %sub.ptr.sub797, 1
  %sub820 = add nsw i64 %mul819, -1
  %rx821 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %200 = load %struct.regexp** %rx821, align 8, !tbaa !0
  %offsets822 = getelementptr inbounds %struct.regexp* %200, i64 0, i32 7
  %201 = load i32** %offsets822, align 8, !tbaa !0
  %arrayidx823 = getelementptr inbounds i32* %201, i64 %sub820
  store i32 %conv813, i32* %arrayidx823, align 4, !tbaa !3
  br label %if.end828

if.end828:                                        ; preds = %if.end789, %if.else757, %entry, %if.else807, %if.then801, %sw.bb28, %if.then5, %if.then5, %if.then724, %if.end542, %if.end34
  %open.0 = phi i32 [ 0, %if.then724 ], [ 0, %if.end542 ], [ 0, %if.end34 ], [ 0, %if.then5 ], [ 0, %if.then5 ], [ 0, %sw.bb28 ], [ 1, %if.then801 ], [ 1, %if.else807 ], [ 0, %entry ], [ 1, %if.else757 ], [ 1, %if.end789 ]
  %parno.0 = phi i32 [ 0, %if.then724 ], [ 0, %if.end542 ], [ 0, %if.end34 ], [ 0, %if.then5 ], [ 0, %if.then5 ], [ 0, %sw.bb28 ], [ %192, %if.then801 ], [ %192, %if.else807 ], [ 0, %entry ], [ %192, %if.else757 ], [ %192, %if.end789 ]
  %ret.1 = phi %struct.regnode* [ null, %if.then724 ], [ null, %if.end542 ], [ null, %if.end34 ], [ null, %if.then5 ], [ null, %if.then5 ], [ null, %sw.bb28 ], [ %call760, %if.then801 ], [ %call760, %if.else807 ], [ null, %entry ], [ %call760, %if.else757 ], [ %call760, %if.end789 ]
  %paren.addr.2 = phi i32 [ 58, %if.then724 ], [ %conv10, %if.end542 ], [ %conv10, %if.end34 ], [ %conv10, %if.then5 ], [ %conv10, %if.then5 ], [ %paren.addr.1, %sw.bb28 ], [ %paren, %if.then801 ], [ %paren, %if.else807 ], [ 0, %entry ], [ %paren, %if.else757 ], [ %paren, %if.end789 ]
  %202 = load i8** %parse, align 8, !tbaa !0
  %call830 = call fastcc %struct.regnode* @S_regbranch(%struct.RExC_state_t* %pRExC_state, i32* %flags, i32 1) #9
  %cmp831 = icmp eq %struct.regnode* %call830, null
  br i1 %cmp831, label %return, label %if.end834

if.end834:                                        ; preds = %if.end828
  %203 = load i8** %parse, align 8, !tbaa !0
  %204 = load i8* %203, align 1, !tbaa !1
  %cmp837 = icmp eq i8 %204, 124
  br i1 %cmp837, label %if.then839, label %if.else921

if.then839:                                       ; preds = %if.end834
  %emit840 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %205 = load %struct.regnode** %emit840, align 8, !tbaa !0
  %cmp841 = icmp eq %struct.regnode* %205, @PL_regdummy
  br i1 %cmp841, label %if.else846, label %land.lhs.true843

land.lhs.true843:                                 ; preds = %if.then839
  %extralen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  %206 = load i32* %extralen, align 4, !tbaa !3
  %tobool844 = icmp eq i32 %206, 0
  br i1 %tobool844, label %if.else846, label %if.then845

if.then845:                                       ; preds = %land.lhs.true843
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 56, %struct.regnode* %call830) #9
  br label %if.end913

if.else846:                                       ; preds = %land.lhs.true843, %if.then839
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 31, %struct.regnode* %call830) #9
  %207 = load %struct.regnode** %emit840, align 8, !tbaa !0
  %cmp848 = icmp eq %struct.regnode* %207, @PL_regdummy
  br i1 %cmp848, label %if.then917, label %if.then850

if.then850:                                       ; preds = %if.else846
  %emit_start851 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %208 = load %struct.regnode** %emit_start851, align 8, !tbaa !0
  %sub.ptr.lhs.cast852 = ptrtoint %struct.regnode* %call830 to i64
  %sub.ptr.rhs.cast853 = ptrtoint %struct.regnode* %208 to i64
  %sub.ptr.sub854 = sub i64 %sub.ptr.lhs.cast852, %sub.ptr.rhs.cast853
  %cmp856 = icmp slt i64 %sub.ptr.sub854, 0
  br i1 %cmp856, label %if.then858, label %if.else864

if.then858:                                       ; preds = %if.then850
  %sub.ptr.div855 = ashr exact i64 %sub.ptr.sub854, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div855) #8
  %.pr1672.pre = load %struct.regnode** %emit840, align 8, !tbaa !0
  br label %if.end877

if.else864:                                       ; preds = %if.then850
  %cmp865 = icmp ne i32 %paren.addr.2, 0
  %conv866 = zext i1 %cmp865 to i32
  %mul872 = ashr exact i64 %sub.ptr.sub854, 1
  %rx873 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %209 = load %struct.regexp** %rx873, align 8, !tbaa !0
  %offsets874 = getelementptr inbounds %struct.regexp* %209, i64 0, i32 7
  %210 = load i32** %offsets874, align 8, !tbaa !0
  %arrayidx875 = getelementptr inbounds i32* %210, i64 %mul872
  store i32 %conv866, i32* %arrayidx875, align 4, !tbaa !3
  br label %if.end877

if.end877:                                        ; preds = %if.then858, %if.else864
  %.pr1672 = phi %struct.regnode* [ %.pr1672.pre, %if.then858 ], [ %207, %if.else864 ]
  %cmp879 = icmp eq %struct.regnode* %.pr1672, @PL_regdummy
  br i1 %cmp879, label %if.then917, label %if.then881

if.then881:                                       ; preds = %if.end877
  %211 = load %struct.regnode** %emit_start851, align 8, !tbaa !0
  %sub.ptr.rhs.cast884 = ptrtoint %struct.regnode* %211 to i64
  %sub.ptr.sub885 = sub i64 %sub.ptr.lhs.cast852, %sub.ptr.rhs.cast884
  %cmp887 = icmp slt i64 %sub.ptr.sub885, 0
  br i1 %cmp887, label %if.then889, label %if.else895

if.then889:                                       ; preds = %if.then881
  %sub.ptr.div886 = ashr exact i64 %sub.ptr.sub885, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div886) #8
  br label %if.end913

if.else895:                                       ; preds = %if.then881
  %start896 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %212 = load i8** %start896, align 8, !tbaa !0
  %sub.ptr.lhs.cast897 = ptrtoint i8* %202 to i64
  %sub.ptr.rhs.cast898 = ptrtoint i8* %212 to i64
  %sub.ptr.sub899 = sub i64 %sub.ptr.lhs.cast897, %sub.ptr.rhs.cast898
  %conv900 = trunc i64 %sub.ptr.sub899 to i32
  %mul906 = ashr exact i64 %sub.ptr.sub885, 1
  %sub907 = add nsw i64 %mul906, -1
  %rx908 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %213 = load %struct.regexp** %rx908, align 8, !tbaa !0
  %offsets909 = getelementptr inbounds %struct.regexp* %213, i64 0, i32 7
  %214 = load i32** %offsets909, align 8, !tbaa !0
  %arrayidx910 = getelementptr inbounds i32* %214, i64 %sub907
  store i32 %conv900, i32* %arrayidx910, align 4, !tbaa !3
  br label %if.end913

if.end913:                                        ; preds = %if.else895, %if.then889, %if.then845
  %.pr1674.pr = load %struct.regnode** %emit840, align 8, !tbaa !0
  %cmp915 = icmp eq %struct.regnode* %.pr1674.pr, @PL_regdummy
  br i1 %cmp915, label %if.then917, label %if.end928

if.then917:                                       ; preds = %if.else846, %if.end877, %if.end913
  %extralen918 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  %215 = load i32* %extralen918, align 4, !tbaa !3
  %add919 = add nsw i32 %215, 1
  store i32 %add919, i32* %extralen918, align 4, !tbaa !3
  br label %if.end928

if.else921:                                       ; preds = %if.end834
  %cmp922 = icmp eq i32 %paren.addr.2, 58
  br i1 %cmp922, label %if.then924, label %if.end928

if.then924:                                       ; preds = %if.else921
  %216 = load i32* %flags, align 4, !tbaa !3
  %and925 = and i32 %216, 2
  %217 = load i32* %flagp, align 4, !tbaa !3
  %or926 = or i32 %217, %and925
  store i32 %or926, i32* %flagp, align 4, !tbaa !3
  br label %if.end928

if.end928:                                        ; preds = %if.else921, %if.then924, %if.end913, %if.then917
  %have_branch.0 = phi i32 [ 1, %if.then917 ], [ 1, %if.end913 ], [ 0, %if.then924 ], [ 0, %if.else921 ]
  %tobool929 = icmp eq i32 %open.0, 0
  br i1 %tobool929, label %if.else931, label %if.then930

if.then930:                                       ; preds = %if.end928
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %ret.1, %struct.regnode* %call830) #9
  br label %if.end936

if.else931:                                       ; preds = %if.end928
  %cmp932 = icmp eq i32 %paren.addr.2, 63
  %ret.1.call830 = select i1 %cmp932, %struct.regnode* %ret.1, %struct.regnode* %call830
  br label %if.end936

if.end936:                                        ; preds = %if.else931, %if.then930
  %ret.2 = phi %struct.regnode* [ %ret.1, %if.then930 ], [ %ret.1.call830, %if.else931 ]
  %218 = load i32* %flags, align 4, !tbaa !3
  %and937 = and i32 %218, 5
  %219 = load i32* %flagp, align 4, !tbaa !3
  %or938 = or i32 %219, %and937
  store i32 %or938, i32* %flagp, align 4, !tbaa !3
  %220 = load i8** %parse, align 8, !tbaa !0
  %221 = load i8* %220, align 1, !tbaa !1
  %cmp9421690 = icmp eq i8 %221, 124
  br i1 %cmp9421690, label %while.body944.lr.ph, label %while.end976

while.body944.lr.ph:                              ; preds = %if.end936
  %emit945 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %extralen960 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  br label %while.body944

while.body944:                                    ; preds = %if.end973, %while.body944.lr.ph
  %lastbr.11692 = phi %struct.regnode* [ %call830, %while.body944.lr.ph ], [ %call964, %if.end973 ]
  %ender.01691 = phi %struct.regnode* [ null, %while.body944.lr.ph ], [ %ender.11678, %if.end973 ]
  %222 = load %struct.regnode** %emit945, align 8, !tbaa !0
  %cmp946 = icmp eq %struct.regnode* %222, @PL_regdummy
  br i1 %cmp946, label %if.then959, label %land.lhs.true948

land.lhs.true948:                                 ; preds = %while.body944
  %223 = load i32* %extralen960, align 4, !tbaa !3
  %tobool950 = icmp eq i32 %223, 0
  br i1 %tobool950, label %if.end962, label %if.end955

if.end955:                                        ; preds = %land.lhs.true948
  %call952 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 55, i32 0) #9
  %add.ptr954 = getelementptr inbounds %struct.regnode* %lastbr.11692, i64 2
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %add.ptr954, %struct.regnode* %call952) #9
  %.pr1676.pre = load %struct.regnode** %emit945, align 8, !tbaa !0
  %cmp957 = icmp eq %struct.regnode* %.pr1676.pre, @PL_regdummy
  br i1 %cmp957, label %if.then959, label %if.end962

if.then959:                                       ; preds = %if.end955, %while.body944
  %ender.11679 = phi %struct.regnode* [ %ender.01691, %while.body944 ], [ %call952, %if.end955 ]
  %224 = load i32* %extralen960, align 4, !tbaa !3
  %add961 = add nsw i32 %224, 2
  store i32 %add961, i32* %extralen960, align 4, !tbaa !3
  br label %if.end962

if.end962:                                        ; preds = %land.lhs.true948, %if.then959, %if.end955
  %ender.11678 = phi %struct.regnode* [ %ender.11679, %if.then959 ], [ %call952, %if.end955 ], [ %ender.01691, %land.lhs.true948 ]
  %call963 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %call964 = call fastcc %struct.regnode* @S_regbranch(%struct.RExC_state_t* %pRExC_state, i32* %flags, i32 0) #9
  %cmp965 = icmp eq %struct.regnode* %call964, null
  br i1 %cmp965, label %return, label %if.end968

if.end968:                                        ; preds = %if.end962
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %lastbr.11692, %struct.regnode* %call964) #9
  %225 = load i32* %flags, align 4, !tbaa !3
  %and969 = and i32 %225, 1
  %tobool970 = icmp eq i32 %and969, 0
  %.pre1722 = load i32* %flagp, align 4, !tbaa !3
  br i1 %tobool970, label %if.end973, label %if.then971

if.then971:                                       ; preds = %if.end968
  %or972 = or i32 %.pre1722, 1
  store i32 %or972, i32* %flagp, align 4, !tbaa !3
  br label %if.end973

if.end973:                                        ; preds = %if.end968, %if.then971
  %226 = phi i32 [ %or972, %if.then971 ], [ %.pre1722, %if.end968 ]
  %and974 = and i32 %225, 4
  %or975 = or i32 %226, %and974
  store i32 %or975, i32* %flagp, align 4, !tbaa !3
  %227 = load i8** %parse, align 8, !tbaa !0
  %228 = load i8* %227, align 1, !tbaa !1
  %cmp942 = icmp eq i8 %228, 124
  br i1 %cmp942, label %while.body944, label %while.end976

while.end976:                                     ; preds = %if.end973, %if.end936
  %229 = phi i32 [ %or938, %if.end936 ], [ %or975, %if.end973 ]
  %lastbr.1.lcssa = phi %struct.regnode* [ %call830, %if.end936 ], [ %call964, %if.end973 ]
  %ender.0.lcssa = phi %struct.regnode* [ null, %if.end936 ], [ %ender.11678, %if.end973 ]
  %tobool977 = icmp ne i32 %have_branch.0, 0
  %tobool977.not = xor i1 %tobool977, true
  %cmp979 = icmp eq i32 %paren.addr.2, 58
  %or.cond1666 = and i1 %cmp979, %tobool977.not
  br i1 %or.cond1666, label %if.end1065, label %if.then981

if.then981:                                       ; preds = %while.end976
  switch i32 %paren.addr.2, label %sw.epilog1058 [
    i32 58, label %sw.bb982
    i32 1, label %sw.bb984
    i32 60, label %sw.bb1052
    i32 44, label %sw.bb1052
    i32 61, label %sw.bb1052
    i32 33, label %sw.bb1052
    i32 62, label %sw.bb1054
    i32 0, label %sw.bb1056
  ]

sw.bb982:                                         ; preds = %if.then981
  %call983 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 37) #9
  br label %sw.epilog1058

sw.bb984:                                         ; preds = %if.then981
  %call985 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 46, i32 %parno.0) #9
  %emit986 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %230 = load %struct.regnode** %emit986, align 8, !tbaa !0
  %cmp987 = icmp eq %struct.regnode* %230, @PL_regdummy
  br i1 %cmp987, label %sw.epilog1058, label %if.then989

if.then989:                                       ; preds = %sw.bb984
  %emit_start990 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %231 = load %struct.regnode** %emit_start990, align 8, !tbaa !0
  %sub.ptr.lhs.cast991 = ptrtoint %struct.regnode* %call985 to i64
  %sub.ptr.rhs.cast992 = ptrtoint %struct.regnode* %231 to i64
  %sub.ptr.sub993 = sub i64 %sub.ptr.lhs.cast991, %sub.ptr.rhs.cast992
  %cmp995 = icmp slt i64 %sub.ptr.sub993, 0
  br i1 %cmp995, label %if.then997, label %if.else1003

if.then997:                                       ; preds = %if.then989
  %sub.ptr.div994 = ashr exact i64 %sub.ptr.sub993, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div994) #8
  %.pr1680.pre = load %struct.regnode** %emit986, align 8, !tbaa !0
  br label %if.end1022

if.else1003:                                      ; preds = %if.then989
  %232 = load i8** %parse, align 8, !tbaa !0
  %add.ptr1005 = getelementptr inbounds i8* %232, i64 1
  %start1006 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %233 = load i8** %start1006, align 8, !tbaa !0
  %sub.ptr.lhs.cast1007 = ptrtoint i8* %add.ptr1005 to i64
  %sub.ptr.rhs.cast1008 = ptrtoint i8* %233 to i64
  %sub.ptr.sub1009 = sub i64 %sub.ptr.lhs.cast1007, %sub.ptr.rhs.cast1008
  %conv1010 = trunc i64 %sub.ptr.sub1009 to i32
  %mul1016 = ashr exact i64 %sub.ptr.sub993, 1
  %sub1017 = add nsw i64 %mul1016, -1
  %rx1018 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %234 = load %struct.regexp** %rx1018, align 8, !tbaa !0
  %offsets1019 = getelementptr inbounds %struct.regexp* %234, i64 0, i32 7
  %235 = load i32** %offsets1019, align 8, !tbaa !0
  %arrayidx1020 = getelementptr inbounds i32* %235, i64 %sub1017
  store i32 %conv1010, i32* %arrayidx1020, align 4, !tbaa !3
  br label %if.end1022

if.end1022:                                       ; preds = %if.then997, %if.else1003
  %.pr1680 = phi %struct.regnode* [ %.pr1680.pre, %if.then997 ], [ %230, %if.else1003 ]
  %cmp1024 = icmp eq %struct.regnode* %.pr1680, @PL_regdummy
  br i1 %cmp1024, label %sw.epilog1058, label %if.then1026

if.then1026:                                      ; preds = %if.end1022
  %236 = load %struct.regnode** %emit_start990, align 8, !tbaa !0
  %sub.ptr.rhs.cast1029 = ptrtoint %struct.regnode* %236 to i64
  %sub.ptr.sub1030 = sub i64 %sub.ptr.lhs.cast991, %sub.ptr.rhs.cast1029
  %cmp1032 = icmp slt i64 %sub.ptr.sub1030, 0
  br i1 %cmp1032, label %if.then1034, label %if.else1040

if.then1034:                                      ; preds = %if.then1026
  %sub.ptr.div1031 = ashr exact i64 %sub.ptr.sub1030, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div1031) #8
  br label %sw.epilog1058

if.else1040:                                      ; preds = %if.then1026
  %mul1046 = ashr exact i64 %sub.ptr.sub1030, 1
  %rx1047 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %237 = load %struct.regexp** %rx1047, align 8, !tbaa !0
  %offsets1048 = getelementptr inbounds %struct.regexp* %237, i64 0, i32 7
  %238 = load i32** %offsets1048, align 8, !tbaa !0
  %arrayidx1049 = getelementptr inbounds i32* %238, i64 %mul1046
  store i32 1, i32* %arrayidx1049, align 4, !tbaa !3
  br label %sw.epilog1058

sw.bb1052:                                        ; preds = %if.then981, %if.then981, %if.then981, %if.then981
  %and1053 = and i32 %229, -2
  store i32 %and1053, i32* %flagp, align 4, !tbaa !3
  br label %sw.bb1054

sw.bb1054:                                        ; preds = %if.then981, %sw.bb1052
  %call1055 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 1) #9
  br label %sw.epilog1058

sw.bb1056:                                        ; preds = %if.then981
  %call1057 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 0) #9
  br label %sw.epilog1058

sw.epilog1058:                                    ; preds = %sw.bb984, %if.end1022, %if.else1040, %if.then1034, %if.then981, %sw.bb1056, %sw.bb1054, %sw.bb982
  %ender.2 = phi %struct.regnode* [ %ender.0.lcssa, %if.then981 ], [ %call1057, %sw.bb1056 ], [ %call1055, %sw.bb1054 ], [ %call985, %if.end1022 ], [ %call985, %if.then1034 ], [ %call985, %if.else1040 ], [ %call983, %sw.bb982 ], [ %call985, %sw.bb984 ]
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %lastbr.1.lcssa, %struct.regnode* %ender.2) #9
  %tobool977.not1728 = xor i1 %tobool977, true
  %cmp10611686 = icmp eq %struct.regnode* %ret.2, null
  %or.cond1729 = or i1 %cmp10611686, %tobool977.not1728
  br i1 %or.cond1729, label %if.end1065, label %lor.lhs.false.i.lr.ph

lor.lhs.false.i.lr.ph:                            ; preds = %sw.epilog1058
  %emit.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %S_regoptail.exit, %lor.lhs.false.i.lr.ph
  %br.11687 = phi %struct.regnode* [ %ret.2, %lor.lhs.false.i.lr.ph ], [ %call1063, %S_regoptail.exit ]
  %239 = load %struct.regnode** %emit.i, align 8, !tbaa !0
  %cmp1.i = icmp eq %struct.regnode* %239, @PL_regdummy
  br i1 %cmp1.i, label %S_regoptail.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %type.i = getelementptr inbounds %struct.regnode* %br.11687, i64 0, i32 1
  %240 = load i8* %type.i, align 1, !tbaa !1
  %cmp2.i = icmp eq i8 %240, 31
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds %struct.regnode* %br.11687, i64 1
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %add.ptr.i, %struct.regnode* %ender.2) #8
  br label %S_regoptail.exit

if.else.i:                                        ; preds = %if.end.i
  %idxprom.i = zext i8 %240 to i64
  %241 = lshr i64 1241867597247414272, %idxprom.i
  %242 = and i64 %241, 1
  %cmp9.i = icmp eq i64 %242, 0
  br i1 %cmp9.i, label %S_regoptail.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  %add.ptr13.i = getelementptr inbounds %struct.regnode* %br.11687, i64 2
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %add.ptr13.i, %struct.regnode* %ender.2) #8
  br label %S_regoptail.exit

S_regoptail.exit:                                 ; preds = %lor.lhs.false.i, %if.then4.i, %if.else.i, %if.then11.i
  %call1063 = call %struct.regnode* @Perl_regnext(%struct.regnode* %br.11687) #9
  %cmp1061 = icmp eq %struct.regnode* %call1063, null
  br i1 %cmp1061, label %if.end1065, label %lor.lhs.false.i

if.end1065:                                       ; preds = %sw.epilog1058, %S_regoptail.exit, %while.end976
  %tobool1066 = icmp eq i32 %paren.addr.2, 0
  br i1 %tobool1066, label %land.lhs.true1192, label %land.lhs.true1067

land.lhs.true1067:                                ; preds = %if.end1065
  %call1068 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8]* @S_reg.parens, i64 0, i64 0), i32 %paren.addr.2) #8
  %tobool1069 = icmp eq i8* %call1068, null
  br i1 %tobool1069, label %if.then1160, label %if.then1070

if.then1070:                                      ; preds = %land.lhs.true1067
  %sub.ptr.lhs.cast1071 = ptrtoint i8* %call1068 to i64
  %sub.ptr.sub1072 = sub i64 %sub.ptr.lhs.cast1071, ptrtoint ([6 x i8]* @S_reg.parens to i64)
  %rem1658 = and i64 %sub.ptr.sub1072, 1
  %tobool1073 = icmp ne i64 %rem1658, 0
  %conv1075 = select i1 %tobool1073, i8 51, i8 50
  %cmp1079 = icmp sgt i64 %sub.ptr.sub1072, 1
  %conv1080 = zext i1 %cmp1079 to i8
  %cmp1081 = icmp eq i32 %paren.addr.2, 62
  %.conv1075 = select i1 %cmp1081, i8 52, i8 %conv1075
  %.conv1080 = select i1 %cmp1081, i8 0, i8 %conv1080
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext %.conv1075, %struct.regnode* %ret.2) #9
  %emit1085 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %243 = load %struct.regnode** %emit1085, align 8, !tbaa !0
  %cmp1086 = icmp eq %struct.regnode* %243, @PL_regdummy
  br i1 %cmp1086, label %if.end1158.if.then1160_crit_edge, label %if.then1088

if.then1088:                                      ; preds = %if.then1070
  %emit_start1089 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %244 = load %struct.regnode** %emit_start1089, align 8, !tbaa !0
  %sub.ptr.lhs.cast1090 = ptrtoint %struct.regnode* %ret.2 to i64
  %sub.ptr.rhs.cast1091 = ptrtoint %struct.regnode* %244 to i64
  %sub.ptr.sub1092 = sub i64 %sub.ptr.lhs.cast1090, %sub.ptr.rhs.cast1091
  %cmp1094 = icmp slt i64 %sub.ptr.sub1092, 0
  br i1 %cmp1094, label %if.then1096, label %if.else1102

if.then1096:                                      ; preds = %if.then1088
  %sub.ptr.div1093 = ashr exact i64 %sub.ptr.sub1092, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div1093) #8
  %.pr1682.pre = load %struct.regnode** %emit1085, align 8, !tbaa !0
  br label %if.end1118

if.else1102:                                      ; preds = %if.then1088
  %245 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast1104 = ptrtoint i8* %245 to i64
  %sub.ptr.rhs.cast1105 = ptrtoint i8* %202 to i64
  %sub.ptr.sub1106 = sub i64 %sub.ptr.lhs.cast1104, %sub.ptr.rhs.cast1105
  %conv1107 = trunc i64 %sub.ptr.sub1106 to i32
  %mul1113 = ashr exact i64 %sub.ptr.sub1092, 1
  %rx1114 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %246 = load %struct.regexp** %rx1114, align 8, !tbaa !0
  %offsets1115 = getelementptr inbounds %struct.regexp* %246, i64 0, i32 7
  %247 = load i32** %offsets1115, align 8, !tbaa !0
  %arrayidx1116 = getelementptr inbounds i32* %247, i64 %mul1113
  store i32 %conv1107, i32* %arrayidx1116, align 4, !tbaa !3
  br label %if.end1118

if.end1118:                                       ; preds = %if.then1096, %if.else1102
  %.pr1682 = phi %struct.regnode* [ %.pr1682.pre, %if.then1096 ], [ %243, %if.else1102 ]
  %cmp1120 = icmp eq %struct.regnode* %.pr1682, @PL_regdummy
  br i1 %cmp1120, label %if.end1158.if.then1160_crit_edge, label %if.then1122

if.then1122:                                      ; preds = %if.end1118
  %248 = load %struct.regnode** %emit_start1089, align 8, !tbaa !0
  %sub.ptr.rhs.cast1125 = ptrtoint %struct.regnode* %248 to i64
  %sub.ptr.sub1126 = sub i64 %sub.ptr.lhs.cast1090, %sub.ptr.rhs.cast1125
  %cmp1128 = icmp slt i64 %sub.ptr.sub1126, 0
  br i1 %cmp1128, label %if.then1130, label %if.else1136

if.then1130:                                      ; preds = %if.then1122
  %sub.ptr.div1127 = ashr exact i64 %sub.ptr.sub1126, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div1127) #8
  br label %if.end1158.if.then1160_crit_edge

if.else1136:                                      ; preds = %if.then1122
  %add.ptr1137 = getelementptr inbounds i8* %202, i64 1
  %start1138 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %249 = load i8** %start1138, align 8, !tbaa !0
  %sub.ptr.lhs.cast1139 = ptrtoint i8* %add.ptr1137 to i64
  %sub.ptr.rhs.cast1140 = ptrtoint i8* %249 to i64
  %sub.ptr.sub1141 = sub i64 %sub.ptr.lhs.cast1139, %sub.ptr.rhs.cast1140
  %conv1142 = trunc i64 %sub.ptr.sub1141 to i32
  %mul1148 = ashr exact i64 %sub.ptr.sub1126, 1
  %sub1149 = add nsw i64 %mul1148, -1
  %rx1150 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %250 = load %struct.regexp** %rx1150, align 8, !tbaa !0
  %offsets1151 = getelementptr inbounds %struct.regexp* %250, i64 0, i32 7
  %251 = load i32** %offsets1151, align 8, !tbaa !0
  %arrayidx1152 = getelementptr inbounds i32* %251, i64 %sub1149
  store i32 %conv1142, i32* %arrayidx1152, align 4, !tbaa !3
  br label %if.end1158.if.then1160_crit_edge

if.end1158.if.then1160_crit_edge:                 ; preds = %if.then1130, %if.else1136, %if.end1118, %if.then1070
  %flags1156 = getelementptr inbounds %struct.regnode* %ret.2, i64 0, i32 0
  store i8 %.conv1080, i8* %flags1156, align 1, !tbaa !1
  %call1157 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 37) #9
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %ret.2, %struct.regnode* %call1157) #9
  br label %if.then1160

if.then1160:                                      ; preds = %land.lhs.true1067, %if.end1158.if.then1160_crit_edge
  store i32 %0, i32* %flags1, align 4, !tbaa !3
  %252 = load i8** %parse, align 8, !tbaa !0
  %end1163 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %253 = load i8** %end1163, align 8, !tbaa !0
  %cmp1164 = icmp ult i8* %252, %253
  br i1 %cmp1164, label %lor.lhs.false1166, label %if.then1171

lor.lhs.false1166:                                ; preds = %if.then1160
  %call1167 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %254 = load i8* %call1167, align 1, !tbaa !1
  %cmp1169 = icmp eq i8 %254, 41
  br i1 %cmp1169, label %return, label %if.then1171

if.then1171:                                      ; preds = %lor.lhs.false1166, %if.then1160
  store i8* %1, i8** %parse, align 8, !tbaa !0
  %emit1173 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %255 = load %struct.regnode** %emit1173, align 8, !tbaa !0
  %cmp1174 = icmp eq %struct.regnode* %255, @PL_regdummy
  br i1 %cmp1174, label %if.end1178, label %if.then1176

if.then1176:                                      ; preds = %if.then1171
  %rx1177 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %256 = load %struct.regexp** %rx1177, align 8, !tbaa !0
  %257 = bitcast %struct.regexp* %256 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %257) #8
  %.pre = load i8** %parse, align 8, !tbaa !0
  br label %if.end1178

if.end1178:                                       ; preds = %if.then1176, %if.then1171
  %258 = phi i8* [ %.pre, %if.then1176 ], [ %1, %if.then1171 ]
  %precomp1181 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %259 = load i8** %precomp1181, align 8, !tbaa !0
  %sub.ptr.lhs.cast1182 = ptrtoint i8* %258 to i64
  %sub.ptr.rhs.cast1183 = ptrtoint i8* %259 to i64
  %sub.ptr.sub1184 = sub i64 %sub.ptr.lhs.cast1182, %sub.ptr.rhs.cast1183
  %conv1185 = trunc i64 %sub.ptr.sub1184 to i32
  %add.ptr1188 = getelementptr inbounds i8* %259, i64 %sub.ptr.sub1184
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0), i32 %conv1185, i8* %259, i8* %add.ptr1188) #8
  br label %return

land.lhs.true1192:                                ; preds = %if.end1065
  %260 = load i8** %parse, align 8, !tbaa !0
  %end1194 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %261 = load i8** %end1194, align 8, !tbaa !0
  %cmp1195 = icmp ult i8* %260, %261
  br i1 %cmp1195, label %if.then1197, label %return

if.then1197:                                      ; preds = %land.lhs.true1192
  %262 = load i8* %260, align 1, !tbaa !1
  %cmp1200 = icmp eq i8 %262, 41
  br i1 %cmp1200, label %if.then1202, label %if.else1221

if.then1202:                                      ; preds = %if.then1197
  %incdec.ptr1204 = getelementptr inbounds i8* %260, i64 1
  store i8* %incdec.ptr1204, i8** %parse, align 8, !tbaa !0
  %emit1205 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %263 = load %struct.regnode** %emit1205, align 8, !tbaa !0
  %cmp1206 = icmp eq %struct.regnode* %263, @PL_regdummy
  br i1 %cmp1206, label %if.end1210, label %if.then1208

if.then1208:                                      ; preds = %if.then1202
  %rx1209 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %264 = load %struct.regexp** %rx1209, align 8, !tbaa !0
  %265 = bitcast %struct.regexp* %264 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %265) #8
  %.pre1707 = load i8** %parse, align 8, !tbaa !0
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1208, %if.then1202
  %266 = phi i8* [ %.pre1707, %if.then1208 ], [ %incdec.ptr1204, %if.then1202 ]
  %precomp1213 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %267 = load i8** %precomp1213, align 8, !tbaa !0
  %sub.ptr.lhs.cast1214 = ptrtoint i8* %266 to i64
  %sub.ptr.rhs.cast1215 = ptrtoint i8* %267 to i64
  %sub.ptr.sub1216 = sub i64 %sub.ptr.lhs.cast1214, %sub.ptr.rhs.cast1215
  %conv1217 = trunc i64 %sub.ptr.sub1216 to i32
  %add.ptr1220 = getelementptr inbounds i8* %267, i64 %sub.ptr.sub1216
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i32 %conv1217, i8* %267, i8* %add.ptr1220) #8
  br label %return

if.else1221:                                      ; preds = %if.then1197
  %precomp1225 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %268 = load i8** %precomp1225, align 8, !tbaa !0
  %sub.ptr.lhs.cast1226 = ptrtoint i8* %261 to i64
  %sub.ptr.rhs.cast1227 = ptrtoint i8* %268 to i64
  %sub.ptr.sub1228 = sub i64 %sub.ptr.lhs.cast1226, %sub.ptr.rhs.cast1227
  %emit1229 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %269 = load %struct.regnode** %emit1229, align 8, !tbaa !0
  %cmp1230 = icmp eq %struct.regnode* %269, @PL_regdummy
  br i1 %cmp1230, label %if.end1234, label %if.then1232

if.then1232:                                      ; preds = %if.else1221
  %rx1233 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %270 = load %struct.regexp** %rx1233, align 8, !tbaa !0
  %271 = bitcast %struct.regexp* %270 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %271) #8
  %.pre1708 = load i8** %precomp1225, align 8, !tbaa !0
  br label %if.end1234

if.end1234:                                       ; preds = %if.then1232, %if.else1221
  %272 = phi i8* [ %.pre1708, %if.then1232 ], [ %268, %if.else1221 ]
  %cmp1235 = icmp sgt i64 %sub.ptr.sub1228, 127
  %.1667 = select i1 %cmp1235, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %273 = trunc i64 %sub.ptr.sub1228 to i32
  %conv1239 = select i1 %cmp1235, i32 117, i32 %273
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str35, i64 0, i64 0), i32 %conv1239, i8* %272, i8* %.1667) #8
  br label %return

return:                                           ; preds = %if.end962, %if.end297, %if.end1178, %if.end1210, %if.end1234, %land.lhs.true1192, %lor.lhs.false1166, %if.end828, %if.then509, %if.else512, %if.end329, %if.else347, %if.then341, %if.end755, %if.end295, %if.end70
  %retval.0 = phi %struct.regnode* [ null, %if.end755 ], [ %call289, %if.end295 ], [ null, %if.end70 ], [ %call298, %if.then341 ], [ %call298, %if.else347 ], [ %call298, %if.end329 ], [ %ret.0, %if.else512 ], [ %ret.0, %if.then509 ], [ null, %if.end828 ], [ %ret.2, %lor.lhs.false1166 ], [ %ret.2, %land.lhs.true1192 ], [ %ret.2, %if.end1234 ], [ %ret.2, %if.end1210 ], [ %ret.2, %if.end1178 ], [ %call298, %if.end297 ], [ null, %if.end962 ]
  ret %struct.regnode* %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #2

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize readonly uwtable
define %struct.regnode* @Perl_regnext(%struct.regnode* %p) #4 {
entry:
  %cmp = icmp eq %struct.regnode* %p, @PL_regdummy
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.regnode* %p, i64 0, i32 1
  %0 = load i8* %type, align 1, !tbaa !1
  %idxprom = zext i8 %0 to i64
  %1 = lshr i64 1277896394266378240, %idxprom
  %2 = and i64 %1, 1
  %tobool = icmp eq i64 %2, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %arg1 = getelementptr inbounds %struct.regnode* %p, i64 1
  %3 = bitcast %struct.regnode* %arg1 to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %next_off = getelementptr inbounds %struct.regnode* %p, i64 0, i32 2
  %5 = load i16* %next_off, align 2, !tbaa !4
  %conv1 = zext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %conv1, %cond.false ]
  %cmp2 = icmp eq i32 %cond, 0
  br i1 %cmp2, label %return, label %if.end5

if.end5:                                          ; preds = %cond.end
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds %struct.regnode* %p, i64 %idx.ext
  br label %return

return:                                           ; preds = %cond.end, %entry, %if.end5
  %retval.0 = phi %struct.regnode* [ %add.ptr, %if.end5 ], [ null, %entry ], [ null, %cond.end ]
  ret %struct.regnode* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_study_chunk(%struct.RExC_state_t* %pRExC_state, %struct.regnode** nocapture %scanp, i32* nocapture %deltap, %struct.regnode* %last, %struct.scan_data_t* %data, i32 %flags) #0 {
entry:
  %scan = alloca %struct.regnode*, align 8
  %data_fake = alloca %struct.scan_data_t, align 8
  %and_with = alloca %struct.regnode_charclass_class, align 4
  %accum = alloca %struct.regnode_charclass_class, align 8
  %deltanext = alloca i32, align 4
  %fake = alloca i32, align 4
  %this_class = alloca %struct.regnode_charclass_class, align 8
  %deltanext780 = alloca i32, align 4
  %this_class782 = alloca %struct.regnode_charclass_class, align 8
  %nxt11115 = alloca %struct.regnode*, align 8
  %l1216 = alloca i64, align 8
  %deltanext2351 = alloca i32, align 4
  %fake2353 = alloca i32, align 4
  %nscan = alloca %struct.regnode*, align 8
  %intrnl = alloca %struct.regnode_charclass_class, align 8
  %0 = load %struct.regnode** %scanp, align 8, !tbaa !0
  store %struct.regnode* %0, %struct.regnode** %scan, align 8, !tbaa !0
  %and = and i32 %flags, 1024
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %flags1 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %1 = load i32* %flags1, align 4, !tbaa !3
  %and2 = and i32 %1, 64
  %tobool3 = icmp ne i32 %and2, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  %type = getelementptr inbounds %struct.regnode* %0, i64 0, i32 1
  %3 = load i8* %type, align 1, !tbaa !1
  %cmp = icmp eq i8 %3, 45
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %land.end
  %arg1 = getelementptr inbounds %struct.regnode* %0, i64 1
  %4 = bitcast %struct.regnode* %arg1 to i32*
  %5 = load i32* %4, align 4, !tbaa !3
  %6 = bitcast %struct.scan_data_t* %data_fake to i8*
  call void @llvm.lifetime.start(i64 104, i8* %6) #3
  %7 = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 0
  call void @llvm.lifetime.start(i64 44, i8* %7) #3
  br label %land.lhs.true.lr.ph

cond.end:                                         ; preds = %land.end
  %8 = bitcast %struct.scan_data_t* %data_fake to i8*
  call void @llvm.lifetime.start(i64 104, i8* %8) #3
  %9 = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 0
  call void @llvm.lifetime.start(i64 44, i8* %9) #3
  %tobool53593 = icmp eq %struct.regnode* %0, null
  br i1 %tobool53593, label %finish, label %land.lhs.true.lr.ph

land.lhs.true.lr.ph:                              ; preds = %cond.end.thread, %cond.end
  %10 = phi i8* [ %7, %cond.end.thread ], [ %9, %cond.end ]
  %11 = phi i8* [ %6, %cond.end.thread ], [ %8, %cond.end ]
  %cond3672 = phi i32 [ %5, %cond.end.thread ], [ 0, %cond.end ]
  %utf8 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 17
  %tobool647 = icmp eq %struct.scan_data_t* %data, null
  %start_class742 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 17
  %pos_min652 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 2
  %flags2322 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %last_closep2506 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 16
  %flags1.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %longest_float2533 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 11
  %longest2534 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 8
  %12 = getelementptr inbounds %struct.regnode_charclass_class* %intrnl, i64 0, i32 0
  %flags2355 = getelementptr inbounds %struct.scan_data_t* %data_fake, i64 0, i32 14
  %tobool2356 = icmp ne %struct.scan_data_t* %data, null
  %whilem_c2358 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 15
  %whilem_c2359 = getelementptr inbounds %struct.scan_data_t* %data_fake, i64 0, i32 15
  %last_closep2361 = getelementptr inbounds %struct.scan_data_t* %data_fake, i64 0, i32 16
  %emit2413 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %parse2420 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %precomp2421 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %rx2417 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %13 = bitcast %struct.regnode_charclass_class* %intrnl to i64*
  %type.i3502 = getelementptr inbounds %struct.regnode_charclass_class* %intrnl, i64 0, i32 1
  %arraydecay.i.i3503 = getelementptr inbounds %struct.regnode_charclass_class* %intrnl, i64 0, i32 5, i64 0
  %14 = bitcast i8* %arraydecay.i.i3503 to i32*
  %15 = getelementptr inbounds %struct.regnode_charclass_class* %intrnl, i64 0, i32 4, i64 0
  %start_class2376 = getelementptr inbounds %struct.scan_data_t* %data_fake, i64 0, i32 17
  %16 = getelementptr inbounds %struct.regnode_charclass_class* %this_class782, i64 0, i32 0
  %17 = bitcast %struct.regnode_charclass_class* %this_class782 to i64*
  %type.i3476 = getelementptr inbounds %struct.regnode_charclass_class* %this_class782, i64 0, i32 1
  %arraydecay.i.i3477 = getelementptr inbounds %struct.regnode_charclass_class* %this_class782, i64 0, i32 5, i64 0
  %18 = bitcast i8* %arraydecay.i.i3477 to i32*
  %19 = getelementptr inbounds %struct.regnode_charclass_class* %this_class782, i64 0, i32 4, i64 0
  %tobool866.not3436 = xor i1 %tobool2356, true
  %whilem_seen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 6
  %last_end1201 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 5
  %pos_delta1375 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 3
  %last_found1384 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 4
  %last_start_min1401 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 6
  %last_start_max1423 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 7
  %end = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %20 = getelementptr inbounds %struct.regnode_charclass_class* %accum, i64 0, i32 0
  %21 = bitcast %struct.regnode_charclass_class* %accum to i64*
  %type.i = getelementptr inbounds %struct.regnode_charclass_class* %accum, i64 0, i32 1
  %arraydecay.i.i = getelementptr inbounds %struct.regnode_charclass_class* %accum, i64 0, i32 5, i64 0
  %22 = bitcast i8* %arraydecay.i.i to i32*
  %23 = getelementptr inbounds %struct.regnode_charclass_class* %accum, i64 0, i32 4, i64 0
  %24 = getelementptr inbounds %struct.regnode_charclass_class* %this_class, i64 0, i32 0
  %25 = bitcast %struct.regnode_charclass_class* %this_class to i64*
  %type.i3470 = getelementptr inbounds %struct.regnode_charclass_class* %this_class, i64 0, i32 1
  %arraydecay.i.i3471 = getelementptr inbounds %struct.regnode_charclass_class* %this_class, i64 0, i32 5, i64 0
  %26 = bitcast i8* %arraydecay.i.i3471 to i32*
  %27 = getelementptr inbounds %struct.regnode_charclass_class* %this_class, i64 0, i32 4, i64 0
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond.backedge.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %28 = phi i8 [ %3, %land.lhs.true.lr.ph ], [ %.pre3661, %while.cond.backedge.land.lhs.true_crit_edge ]
  %.pre.pre = phi %struct.regnode* [ %0, %land.lhs.true.lr.ph ], [ %466, %while.cond.backedge.land.lhs.true_crit_edge ]
  %flags.addr.03601 = phi i32 [ %flags, %land.lhs.true.lr.ph ], [ %flags.addr.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %min.03600 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %min.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %pars.03598 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %pars.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %delta.03597 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %delta.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %is_inf.03596 = phi i32 [ %land.ext, %land.lhs.true.lr.ph ], [ %is_inf.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %is_inf_internal.03595 = phi i32 [ 0, %land.lhs.true.lr.ph ], [ %is_inf_internal.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %is_par.03594 = phi i32 [ %cond3672, %land.lhs.true.lr.ph ], [ %is_par.0.be, %while.cond.backedge.land.lhs.true_crit_edge ]
  %cmp8 = icmp ne i8 %28, 0
  %cmp11 = icmp ult %struct.regnode* %.pre.pre, %last
  %or.cond3425 = and i1 %cmp8, %cmp11
  br i1 %or.cond3425, label %while.body, label %finish

while.body:                                       ; preds = %land.lhs.true
  %idxprom = zext i8 %28 to i64
  %29 = add i64 %idxprom, -33
  %cmp17 = icmp ult i64 %29, 3
  br i1 %cmp17, label %if.then, label %if.end167

if.then:                                          ; preds = %while.body
  %call = call %struct.regnode* @Perl_regnext(%struct.regnode* %.pre.pre) #9
  %tobool223565 = icmp eq %struct.regnode* %call, null
  br i1 %tobool223565, label %while.end, label %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph

while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph: ; preds = %if.then
  %str_len = getelementptr inbounds %struct.regnode* %.pre.pre, i64 0, i32 0
  %30 = load i8* %str_len, align 1, !tbaa !1
  %conv19 = zext i8 %30 to i64
  %sub = add i64 %conv19, 3
  %div = lshr i64 %sub, 2
  %add20 = add i64 %div, 1
  %add.ptr = getelementptr inbounds %struct.regnode* %.pre.pre, i64 %add20
  %cmp573570 = icmp ugt %struct.regnode* %call, %add.ptr
  br label %while.cond21.outer.while.cond21.outer.split_crit_edge

while.cond21.outer.while.cond21.outer.split_crit_edge: ; preds = %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph, %while.cond21.outer.backedge
  %cmp573577 = phi i1 [ %cmp573570, %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph ], [ %cmp57, %while.cond21.outer.backedge ]
  %31 = phi %struct.regnode* [ %.pre.pre, %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph ], [ %38, %while.cond21.outer.backedge ]
  %call.pn = phi %struct.regnode* [ %call, %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph ], [ %n.0.ph.be, %while.cond21.outer.backedge ]
  %stringok.0.ph3571 = phi i32 [ 1, %while.cond21.outer.while.cond21.outer.split_crit_edge.lr.ph ], [ %stringok.1, %while.cond21.outer.backedge ]
  %type243573 = getelementptr inbounds %struct.regnode* %call.pn, i64 0, i32 1
  %type343574 = getelementptr inbounds %struct.regnode* %31, i64 0, i32 1
  %next_off3575 = getelementptr inbounds %struct.regnode* %call.pn, i64 0, i32 2
  %next_off423576 = getelementptr inbounds %struct.regnode* %31, i64 0, i32 2
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else, %while.cond21.outer.while.cond21.outer.split_crit_edge
  %stringok.0 = phi i32 [ 0, %if.else ], [ %stringok.0.ph3571, %while.cond21.outer.while.cond21.outer.split_crit_edge ]
  %32 = load i8* %type243573, align 1, !tbaa !1
  %idxprom25 = zext i8 %32 to i64
  %33 = lshr i64 2305843215372124160, %idxprom25
  %34 = and i64 %33, 1
  %cmp28 = icmp eq i64 %34, 0
  br i1 %cmp28, label %lor.lhs.false, label %land.lhs.true38

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %tobool30 = icmp eq i32 %stringok.0, 0
  br i1 %tobool30, label %while.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %lor.lhs.false
  %35 = load i8* %type343574, align 1, !tbaa !1
  %cmp36 = icmp eq i8 %32, %35
  br i1 %cmp36, label %land.lhs.true38, label %while.end

land.lhs.true38:                                  ; preds = %land.lhs.true31, %land.lhs.true23
  %36 = load i16* %next_off3575, align 2, !tbaa !4
  %tobool40 = icmp eq i16 %36, 0
  br i1 %tobool40, label %while.end, label %land.rhs41

land.rhs41:                                       ; preds = %land.lhs.true38
  %conv39 = zext i16 %36 to i32
  %37 = load i16* %next_off423576, align 2, !tbaa !4
  %conv43 = zext i16 %37 to i32
  %add46 = add nsw i32 %conv43, %conv39
  %cmp47 = icmp slt i32 %add46, 32767
  br i1 %cmp47, label %while.body51, label %while.end

while.body51:                                     ; preds = %land.rhs41
  %cmp54 = icmp eq i8 %32, 37
  %or.cond3426 = or i1 %cmp54, %cmp573577
  %stringok.1 = select i1 %or.cond3426, i32 0, i32 %stringok.0
  br i1 %cmp28, label %if.else, label %if.then66

if.then66:                                        ; preds = %while.body51
  %add71 = add i16 %37, %36
  store i16 %add71, i16* %next_off423576, align 2, !tbaa !4
  %add.ptr73 = getelementptr inbounds %struct.regnode* %call.pn, i64 1
  %call74 = call %struct.regnode* @Perl_regnext(%struct.regnode* %call.pn) #9
  br label %while.cond21.outer.backedge

while.cond21.outer.backedge:                      ; preds = %if.then66, %if.end86
  %38 = phi %struct.regnode* [ %31, %if.then66 ], [ %.pre3648, %if.end86 ]
  %n.0.ph.be = phi %struct.regnode* [ %call74, %if.then66 ], [ %call79, %if.end86 ]
  %next.0.ph.be = phi %struct.regnode* [ %add.ptr73, %if.then66 ], [ %add.ptr105, %if.end86 ]
  %tobool22 = icmp eq %struct.regnode* %n.0.ph.be, null
  %cmp57 = icmp ugt %struct.regnode* %n.0.ph.be, %next.0.ph.be
  br i1 %tobool22, label %while.end, label %while.cond21.outer.while.cond21.outer.split_crit_edge

if.else:                                          ; preds = %while.body51
  %tobool75 = icmp eq i32 %stringok.1, 0
  br i1 %tobool75, label %land.lhs.true23, label %if.then76

if.then76:                                        ; preds = %if.else
  %str_len77 = getelementptr inbounds %struct.regnode* %31, i64 0, i32 0
  %39 = load i8* %str_len77, align 1, !tbaa !1
  %conv78 = zext i8 %39 to i32
  %str_len80 = getelementptr inbounds %struct.regnode* %call.pn, i64 0, i32 0
  %40 = load i8* %str_len80, align 1, !tbaa !1
  %conv81 = zext i8 %40 to i32
  %add82 = add nsw i32 %conv81, %conv78
  %cmp83 = icmp sgt i32 %add82, 255
  br i1 %cmp83, label %while.end, label %if.end86

if.end86:                                         ; preds = %if.then76
  %call79 = call %struct.regnode* @Perl_regnext(%struct.regnode* %call.pn) #9
  %add91 = add i16 %37, %36
  store i16 %add91, i16* %next_off423576, align 2, !tbaa !4
  %41 = load i8* %str_len80, align 1, !tbaa !1
  %str_len95 = getelementptr inbounds %struct.regnode* %31, i64 0, i32 0
  %42 = load i8* %str_len95, align 1, !tbaa !1
  %add97 = add i8 %42, %41
  store i8 %add97, i8* %str_len95, align 1, !tbaa !1
  %43 = load i8* %str_len80, align 1, !tbaa !1
  %conv100 = zext i8 %43 to i64
  %sub102 = add i64 %conv100, 3
  %div103 = lshr i64 %sub102, 2
  %add104 = add i64 %div103, 1
  %add.ptr105 = getelementptr inbounds %struct.regnode* %call.pn, i64 %add104
  %44 = load %struct.regnode** %scan, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.regnode* %44, i64 1, i32 0
  %idx.ext = zext i8 %39 to i64
  %add.ptr106 = getelementptr inbounds i8* %arraydecay, i64 %idx.ext
  %arraydecay108 = getelementptr inbounds %struct.regnode* %call.pn, i64 1, i32 0
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr106, i8* %arraydecay108, i64 %conv100, i32 1, i1 false)
  %.pre3648 = load %struct.regnode** %scan, align 8, !tbaa !0
  br label %while.cond21.outer.backedge

while.end:                                        ; preds = %if.then76, %while.cond21.outer.backedge, %if.then, %land.rhs41, %land.lhs.true31, %lor.lhs.false, %land.lhs.true38
  %45 = phi %struct.regnode* [ %.pre.pre, %if.then ], [ %38, %while.cond21.outer.backedge ], [ %31, %land.rhs41 ], [ %31, %land.lhs.true31 ], [ %31, %lor.lhs.false ], [ %31, %land.lhs.true38 ], [ %31, %if.then76 ]
  %46 = load i32* %utf8, align 4, !tbaa !3
  %cmp113 = icmp eq i32 %46, 0
  br i1 %cmp113, label %if.end167, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %while.end
  %type116 = getelementptr inbounds %struct.regnode* %45, i64 0, i32 1
  %47 = load i8* %type116, align 1, !tbaa !1
  %cmp118 = icmp eq i8 %47, 34
  br i1 %cmp118, label %land.lhs.true120, label %if.end167

land.lhs.true120:                                 ; preds = %land.lhs.true115
  %str_len121 = getelementptr inbounds %struct.regnode* %45, i64 0, i32 0
  %48 = load i8* %str_len121, align 1, !tbaa !1
  %cmp123 = icmp ugt i8 %48, 5
  br i1 %cmp123, label %if.then125, label %if.end167

if.then125:                                       ; preds = %land.lhs.true120
  %arraydecay127 = getelementptr inbounds %struct.regnode* %45, i64 1, i32 0
  %idx.ext130 = zext i8 %48 to i64
  %add.ptr131.sum = add i64 %idx.ext130, -1
  %add.ptr132 = getelementptr inbounds i8* %arraydecay127, i64 %add.ptr131.sum
  %add.ptr132.sum = add i64 %idx.ext130, -5
  %add.ptr133 = getelementptr inbounds i8* %arraydecay127, i64 %add.ptr132.sum
  %cmp1363528 = icmp sgt i64 %add.ptr132.sum, 2
  br i1 %cmp1363528, label %land.rhs138.lr.ph, label %if.end167.loopexit

land.rhs138.lr.ph:                                ; preds = %if.then125
  %add.ptr135 = getelementptr inbounds i8* %arraydecay127, i64 2
  br label %land.rhs138

land.rhs138:                                      ; preds = %land.rhs138.lr.ph, %for.inc
  %min.13530 = phi i32 [ %min.03600, %land.rhs138.lr.ph ], [ %min.2, %for.inc ]
  %s.03529 = phi i8* [ %add.ptr135, %land.rhs138.lr.ph ], [ %add.ptr165, %for.inc ]
  %call139 = call i8* @Perl_ninstr(i8* %s.03529, i8* %add.ptr132, i8* getelementptr inbounds ([5 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str96, i64 0, i64 3)) #8
  %tobool140 = icmp eq i8* %call139, null
  br i1 %tobool140, label %if.end167.loopexit, label %for.body

for.body:                                         ; preds = %land.rhs138
  %arrayidx143 = getelementptr inbounds i8* %call139, i64 -1
  %49 = load i8* %arrayidx143, align 1, !tbaa !1
  switch i8 %49, label %for.inc [
    i8 -71, label %land.lhs.true147
    i8 -123, label %land.lhs.true157
  ]

land.lhs.true147:                                 ; preds = %for.body
  %arrayidx148 = getelementptr inbounds i8* %call139, i64 -2
  %50 = load i8* %arrayidx148, align 1, !tbaa !1
  %cmp150 = icmp eq i8 %50, -50
  br i1 %cmp150, label %if.then162, label %for.inc

land.lhs.true157:                                 ; preds = %for.body
  %arrayidx158 = getelementptr inbounds i8* %call139, i64 -2
  %51 = load i8* %arrayidx158, align 1, !tbaa !1
  %cmp160 = icmp eq i8 %51, -49
  br i1 %cmp160, label %if.then162, label %for.inc

if.then162:                                       ; preds = %land.lhs.true157, %land.lhs.true147
  %sub163 = add nsw i32 %min.13530, -4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true147, %land.lhs.true157, %if.then162
  %min.2 = phi i32 [ %sub163, %if.then162 ], [ %min.13530, %land.lhs.true157 ], [ %min.13530, %land.lhs.true147 ], [ %min.13530, %for.body ]
  %add.ptr165 = getelementptr inbounds i8* %call139, i64 4
  %cmp136 = icmp ult i8* %add.ptr165, %add.ptr133
  br i1 %cmp136, label %land.rhs138, label %if.end167.loopexit

if.end167.loopexit:                               ; preds = %for.inc, %land.rhs138, %if.then125
  %min.1.lcssa = phi i32 [ %min.03600, %if.then125 ], [ %min.13530, %land.rhs138 ], [ %min.2, %for.inc ]
  %.pre3649 = load %struct.regnode** %scan, align 8, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %while.end, %if.end167.loopexit, %land.lhs.true115, %land.lhs.true120, %while.body
  %52 = phi %struct.regnode* [ %45, %land.lhs.true120 ], [ %45, %land.lhs.true115 ], [ %.pre.pre, %while.body ], [ %.pre3649, %if.end167.loopexit ], [ %45, %while.end ]
  %min.3 = phi i32 [ %min.03600, %land.lhs.true120 ], [ %min.03600, %land.lhs.true115 ], [ %min.03600, %while.body ], [ %min.1.lcssa, %if.end167.loopexit ], [ %min.03600, %while.end ]
  %type168 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 1
  %53 = load i8* %type168, align 1, !tbaa !1
  %cmp170 = icmp eq i8 %53, 43
  br i1 %cmp170, label %if.else614, label %if.then172

if.then172:                                       ; preds = %if.end167
  %idxprom174 = zext i8 %53 to i64
  %54 = lshr i64 1277896394266378240, %idxprom174
  %55 = and i64 %54, 1
  %tobool177 = icmp ne i64 %55, 0
  %cond178 = select i1 %tobool177, i32 2147483647, i32 65535
  br i1 %tobool177, label %cond.true184, label %cond.false186

cond.true184:                                     ; preds = %if.then172
  %arg1185 = getelementptr inbounds %struct.regnode* %52, i64 1
  %56 = bitcast %struct.regnode* %arg1185 to i32*
  %57 = load i32* %56, align 4, !tbaa !3
  br label %while.cond192

cond.false186:                                    ; preds = %if.then172
  %next_off187 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 2
  %58 = load i16* %next_off187, align 2, !tbaa !4
  %conv188 = zext i16 %58 to i32
  br label %while.cond192

while.cond192:                                    ; preds = %cond.true184, %cond.false186, %land.rhs214
  %n191.0 = phi %struct.regnode* [ %call193, %land.rhs214 ], [ %52, %cond.false186 ], [ %52, %cond.true184 ]
  %off.0 = phi i32 [ %add215, %land.rhs214 ], [ %conv188, %cond.false186 ], [ %57, %cond.true184 ]
  %call193 = call %struct.regnode* @Perl_regnext(%struct.regnode* %n191.0) #9
  %tobool194 = icmp eq %struct.regnode* %call193, null
  br i1 %tobool194, label %while.end222, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %while.cond192
  %type196 = getelementptr inbounds %struct.regnode* %call193, i64 0, i32 1
  %59 = load i8* %type196, align 1, !tbaa !1
  %idxprom197 = zext i8 %59 to i64
  %60 = lshr i64 2305843215372124160, %idxprom197
  %61 = and i64 %60, 1
  %cmp200 = icmp eq i64 %61, 0
  br i1 %cmp200, label %lor.lhs.false206, label %land.lhs.true202

land.lhs.true202:                                 ; preds = %land.lhs.true195
  %next_off203 = getelementptr inbounds %struct.regnode* %call193, i64 0, i32 2
  %62 = load i16* %next_off203, align 2, !tbaa !4
  %conv204 = zext i16 %62 to i32
  %tobool205 = icmp eq i16 %62, 0
  br i1 %tobool205, label %lor.lhs.false206, label %land.rhs214

lor.lhs.false206:                                 ; preds = %land.lhs.true202, %land.lhs.true195
  %cmp209 = icmp eq i8 %59, 55
  br i1 %cmp209, label %land.lhs.true211, label %while.end222

land.lhs.true211:                                 ; preds = %lor.lhs.false206
  %arg1212 = getelementptr inbounds %struct.regnode* %call193, i64 1
  %63 = bitcast %struct.regnode* %arg1212 to i32*
  %64 = load i32* %63, align 4, !tbaa !3
  %tobool213 = icmp eq i32 %64, 0
  br i1 %tobool213, label %while.end222, label %land.rhs214

land.rhs214:                                      ; preds = %land.lhs.true202, %land.lhs.true211
  %noff.0 = phi i32 [ %conv204, %land.lhs.true202 ], [ %64, %land.lhs.true211 ]
  %add215 = add nsw i32 %noff.0, %off.0
  %cmp216 = icmp slt i32 %add215, %cond178
  br i1 %cmp216, label %while.cond192, label %while.end222

while.end222:                                     ; preds = %land.lhs.true211, %while.cond192, %lor.lhs.false206, %land.rhs214
  %tobool226 = icmp eq i64 %55, 0
  br i1 %tobool226, label %if.else229, label %if.then227

if.then227:                                       ; preds = %while.end222
  %arg1228 = getelementptr inbounds %struct.regnode* %52, i64 1
  %65 = bitcast %struct.regnode* %arg1228 to i32*
  store i32 %off.0, i32* %65, align 4, !tbaa !3
  br label %if.end233

if.else229:                                       ; preds = %while.end222
  %conv230 = trunc i32 %off.0 to i16
  %next_off231 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 2
  store i16 %conv230, i16* %next_off231, align 2, !tbaa !4
  br label %if.end233

if.end233:                                        ; preds = %if.then227, %if.else229
  %conv235 = zext i8 %53 to i32
  switch i8 %53, label %if.else614 [
    i8 31, label %if.then253
    i8 56, label %if.then253
    i8 53, label %if.then253
    i8 52, label %if.then253
    i8 33, label %if.then417
  ]

if.then253:                                       ; preds = %if.end233, %if.end233, %if.end233, %if.end233
  %call254 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %type257 = getelementptr inbounds %struct.regnode* %call254, i64 0, i32 1
  %66 = load i8* %type257, align 1, !tbaa !1
  %cmp259 = icmp eq i8 %66, %53
  %cmp262 = icmp eq i8 %53, 53
  %cmp265 = icmp eq i8 %53, 52
  br i1 %cmp259, label %if.then267, label %switch.early.test

switch.early.test:                                ; preds = %if.then253
  switch i8 %53, label %if.else408 [
    i8 53, label %if.then267
    i8 52, label %if.then267
    i8 56, label %if.then405
  ]

if.then267:                                       ; preds = %switch.early.test, %switch.early.test, %if.then253
  call void @llvm.lifetime.start(i64 44, i8* %20) #3
  %and268 = and i32 %flags.addr.03601, 1024
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %if.then270, label %if.end271

if.then270:                                       ; preds = %if.then267
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %if.then267
  %and272 = and i32 %flags.addr.03601, 6144
  %tobool273 = icmp ne i32 %and272, 0
  br i1 %tobool273, label %if.then274, label %while.cond276.preheader

if.then274:                                       ; preds = %if.end271
  store i64 0, i64* %21, align 8
  store i8 17, i8* %type.i, align 1, !tbaa !1
  store i32 0, i32* %22, align 8
  call void @llvm.memset.p0i8.i64(i8* %23, i8 -1, i64 32, i32 8, i1 false) #3
  %67 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i.i = and i32 %67, 2048
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %..i..i = select i1 %cmp.i.i, i8 80, i8 81
  store i8 %..i..i, i8* %20, align 8, !tbaa !1
  br label %while.cond276.preheader

while.cond276.preheader:                          ; preds = %if.then274, %if.end271
  %cmp292 = icmp eq i8 %53, 31
  %and301 = and i32 %flags.addr.03601, 8192
  br label %while.cond276

while.cond276:                                    ; preds = %if.end343, %while.cond276.preheader
  %num.0 = phi i32 [ 0, %while.cond276.preheader ], [ %inc, %if.end343 ]
  %min1.0 = phi i32 [ 2147483647, %while.cond276.preheader ], [ %min1.1, %if.end343 ]
  %max1.0 = phi i32 [ 0, %while.cond276.preheader ], [ %add310.max1.0, %if.end343 ]
  %is_inf_internal.1 = phi i32 [ %is_inf_internal.03595, %while.cond276.preheader ], [ %is_inf_internal.2, %if.end343 ]
  %is_inf.1 = phi i32 [ %is_inf.03596, %while.cond276.preheader ], [ %is_inf.2, %if.end343 ]
  %pars.1 = phi i32 [ %pars.03598, %while.cond276.preheader ], [ %pars.1.inc324, %if.end343 ]
  %68 = load %struct.regnode** %scan, align 8, !tbaa !0
  %type277 = getelementptr inbounds %struct.regnode* %68, i64 0, i32 1
  %69 = load i8* %type277, align 1, !tbaa !1
  %cmp279 = icmp eq i8 %69, %53
  br i1 %cmp279, label %while.body281, label %while.end348

while.body281:                                    ; preds = %while.cond276
  call void @llvm.lifetime.start(i64 44, i8* %24) #3
  %inc = add nsw i32 %num.0, 1
  store i32 0, i32* %flags2355, align 8, !tbaa !3
  br i1 %tobool2356, label %if.then284, label %if.end289

if.then284:                                       ; preds = %while.body281
  %70 = load i32* %whilem_c2358, align 4, !tbaa !3
  store i32 %70, i32* %whilem_c2359, align 4, !tbaa !3
  %71 = load i32** %last_closep2506, align 8, !tbaa !0
  br label %if.end289

if.end289:                                        ; preds = %while.body281, %if.then284
  %storemerge = phi i32* [ %71, %if.then284 ], [ %fake, %while.body281 ]
  store i32* %storemerge, i32** %last_closep2361, align 8, !tbaa !0
  %call290 = call %struct.regnode* @Perl_regnext(%struct.regnode* %68) #9
  %add.ptr291 = getelementptr inbounds %struct.regnode* %68, i64 1
  %add.ptr295 = getelementptr inbounds %struct.regnode* %68, i64 2
  %add.ptr291.add.ptr295 = select i1 %cmp292, %struct.regnode* %add.ptr291, %struct.regnode* %add.ptr295
  store %struct.regnode* %add.ptr291.add.ptr295, %struct.regnode** %scan, align 8, !tbaa !0
  br i1 %tobool273, label %if.then299, label %if.end300

if.then299:                                       ; preds = %if.end289
  store i64 0, i64* %25, align 8
  store i8 17, i8* %type.i3470, align 1, !tbaa !1
  store i32 0, i32* %26, align 8
  call void @llvm.memset.p0i8.i64(i8* %27, i8 -1, i64 32, i32 8, i1 false) #3
  %72 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i.i3473 = and i32 %72, 2048
  %cmp.i.i3474 = icmp eq i32 %and.i.i3473, 0
  %..i.i3475 = select i1 %cmp.i.i3474, i8 80, i8 81
  store i8 %..i.i3475, i8* %24, align 8, !tbaa !1
  store %struct.regnode_charclass_class* %this_class, %struct.regnode_charclass_class** %start_class2376, align 8, !tbaa !0
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %if.end289
  %f.0 = phi i32 [ 2048, %if.then299 ], [ 0, %if.end289 ]
  %73 = or i32 %f.0, %and301
  %call305 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %pRExC_state, %struct.regnode** %scan, i32* %deltanext, %struct.regnode* %call290, %struct.scan_data_t* %data_fake, i32 %73) #9
  %cmp306 = icmp sgt i32 %min1.0, %call305
  %min1.1 = select i1 %cmp306, i32 %call305, i32 %min1.0
  %74 = load i32* %deltanext, align 4, !tbaa !3
  %add310 = add nsw i32 %74, %call305
  %cmp311 = icmp slt i32 %max1.0, %add310
  %add310.max1.0 = select i1 %cmp311, i32 %add310, i32 %max1.0
  %cmp316 = icmp eq i32 %74, 2147483647
  %is_inf_internal.2 = select i1 %cmp316, i32 1, i32 %is_inf_internal.1
  %is_inf.2 = select i1 %cmp316, i32 1, i32 %is_inf.1
  store %struct.regnode* %call290, %struct.regnode** %scan, align 8, !tbaa !0
  %75 = bitcast i32* %flags2355 to i64*
  %76 = load i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %and321 = and i32 %77, 384
  %not.tobool322 = icmp ne i32 %and321, 0
  %inc324 = zext i1 %not.tobool322 to i32
  %pars.1.inc324 = add nsw i32 %inc324, %pars.1
  %78 = lshr i64 %76, 32
  %79 = trunc i64 %78 to i32
  br i1 %tobool2356, label %land.lhs.true327, label %if.end339

land.lhs.true327:                                 ; preds = %if.end300
  %and329 = and i32 %77, 512
  %tobool330 = icmp eq i32 %and329, 0
  br i1 %tobool330, label %if.then336, label %if.then331

if.then331:                                       ; preds = %land.lhs.true327
  %80 = load i32* %flags2322, align 4, !tbaa !3
  %or333 = or i32 %80, 512
  store i32 %or333, i32* %flags2322, align 4, !tbaa !3
  br label %if.then336

if.then336:                                       ; preds = %if.then331, %land.lhs.true327
  store i32 %79, i32* %whilem_c2358, align 4, !tbaa !3
  br label %if.end339

if.end339:                                        ; preds = %if.end300, %if.then336
  br i1 %tobool273, label %if.then342, label %if.end343

if.then342:                                       ; preds = %if.end339
  call fastcc void @S_cl_or(%struct.RExC_state_t* %pRExC_state, %struct.regnode_charclass_class* %accum, %struct.regnode_charclass_class* %this_class) #9
  br label %if.end343

if.end343:                                        ; preds = %if.then342, %if.end339
  call void @llvm.lifetime.end(i64 44, i8* %24) #3
  br i1 %cmp265, label %while.end348, label %while.cond276

while.end348:                                     ; preds = %if.end343, %while.cond276
  %num.1 = phi i32 [ %inc, %if.end343 ], [ %num.0, %while.cond276 ]
  %min1.2 = phi i32 [ %min1.1, %if.end343 ], [ %min1.0, %while.cond276 ]
  %max1.2 = phi i32 [ %add310.max1.0, %if.end343 ], [ %max1.0, %while.cond276 ]
  %is_inf_internal.3 = phi i32 [ %is_inf_internal.2, %if.end343 ], [ %is_inf_internal.1, %while.cond276 ]
  %is_inf.3 = phi i32 [ %is_inf.2, %if.end343 ], [ %is_inf.1, %while.cond276 ]
  %pars.3 = phi i32 [ %pars.1.inc324, %if.end343 ], [ %pars.1, %while.cond276 ]
  %cmp352 = icmp slt i32 %num.1, 2
  %or.cond = and i1 %cmp262, %cmp352
  %min1.3 = select i1 %or.cond, i32 0, i32 %min1.2
  br i1 %tobool269, label %if.then358, label %while.end348.if.end368_crit_edge

while.end348.if.end368_crit_edge:                 ; preds = %while.end348
  %sub370.pre = sub nsw i32 %max1.2, %min1.3
  br label %if.end368

if.then358:                                       ; preds = %while.end348
  %81 = load i32* %pos_min652, align 4, !tbaa !3
  %add359 = add nsw i32 %81, %min1.3
  store i32 %add359, i32* %pos_min652, align 4, !tbaa !3
  %sub360 = sub i32 %max1.2, %min1.3
  %82 = load i32* %pos_delta1375, align 4, !tbaa !3
  %add361 = add nsw i32 %sub360, %82
  store i32 %add361, i32* %pos_delta1375, align 4, !tbaa !3
  %cmp362 = icmp eq i32 %max1.2, %min1.3
  %tobool365 = icmp eq i32 %is_inf.3, 0
  %or.cond3427 = and i1 %cmp362, %tobool365
  br i1 %or.cond3427, label %if.end368, label %if.then366

if.then366:                                       ; preds = %if.then358
  store %struct.sv** %longest_float2533, %struct.sv*** %longest2534, align 8, !tbaa !0
  br label %if.end368

if.end368:                                        ; preds = %while.end348.if.end368_crit_edge, %if.then358, %if.then366
  %sub370.pre-phi = phi i32 [ %sub370.pre, %while.end348.if.end368_crit_edge ], [ %sub360, %if.then358 ], [ %sub360, %if.then366 ]
  %add369 = add nsw i32 %min1.3, %min.3
  %add371 = add nsw i32 %sub370.pre-phi, %delta.03597
  %and372 = and i32 %flags.addr.03601, 4096
  %tobool373 = icmp eq i32 %and372, 0
  br i1 %tobool373, label %if.else381, label %if.then374

if.then374:                                       ; preds = %if.end368
  %83 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_or(%struct.RExC_state_t* %pRExC_state, %struct.regnode_charclass_class* %83, %struct.regnode_charclass_class* %accum) #9
  %tobool376 = icmp eq i32 %min1.3, 0
  br i1 %tobool376, label %while.cond.backedge, label %if.then377

if.then377:                                       ; preds = %if.then374
  %84 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %84, %struct.regnode_charclass_class* %and_with) #9
  %and379 = and i32 %flags.addr.03601, -6145
  br label %while.cond.backedge

if.else381:                                       ; preds = %if.end368
  %and382 = and i32 %flags.addr.03601, 2048
  %tobool383 = icmp eq i32 %and382, 0
  br i1 %tobool383, label %while.cond.backedge, label %if.then384

if.then384:                                       ; preds = %if.else381
  %tobool385 = icmp eq i32 %min1.3, 0
  %85 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %tobool385, label %if.else389, label %if.then386

if.then386:                                       ; preds = %if.then384
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %85, %struct.regnode_charclass_class* %accum) #9
  %and388 = and i32 %flags.addr.03601, -6145
  br label %while.cond.backedge

if.else389:                                       ; preds = %if.then384
  %86 = getelementptr inbounds %struct.regnode_charclass_class* %85, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %86, i64 44, i32 4, i1 false), !tbaa.struct !6
  %and391 = and i32 %flags.addr.03601, -6145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %20, i64 44, i32 4, i1 false), !tbaa.struct !6
  %or393 = or i32 %and391, 4096
  %87 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags395 = getelementptr inbounds %struct.regnode_charclass_class* %87, i64 0, i32 0
  %88 = load i8* %flags395, align 1, !tbaa !1
  %or397 = or i8 %88, 16
  store i8 %or397, i8* %flags395, align 1, !tbaa !1
  br label %while.cond.backedge

if.then405:                                       ; preds = %switch.early.test
  %add.ptr407 = getelementptr inbounds %struct.regnode* %52, i64 2
  store %struct.regnode* %add.ptr407, %struct.regnode** %scan, align 8, !tbaa !0
  br label %while.cond.backedge

if.else408:                                       ; preds = %switch.early.test
  %add.ptr406 = getelementptr inbounds %struct.regnode* %52, i64 1
  store %struct.regnode* %add.ptr406, %struct.regnode** %scan, align 8, !tbaa !0
  br label %while.cond.backedge

if.then417:                                       ; preds = %if.end233
  %str_len418 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  %89 = load i8* %str_len418, align 1, !tbaa !1
  %conv419 = zext i8 %89 to i32
  %arraydecay421 = getelementptr inbounds %struct.regnode* %52, i64 1, i32 0
  %90 = load i8* %arraydecay421, align 1, !tbaa !1
  %conv422 = zext i8 %90 to i64
  %91 = load i32* %utf8, align 4, !tbaa !3
  %cmp424 = icmp eq i32 %91, 0
  br i1 %cmp424, label %if.end435, label %if.then426

if.then426:                                       ; preds = %if.then417
  %idx.ext430 = zext i8 %89 to i64
  %add.ptr431 = getelementptr inbounds i8* %arraydecay421, i64 %idx.ext430
  %call432 = call i64 @Perl_utf8_length(i8* %arraydecay421, i8* %add.ptr431) #8
  %conv433 = trunc i64 %call432 to i32
  %call434 = call i64 @Perl_utf8_to_uvchr(i8* %arraydecay421, i64* null) #8
  br label %if.end435

if.end435:                                        ; preds = %if.then417, %if.then426
  %l.0 = phi i32 [ %conv433, %if.then426 ], [ %conv419, %if.then417 ]
  %uc.0 = phi i64 [ %call434, %if.then426 ], [ %conv422, %if.then417 ]
  %add436 = add nsw i32 %l.0, %min.3
  %and437 = and i32 %flags.addr.03601, 1024
  %tobool438 = icmp eq i32 %and437, 0
  br i1 %tobool438, label %if.end503, label %if.then439

if.then439:                                       ; preds = %if.end435
  %92 = load i32* %last_end1201, align 4, !tbaa !3
  %cmp440 = icmp eq i32 %92, -1
  br i1 %cmp440, label %if.then442, label %if.end452

if.then442:                                       ; preds = %if.then439
  %93 = load i32* %pos_min652, align 4, !tbaa !3
  store i32 %93, i32* %last_start_min1401, align 4, !tbaa !3
  %tobool444 = icmp eq i32 %is_inf.03596, 0
  br i1 %tobool444, label %cond.false446, label %cond.end450

cond.false446:                                    ; preds = %if.then442
  %94 = load i32* %pos_delta1375, align 4, !tbaa !3
  %add449 = add nsw i32 %94, %93
  br label %cond.end450

cond.end450:                                      ; preds = %if.then442, %cond.false446
  %cond451 = phi i32 [ %add449, %cond.false446 ], [ 2147483647, %if.then442 ]
  store i32 %cond451, i32* %last_start_max1423, align 4, !tbaa !3
  br label %if.end452

if.end452:                                        ; preds = %if.then439, %cond.end450
  %95 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %96 = load %struct.regnode** %scan, align 8, !tbaa !0
  %arraydecay454 = getelementptr inbounds %struct.regnode* %96, i64 1, i32 0
  %str_len455 = getelementptr inbounds %struct.regnode* %96, i64 0, i32 0
  %97 = load i8* %str_len455, align 1, !tbaa !1
  %conv456 = zext i8 %97 to i64
  call void @Perl_sv_catpvn_flags(%struct.sv* %95, i8* %arraydecay454, i64 %conv456, i32 2) #8
  %98 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %98, i64 0, i32 2
  %99 = load i32* %sv_flags, align 4, !tbaa !3
  %and458 = and i32 %99, 536870912
  %tobool459 = icmp eq i32 %and458, 0
  %and462 = and i32 %99, 57344
  %tobool463 = icmp eq i32 %and462, 0
  %or.cond3428 = or i1 %tobool459, %tobool463
  br i1 %or.cond3428, label %if.end487, label %cond.end467

cond.end467:                                      ; preds = %if.end452
  %call465 = call %struct.magic* @Perl_mg_find(%struct.sv* %98, i32 119) #8
  %tobool469 = icmp eq %struct.magic* %call465, null
  br i1 %tobool469, label %if.end487, label %land.lhs.true470

land.lhs.true470:                                 ; preds = %cond.end467
  %mg_len = getelementptr inbounds %struct.magic* %call465, i64 0, i32 7
  %100 = load i32* %mg_len, align 4, !tbaa !3
  %cmp471 = icmp sgt i32 %100, -1
  br i1 %cmp471, label %if.then473, label %if.end487

if.then473:                                       ; preds = %land.lhs.true470
  %101 = load %struct.regnode** %scan, align 8, !tbaa !0
  %arraydecay475 = getelementptr inbounds %struct.regnode* %101, i64 1, i32 0
  %str_len478 = getelementptr inbounds %struct.regnode* %101, i64 0, i32 0
  %102 = load i8* %str_len478, align 1, !tbaa !1
  %idx.ext480 = zext i8 %102 to i64
  %add.ptr481 = getelementptr inbounds i8* %arraydecay475, i64 %idx.ext480
  %call482 = call i64 @Perl_utf8_length(i8* %arraydecay475, i8* %add.ptr481) #8
  %103 = load i32* %mg_len, align 4, !tbaa !3
  %conv4843424 = zext i32 %103 to i64
  %add485 = add i64 %conv4843424, %call482
  %conv486 = trunc i64 %add485 to i32
  store i32 %conv486, i32* %mg_len, align 4, !tbaa !3
  br label %if.end487

if.end487:                                        ; preds = %if.end452, %cond.end467, %if.then473, %land.lhs.true470
  %104 = load i32* %utf8, align 4, !tbaa !3
  %cmp489 = icmp eq i32 %104, 0
  br i1 %cmp489, label %if.end495, label %if.then491

if.then491:                                       ; preds = %if.end487
  %105 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %sv_flags493 = getelementptr inbounds %struct.sv* %105, i64 0, i32 2
  %106 = load i32* %sv_flags493, align 4, !tbaa !3
  %or494 = or i32 %106, 536870912
  store i32 %or494, i32* %sv_flags493, align 4, !tbaa !3
  br label %if.end495

if.end495:                                        ; preds = %if.end487, %if.then491
  %107 = load i32* %pos_min652, align 4, !tbaa !3
  %add497 = add nsw i32 %107, %l.0
  store i32 %add497, i32* %last_end1201, align 4, !tbaa !3
  store i32 %add497, i32* %pos_min652, align 4, !tbaa !3
  %108 = load i32* %flags2322, align 4, !tbaa !3
  %and502 = and i32 %108, -4
  store i32 %and502, i32* %flags2322, align 4, !tbaa !3
  br label %if.end503

if.end503:                                        ; preds = %if.end435, %if.end495
  %and504 = and i32 %flags.addr.03601, 2048
  %tobool505 = icmp eq i32 %and504, 0
  br i1 %tobool505, label %if.else580, label %if.then506

if.then506:                                       ; preds = %if.end503
  %cmp507 = icmp ugt i64 %uc.0, 255
  %.pre3660.pre = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %cmp507, label %if.end546, label %lor.lhs.false509

lor.lhs.false509:                                 ; preds = %if.then506
  %flags511 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3660.pre, i64 0, i32 0
  %109 = load i8* %flags511, align 1, !tbaa !1
  %conv512 = zext i8 %109 to i32
  %and513 = and i32 %conv512, 9
  %tobool514 = icmp eq i32 %and513, 0
  br i1 %tobool514, label %land.lhs.true515, label %if.then553

land.lhs.true515:                                 ; preds = %lor.lhs.false509
  %shr = lshr i64 %uc.0, 3
  %and516 = and i64 %shr, 31
  %arrayidx518 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3660.pre, i64 0, i32 4, i64 %and516
  %110 = load i8* %arrayidx518, align 1, !tbaa !1
  %conv519 = sext i8 %110 to i32
  %uc.0.tr3419 = trunc i64 %uc.0 to i32
  %sh_prom = and i32 %uc.0.tr3419, 7
  %shl = shl i32 1, %sh_prom
  %and521 = and i32 %conv519, %shl
  %tobool522 = icmp eq i32 %and521, 0
  br i1 %tobool522, label %land.lhs.true523, label %if.then553

land.lhs.true523:                                 ; preds = %land.lhs.true515
  %and527 = and i32 %conv512, 2
  %tobool528 = icmp eq i32 %and527, 0
  br i1 %tobool528, label %if.end546, label %lor.lhs.false529

lor.lhs.false529:                                 ; preds = %land.lhs.true523
  %arrayidx530 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %uc.0
  %111 = load i8* %arrayidx530, align 1, !tbaa !1
  %conv531 = zext i8 %111 to i32
  %shr5323422 = lshr i32 %conv531, 3
  %idxprom5343423 = zext i32 %shr5323422 to i64
  %arrayidx537 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3660.pre, i64 0, i32 4, i64 %idxprom5343423
  %112 = load i8* %arrayidx537, align 1, !tbaa !1
  %conv538 = sext i8 %112 to i32
  %and541 = and i32 %conv531, 7
  %shl542 = shl i32 1, %and541
  %and543 = and i32 %shl542, %conv538
  %tobool544 = icmp eq i32 %and543, 0
  br i1 %tobool544, label %if.end546, label %if.then553

if.end546:                                        ; preds = %if.then506, %land.lhs.true523, %lor.lhs.false529
  %arraydecay548 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3660.pre, i64 0, i32 5, i64 0
  %113 = bitcast i8* %arraydecay548 to i32*
  store i32 0, i32* %113, align 1
  %114 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay551 = getelementptr inbounds %struct.regnode_charclass_class* %114, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay551, i8 0, i64 32, i32 1, i1 false)
  br label %if.end565

if.then553:                                       ; preds = %lor.lhs.false509, %land.lhs.true515, %lor.lhs.false529
  %arraydecay5483676 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3660.pre, i64 0, i32 5, i64 0
  %115 = bitcast i8* %arraydecay5483676 to i32*
  store i32 0, i32* %115, align 1
  %116 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay5513677 = getelementptr inbounds %struct.regnode_charclass_class* %116, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay5513677, i8 0, i64 32, i32 1, i1 false)
  %uc.0.tr3420 = trunc i64 %uc.0 to i32
  %sh_prom555 = and i32 %uc.0.tr3420, 7
  %shl556 = shl i32 1, %sh_prom555
  %shr557 = lshr i64 %uc.0, 3
  %and558 = and i64 %shr557, 31
  %117 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx561 = getelementptr inbounds %struct.regnode_charclass_class* %117, i64 0, i32 4, i64 %and558
  %118 = load i8* %arrayidx561, align 1, !tbaa !1
  %conv5623421 = zext i8 %118 to i32
  %or563 = or i32 %conv5623421, %shl556
  %conv564 = trunc i32 %or563 to i8
  store i8 %conv564, i8* %arrayidx561, align 1, !tbaa !1
  br label %if.end565

if.end565:                                        ; preds = %if.end546, %if.then553
  %119 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags567 = getelementptr inbounds %struct.regnode_charclass_class* %119, i64 0, i32 0
  %120 = load i8* %flags567, align 1, !tbaa !1
  %and569 = and i8 %120, -17
  store i8 %and569, i8* %flags567, align 1, !tbaa !1
  %cmp571 = icmp ult i64 %uc.0, 256
  br i1 %cmp571, label %if.then573, label %if.end612

if.then573:                                       ; preds = %if.end565
  %121 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags575 = getelementptr inbounds %struct.regnode_charclass_class* %121, i64 0, i32 0
  %122 = load i8* %flags575, align 1, !tbaa !1
  %and577 = and i8 %122, -65
  store i8 %and577, i8* %flags575, align 1, !tbaa !1
  br label %if.end612

if.else580:                                       ; preds = %if.end503
  %and581 = and i32 %flags.addr.03601, 4096
  %tobool582 = icmp eq i32 %and581, 0
  br i1 %tobool582, label %if.end612, label %if.then583

if.then583:                                       ; preds = %if.else580
  %cmp584 = icmp ult i64 %uc.0, 256
  br i1 %cmp584, label %if.then586, label %if.else598

if.then586:                                       ; preds = %if.then583
  %uc.0.tr = trunc i64 %uc.0 to i32
  %sh_prom588 = and i32 %uc.0.tr, 7
  %shl589 = shl i32 1, %sh_prom588
  %shr590 = lshr i64 %uc.0, 3
  %and591 = and i64 %shr590, 31
  %123 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx594 = getelementptr inbounds %struct.regnode_charclass_class* %123, i64 0, i32 4, i64 %and591
  %124 = load i8* %arrayidx594, align 1, !tbaa !1
  %conv5953418 = zext i8 %124 to i32
  %or596 = or i32 %conv5953418, %shl589
  %conv597 = trunc i32 %or596 to i8
  store i8 %conv597, i8* %arrayidx594, align 1, !tbaa !1
  br label %if.end604

if.else598:                                       ; preds = %if.then583
  %125 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags600 = getelementptr inbounds %struct.regnode_charclass_class* %125, i64 0, i32 0
  %126 = load i8* %flags600, align 1, !tbaa !1
  %or602 = or i8 %126, 64
  store i8 %or602, i8* %flags600, align 1, !tbaa !1
  br label %if.end604

if.end604:                                        ; preds = %if.else598, %if.then586
  %127 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags606 = getelementptr inbounds %struct.regnode_charclass_class* %127, i64 0, i32 0
  %128 = load i8* %flags606, align 1, !tbaa !1
  %and608 = and i8 %128, -17
  store i8 %and608, i8* %flags606, align 1, !tbaa !1
  %129 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %129, %struct.regnode_charclass_class* %and_with) #9
  br label %if.end612

if.end612:                                        ; preds = %if.else580, %if.end604, %if.end565, %if.then573
  %and613 = and i32 %flags.addr.03601, -6145
  br label %if.end2552

if.else614:                                       ; preds = %if.end167, %if.end233
  %conv2353675 = phi i32 [ %conv235, %if.end233 ], [ 43, %if.end167 ]
  %130 = phi i8 [ %53, %if.end233 ], [ 43, %if.end167 ]
  %idxprom616 = zext i8 %130 to i64
  %131 = add i64 %idxprom616, -33
  %cmp619 = icmp ult i64 %131, 3
  br i1 %cmp619, label %if.then621, label %if.else773

if.then621:                                       ; preds = %if.else614
  %str_len623 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  %132 = load i8* %str_len623, align 1, !tbaa !1
  %conv624 = zext i8 %132 to i32
  %arraydecay627 = getelementptr inbounds %struct.regnode* %52, i64 1, i32 0
  %133 = load i8* %arraydecay627, align 1, !tbaa !1
  %conv628 = zext i8 %133 to i64
  %and629 = and i32 %flags.addr.03601, 1024
  %tobool630 = icmp ne i32 %and629, 0
  br i1 %tobool630, label %if.then631, label %if.end632

if.then631:                                       ; preds = %if.then621
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  br label %if.end632

if.end632:                                        ; preds = %if.then621, %if.then631
  %134 = load i32* %utf8, align 4, !tbaa !3
  %cmp634 = icmp eq i32 %134, 0
  br i1 %cmp634, label %if.end645, label %if.then636

if.then636:                                       ; preds = %if.end632
  %135 = load %struct.regnode** %scan, align 8, !tbaa !0
  %arraydecay639 = getelementptr inbounds %struct.regnode* %135, i64 1, i32 0
  %idx.ext640 = zext i8 %132 to i64
  %add.ptr641 = getelementptr inbounds i8* %arraydecay639, i64 %idx.ext640
  %call642 = call i64 @Perl_utf8_length(i8* %arraydecay639, i8* %add.ptr641) #8
  %conv643 = trunc i64 %call642 to i32
  %call644 = call i64 @Perl_utf8_to_uvchr(i8* %arraydecay639, i64* null) #8
  br label %if.end645

if.end645:                                        ; preds = %if.end632, %if.then636
  %l622.0 = phi i32 [ %conv643, %if.then636 ], [ %conv624, %if.end632 ]
  %uc625.0 = phi i64 [ %call644, %if.then636 ], [ %conv628, %if.end632 ]
  %add646 = add nsw i32 %l622.0, %min.3
  %tobool630.not = xor i1 %tobool630, true
  %brmerge = or i1 %tobool647, %tobool630.not
  br i1 %brmerge, label %if.end654, label %if.then651

if.then651:                                       ; preds = %if.end645
  %136 = load i32* %pos_min652, align 4, !tbaa !3
  %add653 = add nsw i32 %136, %l622.0
  store i32 %add653, i32* %pos_min652, align 4, !tbaa !3
  br label %if.end654

if.end654:                                        ; preds = %if.end645, %if.then651
  %and655 = and i32 %flags.addr.03601, 2048
  %tobool656 = icmp eq i32 %and655, 0
  br i1 %tobool656, label %if.else738, label %if.then657

if.then657:                                       ; preds = %if.end654
  %cmp659 = icmp ugt i64 %uc625.0, 255
  %.pre3653.pre = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %cmp659, label %if.end696, label %lor.lhs.false661

lor.lhs.false661:                                 ; preds = %if.then657
  %flags663 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3653.pre, i64 0, i32 0
  %137 = load i8* %flags663, align 1, !tbaa !1
  %and665 = and i8 %137, 9
  %tobool666 = icmp eq i8 %and665, 0
  br i1 %tobool666, label %land.lhs.true667, label %if.then704

land.lhs.true667:                                 ; preds = %lor.lhs.false661
  %shr668 = lshr i64 %uc625.0, 3
  %and669 = and i64 %shr668, 31
  %arrayidx672 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3653.pre, i64 0, i32 4, i64 %and669
  %138 = load i8* %arrayidx672, align 1, !tbaa !1
  %conv673 = sext i8 %138 to i32
  %uc625.0.tr3413 = trunc i64 %uc625.0 to i32
  %sh_prom675 = and i32 %uc625.0.tr3413, 7
  %shl676 = shl i32 1, %sh_prom675
  %and677 = and i32 %conv673, %shl676
  %tobool678 = icmp eq i32 %and677, 0
  br i1 %tobool678, label %land.lhs.true679, label %if.then704

land.lhs.true679:                                 ; preds = %land.lhs.true667
  %arrayidx680 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %uc625.0
  %139 = load i8* %arrayidx680, align 1, !tbaa !1
  %conv681 = zext i8 %139 to i32
  %shr6823414 = lshr i32 %conv681, 3
  %idxprom6843415 = zext i32 %shr6823414 to i64
  %arrayidx687 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3653.pre, i64 0, i32 4, i64 %idxprom6843415
  %140 = load i8* %arrayidx687, align 1, !tbaa !1
  %conv688 = sext i8 %140 to i32
  %and691 = and i32 %conv681, 7
  %shl692 = shl i32 1, %and691
  %and693 = and i32 %shl692, %conv688
  %tobool694 = icmp eq i32 %and693, 0
  br i1 %tobool694, label %if.end696, label %if.then704

if.end696:                                        ; preds = %if.then657, %land.lhs.true679
  %arraydecay699 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3653.pre, i64 0, i32 5, i64 0
  %141 = bitcast i8* %arraydecay699 to i32*
  store i32 0, i32* %141, align 1
  %142 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay702 = getelementptr inbounds %struct.regnode_charclass_class* %142, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay702, i8 0, i64 32, i32 1, i1 false)
  br label %if.end771

if.then704:                                       ; preds = %lor.lhs.false661, %land.lhs.true667, %land.lhs.true679
  %arraydecay6993678 = getelementptr inbounds %struct.regnode_charclass_class* %.pre3653.pre, i64 0, i32 5, i64 0
  %143 = bitcast i8* %arraydecay6993678 to i32*
  store i32 0, i32* %143, align 1
  %144 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay7023679 = getelementptr inbounds %struct.regnode_charclass_class* %144, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay7023679, i8 0, i64 32, i32 1, i1 false)
  %uc625.0.tr3416 = trunc i64 %uc625.0 to i32
  %sh_prom706 = and i32 %uc625.0.tr3416, 7
  %shl707 = shl i32 1, %sh_prom706
  %shr708 = lshr i64 %uc625.0, 3
  %and709 = and i64 %shr708, 31
  %145 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx712 = getelementptr inbounds %struct.regnode_charclass_class* %145, i64 0, i32 4, i64 %and709
  %146 = load i8* %arrayidx712, align 1, !tbaa !1
  %conv7133417 = zext i8 %146 to i32
  %or714 = or i32 %conv7133417, %shl707
  %conv715 = trunc i32 %or714 to i8
  store i8 %conv715, i8* %arrayidx712, align 1, !tbaa !1
  %147 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags717 = getelementptr inbounds %struct.regnode_charclass_class* %147, i64 0, i32 0
  %148 = load i8* %flags717, align 1, !tbaa !1
  %and719 = and i8 %148, -17
  store i8 %and719, i8* %flags717, align 1, !tbaa !1
  %149 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags722 = getelementptr inbounds %struct.regnode_charclass_class* %149, i64 0, i32 0
  %150 = load i8* %flags722, align 1, !tbaa !1
  %or724 = or i8 %150, 2
  store i8 %or724, i8* %flags722, align 1, !tbaa !1
  %151 = load %struct.regnode** %scan, align 8, !tbaa !0
  %type726 = getelementptr inbounds %struct.regnode* %151, i64 0, i32 1
  %152 = load i8* %type726, align 1, !tbaa !1
  %cmp728 = icmp eq i8 %152, 35
  br i1 %cmp728, label %if.then730, label %if.end771

if.then730:                                       ; preds = %if.then704
  %153 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags732 = getelementptr inbounds %struct.regnode_charclass_class* %153, i64 0, i32 0
  %154 = load i8* %flags732, align 1, !tbaa !1
  %or734 = or i8 %154, 1
  store i8 %or734, i8* %flags732, align 1, !tbaa !1
  br label %if.end771

if.else738:                                       ; preds = %if.end654
  %and739 = and i32 %flags.addr.03601, 4096
  %tobool740 = icmp eq i32 %and739, 0
  br i1 %tobool740, label %if.end771, label %if.then741

if.then741:                                       ; preds = %if.else738
  %155 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags743 = getelementptr inbounds %struct.regnode_charclass_class* %155, i64 0, i32 0
  %156 = load i8* %flags743, align 1, !tbaa !1
  %and745 = and i8 %156, 2
  %tobool746 = icmp eq i8 %and745, 0
  br i1 %tobool746, label %if.end768, label %if.then747

if.then747:                                       ; preds = %if.then741
  %cmp748 = icmp ult i64 %uc625.0, 256
  br i1 %cmp748, label %if.then750, label %if.end762

if.then750:                                       ; preds = %if.then747
  %uc625.0.tr = trunc i64 %uc625.0 to i32
  %sh_prom752 = and i32 %uc625.0.tr, 7
  %shl753 = shl i32 1, %sh_prom752
  %shr754 = lshr i64 %uc625.0, 3
  %and755 = and i64 %shr754, 31
  %arrayidx758 = getelementptr inbounds %struct.regnode_charclass_class* %155, i64 0, i32 4, i64 %and755
  %157 = load i8* %arrayidx758, align 1, !tbaa !1
  %conv7593412 = zext i8 %157 to i32
  %or760 = or i32 %conv7593412, %shl753
  %conv761 = trunc i32 %or760 to i8
  store i8 %conv761, i8* %arrayidx758, align 1, !tbaa !1
  %.pre3651 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags764.phi.trans.insert = getelementptr inbounds %struct.regnode_charclass_class* %.pre3651, i64 0, i32 0
  %.pre3652 = load i8* %flags764.phi.trans.insert, align 1, !tbaa !1
  br label %if.end762

if.end762:                                        ; preds = %if.then750, %if.then747
  %158 = phi i8 [ %.pre3652, %if.then750 ], [ %156, %if.then747 ]
  %159 = phi %struct.regnode_charclass_class* [ %.pre3651, %if.then750 ], [ %155, %if.then747 ]
  %flags764 = getelementptr inbounds %struct.regnode_charclass_class* %159, i64 0, i32 0
  %and766 = and i8 %158, -17
  store i8 %and766, i8* %flags764, align 1, !tbaa !1
  %.pre3650 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br label %if.end768

if.end768:                                        ; preds = %if.then741, %if.end762
  %160 = phi %struct.regnode_charclass_class* [ %155, %if.then741 ], [ %.pre3650, %if.end762 ]
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %160, %struct.regnode_charclass_class* %and_with) #9
  br label %if.end771

if.end771:                                        ; preds = %if.end696, %if.else738, %if.end768, %if.then730, %if.then704
  %and772 = and i32 %flags.addr.03601, -6145
  br label %if.end2552

if.else773:                                       ; preds = %if.else614
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([17 x i8]* @PL_varies, i64 0, i64 0), i32 %conv2353675, i64 17)
  %tobool777 = icmp eq i8* %memchr, null
  br i1 %tobool777, label %if.else1480, label %if.then778

if.then778:                                       ; preds = %if.else773
  call void @llvm.lifetime.start(i64 44, i8* %16) #3
  %arrayidx785 = getelementptr inbounds [62 x i8]* @PL_regkind, i64 0, i64 %idxprom616
  %161 = load i8* %arrayidx785, align 1, !tbaa !1
  %conv786 = zext i8 %161 to i32
  switch i32 %conv786, label %sw.default [
    i32 44, label %cleanup1477
    i32 39, label %sw.bb788
    i32 38, label %sw.bb812
    i32 40, label %sw.bb826
  ]

sw.bb788:                                         ; preds = %if.then778
  %and789 = and i32 %flags.addr.03601, 7168
  %tobool790 = icmp eq i32 %and789, 0
  br i1 %tobool790, label %if.end804, label %if.then791

if.then791:                                       ; preds = %sw.bb788
  %type793 = getelementptr inbounds %struct.regnode* %52, i64 1, i32 1
  %162 = load i8* %type793, align 1, !tbaa !1
  %cmp795 = icmp eq i8 %162, 33
  br i1 %cmp795, label %if.then800, label %lor.lhs.false797

lor.lhs.false797:                                 ; preds = %if.then791
  %and798 = and i32 %flags.addr.03601, 6144
  %tobool799 = icmp eq i32 %and798, 0
  br i1 %tobool799, label %if.end804, label %if.then800

if.then800:                                       ; preds = %lor.lhs.false797, %if.then791
  %call801 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %add.ptr802 = getelementptr inbounds %struct.regnode* %52, i64 1
  store %struct.regnode* %add.ptr802, %struct.regnode** %scan, align 8, !tbaa !0
  br label %do_curly

if.end804:                                        ; preds = %lor.lhs.false797, %sw.bb788
  %and805 = and i32 %flags.addr.03601, 1024
  %tobool806 = icmp eq i32 %and805, 0
  br i1 %tobool806, label %if.end810, label %if.then807

if.then807:                                       ; preds = %if.end804
  %163 = load i32* %pos_min652, align 4, !tbaa !3
  %inc809 = add nsw i32 %163, 1
  store i32 %inc809, i32* %pos_min652, align 4, !tbaa !3
  br label %if.end810

if.end810:                                        ; preds = %if.end804, %if.then807
  %inc811 = add nsw i32 %min.3, 1
  br label %sw.bb812

sw.bb812:                                         ; preds = %if.then778, %if.end810
  %min.4 = phi i32 [ %min.3, %if.then778 ], [ %inc811, %if.end810 ]
  %and813 = and i32 %flags.addr.03601, 6144
  %tobool814 = icmp eq i32 %and813, 0
  %call819 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  br i1 %tobool814, label %if.end818, label %if.then815

if.then815:                                       ; preds = %sw.bb812
  %add.ptr817 = getelementptr inbounds %struct.regnode* %52, i64 1
  store %struct.regnode* %add.ptr817, %struct.regnode** %scan, align 8, !tbaa !0
  br label %do_curly

if.end818:                                        ; preds = %sw.bb812
  store %struct.regnode* %call819, %struct.regnode** %scan, align 8, !tbaa !0
  %and820 = and i32 %flags.addr.03601, 1024
  %tobool821 = icmp eq i32 %and820, 0
  br i1 %tobool821, label %optimize_curly_tail, label %if.then822

if.then822:                                       ; preds = %if.end818
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  store %struct.sv** %longest_float2533, %struct.sv*** %longest2534, align 8, !tbaa !0
  br label %optimize_curly_tail

sw.bb826:                                         ; preds = %if.then778
  %arg1827 = getelementptr inbounds %struct.regnode* %52, i64 1
  %164 = bitcast %struct.regnode* %arg1827 to i16*
  %165 = load i16* %164, align 2, !tbaa !4
  %conv828 = zext i16 %165 to i32
  %166 = getelementptr inbounds %struct.regnode* %52, i64 1, i32 2
  %167 = load i16* %166, align 2, !tbaa !4
  %conv829 = zext i16 %167 to i32
  %call830 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %cmp833 = icmp eq i8 %130, 43
  br i1 %cmp833, label %if.then835, label %if.end850

if.then835:                                       ; preds = %sw.bb826
  br i1 %tobool647, label %cond.end840, label %cond.true837

cond.true837:                                     ; preds = %if.then835
  %168 = load i32** %last_closep2506, align 8, !tbaa !0
  %169 = load i32* %168, align 4, !tbaa !3
  br label %cond.end840

cond.end840:                                      ; preds = %if.then835, %cond.true837
  %cond841 = phi i32 [ %169, %cond.true837 ], [ 0, %if.then835 ]
  %cmp842 = icmp sgt i32 %cond841, 255
  %170 = trunc i32 %cond841 to i8
  %conv848 = select i1 %cmp842, i8 -1, i8 %170
  %flags849 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  store i8 %conv848, i8* %flags849, align 1, !tbaa !1
  %.pre3659 = load %struct.regnode** %scan, align 8, !tbaa !0
  br label %if.end850

if.end850:                                        ; preds = %cond.end840, %sw.bb826
  %171 = phi %struct.regnode* [ %.pre3659, %cond.end840 ], [ %52, %sw.bb826 ]
  %add.ptr852 = getelementptr inbounds %struct.regnode* %171, i64 2
  store %struct.regnode* %add.ptr852, %struct.regnode** %scan, align 8, !tbaa !0
  %type853 = getelementptr inbounds %struct.regnode* %171, i64 2, i32 1
  %172 = load i8* %type853, align 1, !tbaa !1
  %cmp855 = icmp eq i8 %172, 57
  %conv856 = zext i1 %cmp855 to i32
  br label %do_curly

do_curly:                                         ; preds = %if.end850, %if.then815, %if.then800
  %mincount.0 = phi i32 [ %conv828, %if.end850 ], [ 0, %if.then815 ], [ 1, %if.then800 ]
  %maxcount.0 = phi i32 [ %conv829, %if.end850 ], [ 32767, %if.then815 ], [ 32767, %if.then800 ]
  %next_is_eval.0 = phi i32 [ %conv856, %if.end850 ], [ 0, %if.then815 ], [ 0, %if.then800 ]
  %next.1 = phi %struct.regnode* [ %call830, %if.end850 ], [ %call819, %if.then815 ], [ %call801, %if.then800 ]
  %min.5 = phi i32 [ %min.3, %if.end850 ], [ %min.4, %if.then815 ], [ %min.3, %if.then800 ]
  %and857 = and i32 %flags.addr.03601, 1024
  %tobool858 = icmp eq i32 %and857, 0
  br i1 %tobool858, label %if.end865, label %if.then859

if.then859:                                       ; preds = %do_curly
  %cmp860 = icmp eq i32 %mincount.0, 0
  br i1 %cmp860, label %if.then862, label %if.end863

if.then862:                                       ; preds = %if.then859
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  br label %if.end863

if.end863:                                        ; preds = %if.then859, %if.then862
  %173 = load i32* %pos_min652, align 4, !tbaa !3
  br label %if.end865

if.end865:                                        ; preds = %do_curly, %if.end863
  %pos_before.0 = phi i32 [ %173, %if.end863 ], [ 0, %do_curly ]
  br i1 %tobool2356, label %if.then867, label %if.end876

if.then867:                                       ; preds = %if.end865
  %174 = load i32* %flags2322, align 4, !tbaa !3
  %and870 = and i32 %174, -897
  store i32 %and870, i32* %flags2322, align 4, !tbaa !3
  %tobool871 = icmp eq i32 %is_inf.03596, 0
  br i1 %tobool871, label %if.end876, label %if.then872

if.then872:                                       ; preds = %if.then867
  %or874 = or i32 %and870, 64
  store i32 %or874, i32* %flags2322, align 4, !tbaa !3
  br label %if.end876

if.end876:                                        ; preds = %if.then867, %if.then872, %if.end865
  %fl.0 = phi i32 [ %174, %if.then872 ], [ %174, %if.then867 ], [ 0, %if.end865 ]
  %and877 = and i32 %flags.addr.03601, 6144
  %tobool878 = icmp ne i32 %and877, 0
  br i1 %tobool878, label %if.then879, label %if.end884

if.then879:                                       ; preds = %if.end876
  store i64 0, i64* %17, align 8
  store i8 17, i8* %type.i3476, align 1, !tbaa !1
  store i32 0, i32* %18, align 8
  call void @llvm.memset.p0i8.i64(i8* %19, i8 -1, i64 32, i32 8, i1 false) #3
  %175 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i.i3479 = and i32 %175, 2048
  %cmp.i.i3480 = icmp eq i32 %and.i.i3479, 0
  %..i.i3481 = select i1 %cmp.i.i3480, i8 80, i8 81
  store i8 %..i.i3481, i8* %16, align 8, !tbaa !1
  %176 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  store %struct.regnode_charclass_class* %this_class782, %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %or882 = and i32 %flags.addr.03601, -6145
  %and883 = or i32 %or882, 2048
  br label %if.end884

if.end884:                                        ; preds = %if.then879, %if.end876
  %f781.0 = phi i32 [ %and883, %if.then879 ], [ %flags.addr.03601, %if.end876 ]
  %oclass.0 = phi %struct.regnode_charclass_class* [ %176, %if.then879 ], [ null, %if.end876 ]
  %sub885 = add nsw i32 %maxcount.0, -1
  %cmp886 = icmp ne i32 %mincount.0, %sub885
  %cmp889 = icmp ne i32 %maxcount.0, 32767
  %or.cond2609 = and i1 %cmp886, %cmp889
  %and892 = and i32 %f781.0, -8193
  %and892.f781.0 = select i1 %or.cond2609, i32 %and892, i32 %f781.0
  %cmp894 = icmp eq i32 %mincount.0, 0
  %and897 = and i32 %and892.f781.0, -1025
  %cond900 = select i1 %cmp894, i32 %and897, i32 %and892.f781.0
  %call901 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %pRExC_state, %struct.regnode** %scan, i32* %deltanext780, %struct.regnode* %last, %struct.scan_data_t* %data, i32 %cond900) #9
  br i1 %tobool878, label %if.then904, label %if.end906

if.then904:                                       ; preds = %if.end884
  store %struct.regnode_charclass_class* %oclass.0, %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br label %if.end906

if.end906:                                        ; preds = %if.then904, %if.end884
  %cmp910 = icmp eq i32 %call901, 0
  %or.cond3429 = or i1 %cmp894, %cmp910
  %and913 = and i32 %flags.addr.03601, 4096
  %tobool914 = icmp eq i32 %and913, 0
  br i1 %or.cond3429, label %if.then912, label %if.else932

if.then912:                                       ; preds = %if.end906
  br i1 %tobool914, label %if.else917, label %if.then915

if.then915:                                       ; preds = %if.then912
  %177 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_or(%struct.RExC_state_t* %pRExC_state, %struct.regnode_charclass_class* %177, %struct.regnode_charclass_class* %this_class782) #9
  br label %if.end946

if.else917:                                       ; preds = %if.then912
  %and918 = and i32 %flags.addr.03601, 2048
  %tobool919 = icmp eq i32 %and918, 0
  br i1 %tobool919, label %if.end946, label %if.then920

if.then920:                                       ; preds = %if.else917
  %178 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %179 = getelementptr inbounds %struct.regnode_charclass_class* %178, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %179, i64 44, i32 4, i1 false), !tbaa.struct !6
  %and922 = and i32 %flags.addr.03601, -6145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %16, i64 44, i32 4, i1 false), !tbaa.struct !6
  %or924 = or i32 %and922, 4096
  %180 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags926 = getelementptr inbounds %struct.regnode_charclass_class* %180, i64 0, i32 0
  %181 = load i8* %flags926, align 1, !tbaa !1
  %or928 = or i8 %181, 16
  store i8 %or928, i8* %flags926, align 1, !tbaa !1
  br label %if.end946

if.else932:                                       ; preds = %if.end906
  br i1 %tobool914, label %if.else938, label %if.then935

if.then935:                                       ; preds = %if.else932
  %182 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_or(%struct.RExC_state_t* %pRExC_state, %struct.regnode_charclass_class* %182, %struct.regnode_charclass_class* %this_class782) #9
  %183 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %183, %struct.regnode_charclass_class* %and_with) #9
  br label %if.end944

if.else938:                                       ; preds = %if.else932
  %and939 = and i32 %flags.addr.03601, 2048
  %tobool940 = icmp eq i32 %and939, 0
  br i1 %tobool940, label %if.end944, label %if.then941

if.then941:                                       ; preds = %if.else938
  %184 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %184, %struct.regnode_charclass_class* %this_class782) #9
  br label %if.end944

if.end944:                                        ; preds = %if.else938, %if.then941, %if.then935
  %and945 = and i32 %flags.addr.03601, -6145
  br label %if.end946

if.end946:                                        ; preds = %if.else917, %if.then915, %if.then920, %if.end944
  %flags.addr.2 = phi i32 [ %flags.addr.03601, %if.then915 ], [ %or924, %if.then920 ], [ %flags.addr.03601, %if.else917 ], [ %and945, %if.end944 ]
  %185 = load %struct.regnode** %scan, align 8, !tbaa !0
  %tobool947 = icmp eq %struct.regnode* %185, null
  br i1 %tobool947, label %if.then948, label %if.end949

if.then948:                                       ; preds = %if.end946
  store %struct.regnode* %next.1, %struct.regnode** %scan, align 8, !tbaa !0
  br label %if.end949

if.end949:                                        ; preds = %if.end946, %if.then948
  %186 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %186, i64 0, i32 14
  %187 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp950 = icmp eq %struct.sv* %187, null
  br i1 %cmp950, label %lor.lhs.false966, label %land.lhs.true952

land.lhs.true952:                                 ; preds = %if.end949
  %188 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings953 = getelementptr inbounds %struct.cop* %188, i64 0, i32 14
  %189 = load %struct.sv** %cop_warnings953, align 8, !tbaa !0
  %cmp954 = icmp eq %struct.sv* %189, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp954, label %lor.lhs.false966, label %land.lhs.true956

land.lhs.true956:                                 ; preds = %land.lhs.true952
  %190 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings957 = getelementptr inbounds %struct.cop* %190, i64 0, i32 14
  %191 = load %struct.sv** %cop_warnings957, align 8, !tbaa !0
  %cmp958 = icmp eq %struct.sv* %191, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp958, label %land.lhs.true974, label %lor.lhs.false960

lor.lhs.false960:                                 ; preds = %land.lhs.true956
  %192 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings961 = getelementptr inbounds %struct.cop* %192, i64 0, i32 14
  %193 = load %struct.sv** %cop_warnings961, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %193, i64 0, i32 0
  %194 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %194 to i8**
  %195 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx962 = getelementptr inbounds i8* %195, i64 5
  %196 = load i8* %arrayidx962, align 1, !tbaa !1
  %and964 = and i8 %196, 1
  %tobool965 = icmp eq i8 %and964, 0
  br i1 %tobool965, label %lor.lhs.false966, label %land.lhs.true974

lor.lhs.false966:                                 ; preds = %lor.lhs.false960, %land.lhs.true952, %if.end949
  %197 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings967 = getelementptr inbounds %struct.cop* %197, i64 0, i32 14
  %198 = load %struct.sv** %cop_warnings967, align 8, !tbaa !0
  %cmp968 = icmp eq %struct.sv* %198, null
  br i1 %cmp968, label %land.lhs.true970, label %if.end1002

land.lhs.true970:                                 ; preds = %lor.lhs.false966
  %199 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and972 = and i8 %199, 1
  %tobool973 = icmp eq i8 %and972, 0
  br i1 %tobool973, label %if.end1002, label %land.lhs.true974

land.lhs.true974:                                 ; preds = %lor.lhs.false960, %land.lhs.true970, %land.lhs.true956
  %200 = or i32 %next_is_eval.0, %mincount.0
  %notlhs = icmp ne i32 %200, 0
  %notrhs = icmp ne i32 %maxcount.0, 1
  %or.cond3431.not = or i1 %notrhs, %notlhs
  %or.cond3432 = and i1 %or.cond3431.not, %cmp910
  %201 = load i32* %deltanext780, align 4, !tbaa !3
  %cmp986 = icmp eq i32 %201, 0
  %or.cond3433 = and i1 %or.cond3432, %cmp986
  %brmerge3434.demorgan = and i1 %or.cond3433, %tobool2356
  br i1 %brmerge3434.demorgan, label %land.lhs.true990, label %if.end1002

land.lhs.true990:                                 ; preds = %land.lhs.true974
  %202 = load i32* %flags2322, align 4, !tbaa !3
  %and992 = and i32 %202, 384
  %tobool993 = icmp eq i32 %and992, 0
  %cmp995 = icmp ult i32 %maxcount.0, 10923
  %or.cond3435 = and i1 %tobool993, %cmp995
  br i1 %or.cond3435, label %if.then997, label %if.end1002

if.then997:                                       ; preds = %land.lhs.true990
  %203 = load i8** %parse2420, align 8, !tbaa !0
  %204 = load i8** %precomp2421, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %203 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %204 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv998 = trunc i64 %sub.ptr.sub to i32
  %add.ptr1001 = getelementptr inbounds i8* %204, i64 %sub.ptr.sub
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str97, i64 0, i64 0), i32 %conv998, i8* %204, i8* %add.ptr1001) #8
  br label %if.end1002

if.end1002:                                       ; preds = %land.lhs.true974, %land.lhs.true990, %land.lhs.true970, %if.then997, %lor.lhs.false966
  %mul1003 = mul nsw i32 %call901, %mincount.0
  %add1004 = add nsw i32 %mul1003, %min.5
  %cmp1005 = icmp eq i32 %maxcount.0, 32767
  %205 = load i32* %deltanext780, align 4, !tbaa !3
  br i1 %cmp1005, label %land.lhs.true1007, label %lor.rhs

land.lhs.true1007:                                ; preds = %if.end1002
  %add1008 = add nsw i32 %205, %call901
  %cmp1009 = icmp sgt i32 %add1008, 0
  br i1 %cmp1009, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end1002, %land.lhs.true1007
  %cmp1011 = icmp eq i32 %205, 2147483647
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true1007
  %206 = phi i1 [ true, %land.lhs.true1007 ], [ %cmp1011, %lor.rhs ]
  %lor.ext = zext i1 %206 to i32
  %or1013 = or i32 %lor.ext, %is_inf_internal.03595
  %or1014 = or i32 %or1013, %is_inf.03596
  %add1015 = add nsw i32 %205, %call901
  %mul1016 = mul nsw i32 %add1015, %maxcount.0
  %sub1018 = sub nsw i32 %mul1016, %mul1003
  %add1019 = add nsw i32 %sub1018, %delta.03597
  %207 = load i8* %type168, align 1, !tbaa !1
  %cmp1022.not = icmp ne i8 %207, 43
  %brmerge3437 = or i1 %cmp1022.not, %tobool866.not3436
  br i1 %brmerge3437, label %nogo, label %land.lhs.true1026

land.lhs.true1026:                                ; preds = %lor.end
  %208 = load i32* %flags2322, align 4, !tbaa !3
  %209 = and i32 %208, 768
  %210 = icmp eq i32 %209, 256
  %tobool1035 = icmp eq i32 %205, 0
  %or.cond3439 = and i1 %210, %tobool1035
  %cmp1037 = icmp eq i32 %call901, 1
  %or.cond3440 = and i1 %or.cond3439, %cmp1037
  br i1 %or.cond3440, label %if.then1039, label %nogo

if.then1039:                                      ; preds = %land.lhs.true1026
  %add.ptr1041 = getelementptr inbounds %struct.regnode* %52, i64 2
  %call1042 = call %struct.regnode* @Perl_regnext(%struct.regnode* %add.ptr1041) #9
  %type1043 = getelementptr inbounds %struct.regnode* %call1042, i64 0, i32 1
  %211 = load i8* %type1043, align 1, !tbaa !1
  %conv1044 = zext i8 %211 to i32
  %memchr3410 = call i8* @memchr(i8* getelementptr inbounds ([15 x i8]* @PL_simple, i64 0, i64 0), i32 %conv1044, i64 15)
  %tobool1046 = icmp eq i8* %memchr3410, null
  br i1 %tobool1046, label %land.lhs.true1047, label %if.end1060

land.lhs.true1047:                                ; preds = %if.then1039
  %idxprom1049 = zext i8 %211 to i64
  %212 = add i64 %idxprom1049, -33
  %cmp1052 = icmp ult i64 %212, 3
  br i1 %cmp1052, label %land.lhs.true1054, label %nogo

land.lhs.true1054:                                ; preds = %land.lhs.true1047
  %str_len1055 = getelementptr inbounds %struct.regnode* %call1042, i64 0, i32 0
  %213 = load i8* %str_len1055, align 1, !tbaa !1
  %cmp1057 = icmp eq i8 %213, 1
  br i1 %cmp1057, label %if.end1060, label %nogo

if.end1060:                                       ; preds = %if.then1039, %land.lhs.true1054
  %call1061 = call %struct.regnode* @Perl_regnext(%struct.regnode* %call1042) #9
  %type1062 = getelementptr inbounds %struct.regnode* %call1061, i64 0, i32 1
  %214 = load i8* %type1062, align 1, !tbaa !1
  %cmp1064 = icmp eq i8 %214, 46
  br i1 %cmp1064, label %if.else1147.thread3683, label %nogo

if.else1147.thread3683:                           ; preds = %if.end1060
  %arg11068 = getelementptr inbounds %struct.regnode* %call1061, i64 1
  %215 = bitcast %struct.regnode* %arg11068 to i32*
  %216 = load i32* %215, align 4, !tbaa !3
  %conv1069 = trunc i32 %216 to i8
  %flags1070 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  store i8 %conv1069, i8* %flags1070, align 1, !tbaa !1
  store i8 41, i8* %type168, align 1, !tbaa !1
  %type1072 = getelementptr inbounds %struct.regnode* %52, i64 2, i32 1
  store i8 36, i8* %type1072, align 1, !tbaa !1
  br label %if.end1188

nogo:                                             ; preds = %land.lhs.true1026, %lor.end, %if.end1060, %land.lhs.true1047, %land.lhs.true1054
  %.pr3510 = phi i8 [ 43, %land.lhs.true1026 ], [ %207, %lor.end ], [ 43, %if.end1060 ], [ 43, %land.lhs.true1047 ], [ 43, %land.lhs.true1054 ]
  %cmp1076.not = icmp ne i8 %.pr3510, 43
  %brmerge3442 = or i1 %cmp1076.not, %tobool866.not3436
  br i1 %brmerge3442, label %if.else1147, label %land.lhs.true1080

land.lhs.true1080:                                ; preds = %nogo
  %217 = load i32* %flags2322, align 4, !tbaa !3
  %218 = and i32 %217, 640
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %land.lhs.true1088, label %land.lhs.true1152

land.lhs.true1088:                                ; preds = %land.lhs.true1080
  %220 = load i32* %deltanext780, align 4, !tbaa !3
  %tobool1089 = icmp ne i32 %220, 0
  %or.cond3444 = or i1 %tobool1089, %cmp910
  br i1 %or.cond3444, label %land.lhs.true1152, label %if.then1093

if.then1093:                                      ; preds = %land.lhs.true1088
  %add.ptr1096 = getelementptr inbounds %struct.regnode* %52, i64 2
  store i8 42, i8* %type168, align 1, !tbaa !1
  br label %while.cond1098

while.cond1098:                                   ; preds = %while.cond1098, %if.then1093
  %nxt1094.0 = phi %struct.regnode* [ %add.ptr1096, %if.then1093 ], [ %call1099, %while.cond1098 ]
  %call1099 = call %struct.regnode* @Perl_regnext(%struct.regnode* %nxt1094.0) #9
  %type1102 = getelementptr inbounds %struct.regnode* %call1099, i64 0, i32 1
  %221 = load i8* %type1102, align 1, !tbaa !1
  %cmp1104 = icmp eq i8 %221, 44
  br i1 %cmp1104, label %while.end1109, label %while.cond1098

while.end1109:                                    ; preds = %while.cond1098
  %type1110 = getelementptr inbounds %struct.regnode* %call1099, i64 0, i32 1
  store i8 1, i8* %type1110, align 1, !tbaa !1
  %222 = load i32* %flags2322, align 4, !tbaa !3
  %and1112 = and i32 %222, 256
  %tobool1113 = icmp eq i32 %and1112, 0
  br i1 %tobool1113, label %if.else1144, label %if.then1114

if.then1114:                                      ; preds = %while.end1109
  store %struct.regnode* %add.ptr1096, %struct.regnode** %nxt11115, align 8, !tbaa !0
  %type1118 = getelementptr inbounds %struct.regnode* %nxt1094.0, i64 0, i32 1
  %223 = load i8* %type1118, align 1, !tbaa !1
  %cmp1120 = icmp eq i8 %223, 46
  br i1 %cmp1120, label %if.end1137, label %if.then1122

if.then1122:                                      ; preds = %if.then1114
  %224 = load i8** %end, align 8, !tbaa !0
  %225 = load i8** %precomp2421, align 8, !tbaa !0
  %sub.ptr.lhs.cast1124 = ptrtoint i8* %224 to i64
  %sub.ptr.rhs.cast1125 = ptrtoint i8* %225 to i64
  %sub.ptr.sub1126 = sub i64 %sub.ptr.lhs.cast1124, %sub.ptr.rhs.cast1125
  %226 = load %struct.regnode** %emit2413, align 8, !tbaa !0
  %cmp1127 = icmp eq %struct.regnode* %226, @PL_regdummy
  br i1 %cmp1127, label %if.end1130, label %if.then1129

if.then1129:                                      ; preds = %if.then1122
  %227 = load %struct.regexp** %rx2417, align 8, !tbaa !0
  %228 = bitcast %struct.regexp* %227 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %228) #8
  %.pre3658 = load i8** %precomp2421, align 8, !tbaa !0
  br label %if.end1130

if.end1130:                                       ; preds = %if.then1129, %if.then1122
  %229 = phi i8* [ %.pre3658, %if.then1129 ], [ %225, %if.then1122 ]
  %cmp1131 = icmp sgt i64 %sub.ptr.sub1126, 127
  %.3445 = select i1 %cmp1131, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %230 = trunc i64 %sub.ptr.sub1126 to i32
  %conv1135 = select i1 %cmp1131, i32 117, i32 %230
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str98, i64 0, i64 0), i32 %conv1135, i8* %229, i8* %.3445) #8
  br label %if.end1137

if.end1137:                                       ; preds = %if.then1114, %if.end1130
  %arg11138 = getelementptr inbounds %struct.regnode* %nxt1094.0, i64 1
  %231 = bitcast %struct.regnode* %arg11138 to i32*
  %232 = load i32* %231, align 4, !tbaa !3
  %conv1139 = trunc i32 %232 to i8
  %flags1140 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  store i8 %conv1139, i8* %flags1140, align 1, !tbaa !1
  %233 = load %struct.regnode** %nxt11115, align 8, !tbaa !0
  %type1141 = getelementptr inbounds %struct.regnode* %233, i64 0, i32 1
  store i8 61, i8* %type1141, align 1, !tbaa !1
  store i8 61, i8* %type1118, align 1, !tbaa !1
  %call1143 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %pRExC_state, %struct.regnode** %nxt11115, i32* %deltanext780, %struct.regnode* %nxt1094.0, %struct.scan_data_t* null, i32 0) #9
  br label %if.end1188

if.else1144:                                      ; preds = %while.end1109
  %flags1145 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  store i8 0, i8* %flags1145, align 1, !tbaa !1
  br label %if.end1188

if.else1147:                                      ; preds = %nogo
  %cmp1150 = icmp eq i8 %.pr3510, 43
  br i1 %cmp1150, label %land.lhs.true1152, label %if.end1188

land.lhs.true1152:                                ; preds = %land.lhs.true1088, %land.lhs.true1080, %if.else1147
  %and1153 = and i32 %flags.addr.2, 8192
  %tobool1154 = icmp eq i32 %and1153, 0
  %cmp1005.not = xor i1 %cmp1005, true
  %brmerge3446 = or i1 %tobool1154, %cmp1005.not
  %brmerge3448 = or i1 %brmerge3446, %tobool866.not3436
  br i1 %brmerge3448, label %if.end1188, label %land.lhs.true1160

land.lhs.true1160:                                ; preds = %land.lhs.true1152
  %234 = load i32* %whilem_c2358, align 4, !tbaa !3
  %inc1162 = add nsw i32 %234, 1
  store i32 %inc1162, i32* %whilem_c2358, align 4, !tbaa !3
  %cmp1163 = icmp slt i32 %inc1162, 16
  br i1 %cmp1163, label %if.then1165, label %if.end1188

if.then1165:                                      ; preds = %land.lhs.true1160
  %next_off1167 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 2
  %235 = load i16* %next_off1167, align 2, !tbaa !4
  %idx.ext1169 = zext i16 %235 to i64
  %add.ptr1170.sum = add i64 %idx.ext1169, -1
  %type1172 = getelementptr inbounds %struct.regnode* %52, i64 %add.ptr1170.sum, i32 1
  %236 = load i8* %type1172, align 1, !tbaa !1
  %cmp1174 = icmp eq i8 %236, 36
  br i1 %cmp1174, label %if.then1176, label %if.end1180

if.then1176:                                      ; preds = %if.then1165
  %add.ptr1170.sum3408 = add i64 %idx.ext1169, 1
  %arg11177 = getelementptr inbounds %struct.regnode* %52, i64 %add.ptr1170.sum3408
  %237 = bitcast %struct.regnode* %arg11177 to i32*
  %238 = load i32* %237, align 4, !tbaa !3
  %idx.ext1178 = zext i32 %238 to i64
  %add.ptr1170.sum3409 = add i64 %idx.ext1178, %idx.ext1169
  br label %if.end1180

if.end1180:                                       ; preds = %if.then1176, %if.then1165
  %add.ptr1170.sum3409.pn = phi i64 [ %add.ptr1170.sum3409, %if.then1176 ], [ %idx.ext1169, %if.then1165 ]
  %239 = load i32* %whilem_seen, align 4, !tbaa !3
  %shl1182 = shl i32 %239, 4
  %or1183 = or i32 %shl1182, %inc1162
  %conv1184 = trunc i32 %or1183 to i8
  %nxt1166.0.sum = add i64 %add.ptr1170.sum3409.pn, -1
  %flags1186 = getelementptr inbounds %struct.regnode* %52, i64 %nxt1166.0.sum, i32 0
  store i8 %conv1184, i8* %flags1186, align 1, !tbaa !1
  br label %if.end1188

if.end1188:                                       ; preds = %if.else1147.thread3683, %land.lhs.true1152, %if.else1147, %land.lhs.true1160, %if.end1180, %if.end1137, %if.else1144
  br i1 %tobool2356, label %land.lhs.true1190, label %if.end1195

land.lhs.true1190:                                ; preds = %if.end1188
  %and1191 = and i32 %fl.0, 384
  %not.tobool1192 = icmp ne i32 %and1191, 0
  %inc1194 = zext i1 %not.tobool1192 to i32
  %pars.0.inc1194 = add nsw i32 %inc1194, %pars.03598
  br label %if.end1195

if.end1195:                                       ; preds = %land.lhs.true1190, %if.end1188
  %pars.4 = phi i32 [ %pars.03598, %if.end1188 ], [ %pars.0.inc1194, %land.lhs.true1190 ]
  %and1196 = and i32 %flags.addr.2, 1024
  %tobool1197 = icmp eq i32 %and1196, 0
  br i1 %tobool1197, label %if.end1428, label %if.then1198

if.then1198:                                      ; preds = %if.end1195
  %cmp1199 = icmp ne i32 %mincount.0, 0
  %conv1200 = zext i1 %cmp1199 to i32
  %240 = load i32* %last_end1201, align 4, !tbaa !3
  %cmp1202.not = icmp slt i32 %240, 1
  %cmp1199.not = xor i1 %cmp1199, true
  %brmerge3449 = or i1 %cmp1202.not, %cmp1199.not
  br i1 %brmerge3449, label %if.then1198.if.end1363_crit_edge, label %if.then1207

if.then1198.if.end1363_crit_edge:                 ; preds = %if.then1198
  %.pre3662 = load i32* %deltanext780, align 4, !tbaa !3
  br label %if.end1363

if.then1207:                                      ; preds = %if.then1198
  %241 = load i32* %last_start_min1401, align 4, !tbaa !3
  %cmp1209 = icmp slt i32 %pos_before.0, %241
  %.pos_before.0 = select i1 %cmp1209, i32 %241, i32 %pos_before.0
  %242 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %sv_flags1219 = getelementptr inbounds %struct.sv* %242, i64 0, i32 2
  %243 = load i32* %sv_flags1219, align 4, !tbaa !3
  %and1220 = and i32 %243, 262144
  %cmp1221 = icmp eq i32 %and1220, 0
  br i1 %cmp1221, label %cond.false1229, label %cond.true1223

cond.true1223:                                    ; preds = %if.then1207
  %sv_any1225 = getelementptr inbounds %struct.sv* %242, i64 0, i32 0
  %244 = load i8** %sv_any1225, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %244, i64 8
  %245 = bitcast i8* %xpv_cur to i64*
  %246 = load i64* %245, align 8, !tbaa !5
  store i64 %246, i64* %l1216, align 8, !tbaa !5
  %xpv_pv1228 = bitcast i8* %244 to i8**
  %247 = load i8** %xpv_pv1228, align 8, !tbaa !0
  br label %cond.end1232

cond.false1229:                                   ; preds = %if.then1207
  %call1231 = call i8* @Perl_sv_2pv_flags(%struct.sv* %242, i64* %l1216, i32 2) #8
  %.pre3654 = load i32* %last_start_min1401, align 4, !tbaa !3
  br label %cond.end1232

cond.end1232:                                     ; preds = %cond.false1229, %cond.true1223
  %248 = phi i32 [ %241, %cond.true1223 ], [ %.pre3654, %cond.false1229 ]
  %cond1233 = phi i8* [ %247, %cond.true1223 ], [ %call1231, %cond.false1229 ]
  %sub1235 = sub nsw i32 %.pos_before.0, %248
  %249 = load i32* %utf8, align 4, !tbaa !3
  %cmp1237 = icmp eq i32 %249, 0
  br i1 %cmp1237, label %if.end1245, label %if.then1239

if.then1239:                                      ; preds = %cond.end1232
  %call1240 = call i8* @Perl_utf8_hop(i8* %cond1233, i32 %sub1235) #8
  %sub.ptr.lhs.cast1241 = ptrtoint i8* %call1240 to i64
  %sub.ptr.rhs.cast1242 = ptrtoint i8* %cond1233 to i64
  %sub.ptr.sub1243 = sub i64 %sub.ptr.lhs.cast1241, %sub.ptr.rhs.cast1242
  %conv1244 = trunc i64 %sub.ptr.sub1243 to i32
  br label %if.end1245

if.end1245:                                       ; preds = %cond.end1232, %if.then1239
  %old.0 = phi i32 [ %conv1244, %if.then1239 ], [ %sub1235, %cond.end1232 ]
  %conv1246 = sext i32 %old.0 to i64
  %250 = load i64* %l1216, align 8, !tbaa !5
  %sub1247 = sub i64 %250, %conv1246
  store i64 %sub1247, i64* %l1216, align 8, !tbaa !5
  %add.ptr1249 = getelementptr inbounds i8* %cond1233, i64 %conv1246
  %call1250 = call %struct.sv* @Perl_newSVpvn(i8* %add.ptr1249, i64 %sub1247) #8
  %251 = load i32* %utf8, align 4, !tbaa !3
  %cmp1252 = icmp eq i32 %251, 0
  br i1 %cmp1252, label %if.end1257, label %if.then1254

if.then1254:                                      ; preds = %if.end1245
  %sv_flags1255 = getelementptr inbounds %struct.sv* %call1250, i64 0, i32 2
  %252 = load i32* %sv_flags1255, align 4, !tbaa !3
  %or1256 = or i32 %252, 536870912
  store i32 %or1256, i32* %sv_flags1255, align 4, !tbaa !3
  br label %if.end1257

if.end1257:                                       ; preds = %if.end1245, %if.then1254
  %253 = load i32* %deltanext780, align 4, !tbaa !3
  %cmp1258 = icmp eq i32 %253, 0
  %cmp1261 = icmp eq i32 %pos_before.0, %.pos_before.0
  %or.cond3450 = and i1 %cmp1258, %cmp1261
  br i1 %or.cond3450, label %if.then1263, label %if.else1346

if.then1263:                                      ; preds = %if.end1257
  %cmp1264 = icmp ugt i32 %mincount.0, 1
  br i1 %cmp1264, label %if.then1266, label %if.end1363

if.then1266:                                      ; preds = %if.then1263
  %sv_any1267 = getelementptr inbounds %struct.sv* %call1250, i64 0, i32 0
  %254 = load i8** %sv_any1267, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %254, i64 16
  %255 = bitcast i8* %xpv_len to i64*
  %256 = load i64* %255, align 8, !tbaa !5
  %conv12683405 = zext i32 %mincount.0 to i64
  %257 = load i64* %l1216, align 8, !tbaa !5
  %mul1269 = mul i64 %257, %conv12683405
  %add1270 = add i64 %mul1269, 1
  %cmp1271 = icmp ult i64 %256, %add1270
  br i1 %cmp1271, label %cond.true1273, label %cond.end1281

cond.true1273:                                    ; preds = %if.then1266
  %call1277 = call i8* @Perl_sv_grow(%struct.sv* %call1250, i64 %add1270) #8
  %.pre3655 = load i8** %sv_any1267, align 8, !tbaa !0
  %.pre3656 = load i64* %l1216, align 8, !tbaa !5
  br label %cond.end1281

cond.end1281:                                     ; preds = %if.then1266, %cond.true1273
  %258 = phi i64 [ %257, %if.then1266 ], [ %.pre3656, %cond.true1273 ]
  %259 = phi i8* [ %254, %if.then1266 ], [ %.pre3655, %cond.true1273 ]
  %xpv_pv1284 = bitcast i8* %259 to i8**
  %260 = load i8** %xpv_pv1284, align 8, !tbaa !0
  %add.ptr1285 = getelementptr inbounds i8* %260, i64 %258
  %conv1288 = trunc i64 %258 to i32
  %sub1289 = add nsw i32 %mincount.0, -1
  call void @Perl_repeatcpy(i8* %add.ptr1285, i8* %260, i32 %conv1288, i32 %sub1289) #8
  %261 = load i8** %sv_any1267, align 8, !tbaa !0
  %xpv_cur1292 = getelementptr inbounds i8* %261, i64 8
  %262 = bitcast i8* %xpv_cur1292 to i64*
  %263 = load i64* %262, align 8, !tbaa !5
  %mul1293 = mul i64 %263, %conv12683405
  store i64 %mul1293, i64* %262, align 8, !tbaa !5
  %264 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %sv_any1295 = getelementptr inbounds %struct.sv* %264, i64 0, i32 0
  %265 = load i8** %sv_any1295, align 8, !tbaa !0
  %xpv_cur1296 = getelementptr inbounds i8* %265, i64 8
  %266 = bitcast i8* %xpv_cur1296 to i64*
  %267 = load i64* %266, align 8, !tbaa !5
  %268 = load i64* %l1216, align 8, !tbaa !5
  %sub1297 = sub i64 %267, %268
  store i64 %sub1297, i64* %266, align 8, !tbaa !5
  call void @Perl_sv_catsv_flags(%struct.sv* %264, %struct.sv* %call1250, i32 2) #8
  %269 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  %sv_flags1305 = getelementptr inbounds %struct.sv* %269, i64 0, i32 2
  %270 = load i32* %sv_flags1305, align 4, !tbaa !3
  %and1306 = and i32 %270, 536870912
  %tobool1307 = icmp eq i32 %and1306, 0
  %and1310 = and i32 %270, 57344
  %tobool1311 = icmp eq i32 %and1310, 0
  %or.cond3451 = or i1 %tobool1307, %tobool1311
  br i1 %or.cond3451, label %if.end1337, label %cond.end1315

cond.end1315:                                     ; preds = %cond.end1281
  %call1313 = call %struct.magic* @Perl_mg_find(%struct.sv* %269, i32 119) #8
  %tobool1317 = icmp eq %struct.magic* %call1313, null
  br i1 %tobool1317, label %if.end1337, label %land.lhs.true1318

land.lhs.true1318:                                ; preds = %cond.end1315
  %mg_len1319 = getelementptr inbounds %struct.magic* %call1313, i64 0, i32 7
  %271 = load i32* %mg_len1319, align 4, !tbaa !3
  %cmp1320 = icmp sgt i32 %271, -1
  br i1 %cmp1320, label %if.then1322, label %if.end1337

if.then1322:                                      ; preds = %land.lhs.true1318
  %272 = load i32* %utf8, align 4, !tbaa !3
  %cmp1324 = icmp eq i32 %272, 0
  br i1 %cmp1324, label %cond.false1328, label %cond.true1326

cond.true1326:                                    ; preds = %if.then1322
  %call1327 = call i64 @Perl_sv_len_utf8(%struct.sv* %call1250) #8
  %.pre3657 = load i32* %mg_len1319, align 4, !tbaa !3
  br label %cond.end1331

cond.false1328:                                   ; preds = %if.then1322
  %273 = load i8** %sv_any1267, align 8, !tbaa !0
  %xpv_cur1330 = getelementptr inbounds i8* %273, i64 8
  %274 = bitcast i8* %xpv_cur1330 to i64*
  %275 = load i64* %274, align 8, !tbaa !5
  br label %cond.end1331

cond.end1331:                                     ; preds = %cond.false1328, %cond.true1326
  %276 = phi i32 [ %.pre3657, %cond.true1326 ], [ %271, %cond.false1328 ]
  %cond1332 = phi i64 [ %call1327, %cond.true1326 ], [ %275, %cond.false1328 ]
  %conv13343407 = zext i32 %276 to i64
  %add1335 = add i64 %conv13343407, %cond1332
  %conv1336 = trunc i64 %add1335 to i32
  store i32 %conv1336, i32* %mg_len1319, align 4, !tbaa !3
  br label %if.end1337

if.end1337:                                       ; preds = %cond.end1281, %cond.end1315, %cond.end1331, %land.lhs.true1318
  %277 = load i64* %l1216, align 8, !tbaa !5
  %conv1339 = sext i32 %sub1289 to i64
  %mul1340 = mul i64 %277, %conv1339
  %278 = load i32* %last_end1201, align 4, !tbaa !3
  %conv13423406 = zext i32 %278 to i64
  %add1343 = add i64 %conv13423406, %mul1340
  %conv1344 = trunc i64 %add1343 to i32
  store i32 %conv1344, i32* %last_end1201, align 4, !tbaa !3
  br label %if.end1363

if.else1346:                                      ; preds = %if.end1257
  %sub1347 = add nsw i32 %mincount.0, -1
  %mul1348 = mul nsw i32 %call901, %sub1347
  %279 = load i32* %last_start_min1401, align 4, !tbaa !3
  %add1350 = add nsw i32 %279, %mul1348
  store i32 %add1350, i32* %last_start_min1401, align 4, !tbaa !3
  %tobool1351 = icmp eq i32 %or1014, 0
  br i1 %tobool1351, label %cond.false1353, label %cond.end1358

cond.false1353:                                   ; preds = %if.else1346
  %280 = load i32* %pos_delta1375, align 4, !tbaa !3
  %add1356 = add nsw i32 %280, %call901
  %mul1357 = mul nsw i32 %add1356, %sub885
  br label %cond.end1358

cond.end1358:                                     ; preds = %if.else1346, %cond.false1353
  %cond1359 = phi i32 [ %mul1357, %cond.false1353 ], [ 2147483647, %if.else1346 ]
  %281 = load i32* %last_start_max1423, align 4, !tbaa !3
  %add1361 = add nsw i32 %281, %cond1359
  store i32 %add1361, i32* %last_start_max1423, align 4, !tbaa !3
  br label %if.end1363

if.end1363:                                       ; preds = %if.then1263, %if.then1198.if.end1363_crit_edge, %cond.end1358, %if.end1337
  %282 = phi i32 [ 0, %if.end1337 ], [ %253, %cond.end1358 ], [ %.pre3662, %if.then1198.if.end1363_crit_edge ], [ 0, %if.then1263 ]
  %last_str.0 = phi %struct.sv* [ %call1250, %if.end1337 ], [ %call1250, %cond.end1358 ], [ null, %if.then1198.if.end1363_crit_edge ], [ %call1250, %if.then1263 ]
  %sub1364 = sub nsw i32 %mincount.0, %conv1200
  %mul1365 = mul nsw i32 %call901, %sub1364
  %283 = load i32* %pos_min652, align 4, !tbaa !3
  %add1367 = add nsw i32 %283, %mul1365
  store i32 %add1367, i32* %pos_min652, align 4, !tbaa !3
  %sub1368 = sext i1 %cmp1199 to i32
  %mul1369 = mul nsw i32 %282, %sub1368
  %add1370 = add nsw i32 %282, %call901
  %mul1371 = mul nsw i32 %add1370, %maxcount.0
  %284 = load i32* %pos_delta1375, align 4, !tbaa !3
  %add1372 = sub i32 %mul1369, %mul1003
  %sub1374 = add i32 %add1372, %284
  %add1376 = add i32 %sub1374, %mul1371
  store i32 %add1376, i32* %pos_delta1375, align 4, !tbaa !3
  %cmp1377 = icmp eq i32 %mincount.0, %maxcount.0
  br i1 %cmp1377, label %if.end1427, label %if.then1379

if.then1379:                                      ; preds = %if.end1363
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  %tobool1382 = icmp eq %struct.sv* %last_str.0, null
  %or.cond3453 = or i1 %tobool1382, %cmp1199.not
  br i1 %or.cond3453, label %if.end1424, label %if.then1383

if.then1383:                                      ; preds = %if.then1379
  %285 = load %struct.sv** %last_found1384, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %285, %struct.sv* %last_str.0, i32 2) #8
  %286 = load i32* %pos_min652, align 4, !tbaa !3
  store i32 %286, i32* %last_end1201, align 4, !tbaa !3
  %conv13883403 = zext i32 %286 to i64
  %287 = load i32* %utf8, align 4, !tbaa !3
  %cmp1390 = icmp eq i32 %287, 0
  br i1 %cmp1390, label %cond.false1394, label %cond.true1392

cond.true1392:                                    ; preds = %if.then1383
  %call1393 = call i64 @Perl_sv_len_utf8(%struct.sv* %last_str.0) #8
  br label %cond.end1397

cond.false1394:                                   ; preds = %if.then1383
  %sv_any1395 = getelementptr inbounds %struct.sv* %last_str.0, i64 0, i32 0
  %288 = load i8** %sv_any1395, align 8, !tbaa !0
  %xpv_cur1396 = getelementptr inbounds i8* %288, i64 8
  %289 = bitcast i8* %xpv_cur1396 to i64*
  %290 = load i64* %289, align 8, !tbaa !5
  br label %cond.end1397

cond.end1397:                                     ; preds = %cond.false1394, %cond.true1392
  %cond1398 = phi i64 [ %call1393, %cond.true1392 ], [ %290, %cond.false1394 ]
  %sub1399 = sub i64 %conv13883403, %cond1398
  %conv1400 = trunc i64 %sub1399 to i32
  store i32 %conv1400, i32* %last_start_min1401, align 4, !tbaa !3
  %tobool1402 = icmp eq i32 %or1014, 0
  br i1 %tobool1402, label %cond.false1404, label %cond.end1420

cond.false1404:                                   ; preds = %cond.end1397
  %291 = load i32* %pos_min652, align 4, !tbaa !3
  %292 = load i32* %pos_delta1375, align 4, !tbaa !3
  %add1407 = add nsw i32 %292, %291
  %conv14083404 = zext i32 %add1407 to i64
  %293 = load i32* %utf8, align 4, !tbaa !3
  %cmp1410 = icmp eq i32 %293, 0
  br i1 %cmp1410, label %cond.false1414, label %cond.true1412

cond.true1412:                                    ; preds = %cond.false1404
  %call1413 = call i64 @Perl_sv_len_utf8(%struct.sv* %last_str.0) #8
  br label %cond.end1417

cond.false1414:                                   ; preds = %cond.false1404
  %sv_any1415 = getelementptr inbounds %struct.sv* %last_str.0, i64 0, i32 0
  %294 = load i8** %sv_any1415, align 8, !tbaa !0
  %xpv_cur1416 = getelementptr inbounds i8* %294, i64 8
  %295 = bitcast i8* %xpv_cur1416 to i64*
  %296 = load i64* %295, align 8, !tbaa !5
  br label %cond.end1417

cond.end1417:                                     ; preds = %cond.false1414, %cond.true1412
  %cond1418 = phi i64 [ %call1413, %cond.true1412 ], [ %296, %cond.false1414 ]
  %sub1419 = sub i64 %conv14083404, %cond1418
  %phitmp = trunc i64 %sub1419 to i32
  br label %cond.end1420

cond.end1420:                                     ; preds = %cond.end1397, %cond.end1417
  %cond1421 = phi i32 [ %phitmp, %cond.end1417 ], [ 2147483647, %cond.end1397 ]
  store i32 %cond1421, i32* %last_start_max1423, align 4, !tbaa !3
  br label %if.end1424

if.end1424:                                       ; preds = %if.then1379, %cond.end1420
  store %struct.sv** %longest_float2533, %struct.sv*** %longest2534, align 8, !tbaa !0
  br label %if.end1427

if.end1427:                                       ; preds = %if.end1363, %if.end1424
  call void @Perl_sv_free(%struct.sv* %last_str.0) #8
  br label %if.end1428

if.end1428:                                       ; preds = %if.end1195, %if.end1427
  br i1 %tobool2356, label %land.lhs.true1430, label %optimize_curly_tail

land.lhs.true1430:                                ; preds = %if.end1428
  %and1431 = and i32 %fl.0, 512
  %tobool1432 = icmp eq i32 %and1431, 0
  br i1 %tobool1432, label %optimize_curly_tail, label %if.then1433

if.then1433:                                      ; preds = %land.lhs.true1430
  %297 = load i32* %flags2322, align 4, !tbaa !3
  %or1435 = or i32 %297, 512
  store i32 %or1435, i32* %flags2322, align 4, !tbaa !3
  br label %optimize_curly_tail

optimize_curly_tail:                              ; preds = %land.lhs.true1430, %if.end1428, %if.end818, %if.then1433, %if.then822
  %is_inf_internal.4 = phi i32 [ %or1013, %if.then1433 ], [ 1, %if.then822 ], [ 1, %if.end818 ], [ %or1013, %if.end1428 ], [ %or1013, %land.lhs.true1430 ]
  %is_inf.4 = phi i32 [ %or1014, %if.then1433 ], [ 1, %if.then822 ], [ 1, %if.end818 ], [ %or1014, %if.end1428 ], [ %or1014, %land.lhs.true1430 ]
  %delta.1 = phi i32 [ %add1019, %if.then1433 ], [ %delta.03597, %if.then822 ], [ %delta.03597, %if.end818 ], [ %add1019, %if.end1428 ], [ %add1019, %land.lhs.true1430 ]
  %pars.5 = phi i32 [ %pars.4, %if.then1433 ], [ %pars.03598, %if.then822 ], [ %pars.03598, %if.end818 ], [ %pars.4, %if.end1428 ], [ %pars.4, %land.lhs.true1430 ]
  %min.6 = phi i32 [ %add1004, %if.then1433 ], [ %min.4, %if.then822 ], [ %min.4, %if.end818 ], [ %add1004, %if.end1428 ], [ %add1004, %land.lhs.true1430 ]
  %flags.addr.3 = phi i32 [ %flags.addr.2, %if.then1433 ], [ %flags.addr.03601, %if.then822 ], [ %flags.addr.03601, %if.end818 ], [ %flags.addr.2, %if.end1428 ], [ %flags.addr.2, %land.lhs.true1430 ]
  %298 = load i8* %type168, align 1, !tbaa !1
  %cmp1439 = icmp eq i8 %298, 43
  br i1 %cmp1439, label %while.cond.backedge, label %while.cond1442.preheader

while.cond1442.preheader:                         ; preds = %optimize_curly_tail
  %call14433531 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %type14443532 = getelementptr inbounds %struct.regnode* %call14433531, i64 0, i32 1
  %299 = load i8* %type14443532, align 1, !tbaa !1
  %idxprom14453533 = zext i8 %299 to i64
  %300 = lshr i64 2305843215372124160, %idxprom14453533
  %301 = and i64 %300, 1
  %cmp14483534 = icmp eq i64 %301, 0
  br i1 %cmp14483534, label %while.cond.backedge, label %land.rhs1450.lr.ph

land.rhs1450.lr.ph:                               ; preds = %while.cond1442.preheader
  %next_off1459 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 2
  br label %land.rhs1450

land.rhs1450:                                     ; preds = %land.rhs1450.lr.ph, %while.body1456
  %call14433535 = phi %struct.regnode* [ %call14433531, %land.rhs1450.lr.ph ], [ %call1443, %while.body1456 ]
  %next_off1451 = getelementptr inbounds %struct.regnode* %call14433535, i64 0, i32 2
  %302 = load i16* %next_off1451, align 2, !tbaa !4
  %tobool1453 = icmp eq i16 %302, 0
  br i1 %tobool1453, label %while.cond.backedge, label %while.body1456

while.body1456:                                   ; preds = %land.rhs1450
  %303 = load i16* %next_off1459, align 2, !tbaa !4
  %add1461 = add i16 %303, %302
  store i16 %add1461, i16* %next_off1459, align 2, !tbaa !4
  %call1443 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %type1444 = getelementptr inbounds %struct.regnode* %call1443, i64 0, i32 1
  %304 = load i8* %type1444, align 1, !tbaa !1
  %idxprom1445 = zext i8 %304 to i64
  %305 = lshr i64 2305843215372124160, %idxprom1445
  %306 = and i64 %305, 1
  %cmp1448 = icmp eq i64 %306, 0
  br i1 %cmp1448, label %while.cond.backedge, label %land.rhs1450

sw.default:                                       ; preds = %if.then778
  %and1465 = and i32 %flags.addr.03601, 1024
  %tobool1466 = icmp eq i32 %and1465, 0
  br i1 %tobool1466, label %if.end1470, label %if.then1467

if.then1467:                                      ; preds = %sw.default
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  store %struct.sv** %longest_float2533, %struct.sv*** %longest2534, align 8, !tbaa !0
  br label %if.end1470

if.end1470:                                       ; preds = %sw.default, %if.then1467
  %and1471 = and i32 %flags.addr.03601, 4096
  %tobool1472 = icmp eq i32 %and1471, 0
  br i1 %tobool1472, label %cleanup1477.thread3512, label %if.then1473

if.then1473:                                      ; preds = %if.end1470
  %307 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay.i3484 = getelementptr inbounds %struct.regnode_charclass_class* %307, i64 0, i32 5, i64 0
  %308 = bitcast i8* %arraydecay.i3484 to i32*
  store i32 0, i32* %308, align 1
  %309 = getelementptr inbounds %struct.regnode_charclass_class* %307, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %309, i8 -1, i64 32, i32 4, i1 false) #3
  %flags.i3485 = getelementptr inbounds %struct.regnode_charclass_class* %307, i64 0, i32 0
  store i8 80, i8* %flags.i3485, align 1, !tbaa !1
  %310 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i3487 = and i32 %310, 2048
  %cmp.i3488 = icmp eq i32 %and.i3487, 0
  %..i3489 = select i1 %cmp.i3488, i8 80, i8 81
  store i8 %..i3489, i8* %flags.i3485, align 1, !tbaa !1
  br label %cleanup1477.thread3512

cleanup1477.thread3512:                           ; preds = %if.then1473, %if.end1470
  %and1476 = and i32 %flags.addr.03601, -6145
  call void @llvm.lifetime.end(i64 44, i8* %16) #3
  br label %if.end2552

cleanup1477:                                      ; preds = %if.then778
  %add.ptr787 = getelementptr inbounds %struct.regnode* %52, i64 1
  store %struct.regnode* %add.ptr787, %struct.regnode** %scan, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 44, i8* %16) #3
  br label %finish

if.else1480:                                      ; preds = %if.else773
  %memchr3333 = call i8* @memchr(i8* getelementptr inbounds ([15 x i8]* @PL_simple, i64 0, i64 0), i32 %conv2353675, i64 15)
  %tobool1484 = icmp eq i8* %memchr3333, null
  br i1 %tobool1484, label %if.else2306, label %if.then1485

if.then1485:                                      ; preds = %if.else1480
  %and1486 = and i32 %flags.addr.03601, 1024
  %tobool1487 = icmp eq i32 %and1486, 0
  br i1 %tobool1487, label %if.end1491, label %if.then1488

if.then1488:                                      ; preds = %if.then1485
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  %311 = load i32* %pos_min652, align 4, !tbaa !3
  %inc1490 = add nsw i32 %311, 1
  store i32 %inc1490, i32* %pos_min652, align 4, !tbaa !3
  br label %if.end1491

if.end1491:                                       ; preds = %if.then1485, %if.then1488
  %inc1492 = add nsw i32 %min.3, 1
  %and1493 = and i32 %flags.addr.03601, 6144
  %tobool1494 = icmp eq i32 %and1493, 0
  br i1 %tobool1494, label %if.end2552, label %if.then1495

if.then1495:                                      ; preds = %if.end1491
  %312 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1497 = getelementptr inbounds %struct.regnode_charclass_class* %312, i64 0, i32 0
  %313 = load i8* %flags1497, align 1, !tbaa !1
  %and1499 = and i8 %313, -17
  store i8 %and1499, i8* %flags1497, align 1, !tbaa !1
  %314 = load %struct.regnode** %scan, align 8, !tbaa !0
  %type1501 = getelementptr inbounds %struct.regnode* %314, i64 0, i32 1
  %315 = load i8* %type1501, align 1, !tbaa !1
  %idxprom1502 = zext i8 %315 to i64
  %arrayidx1503 = getelementptr inbounds [62 x i8]* @PL_regkind, i64 0, i64 %idxprom1502
  %316 = load i8* %arrayidx1503, align 1, !tbaa !1
  %conv1504 = zext i8 %316 to i32
  switch i32 %conv1504, label %do_default [
    i32 28, label %sw.bb2221
    i32 14, label %sw.bb1512
    i32 17, label %sw.bb1550
    i32 18, label %sw.bb1558
    i32 19, label %sw.bb1671
    i32 20, label %sw.bb1701
    i32 21, label %sw.bb1815
    i32 22, label %sw.bb1845
    i32 23, label %sw.bb1947
    i32 24, label %sw.bb1977
    i32 25, label %sw.bb2079
    i32 26, label %sw.bb2144
  ]

do_default:                                       ; preds = %sw.bb1512, %if.then1495
  %and1507 = and i32 %flags.addr.03601, 4096
  %tobool1508 = icmp eq i32 %and1507, 0
  br i1 %tobool1508, label %sw.epilog2298, label %if.then1509

if.then1509:                                      ; preds = %do_default
  %317 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay.i3490 = getelementptr inbounds %struct.regnode_charclass_class* %317, i64 0, i32 5, i64 0
  %318 = bitcast i8* %arraydecay.i3490 to i32*
  store i32 0, i32* %318, align 1
  %319 = getelementptr inbounds %struct.regnode_charclass_class* %317, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %319, i8 -1, i64 32, i32 4, i1 false) #3
  %flags.i3491 = getelementptr inbounds %struct.regnode_charclass_class* %317, i64 0, i32 0
  store i8 80, i8* %flags.i3491, align 1, !tbaa !1
  %320 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i3493 = and i32 %320, 2048
  %cmp.i3494 = icmp eq i32 %and.i3493, 0
  %..i3495 = select i1 %cmp.i3494, i8 80, i8 81
  store i8 %..i3495, i8* %flags.i3491, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb1512:                                        ; preds = %if.then1495
  %cmp1515 = icmp eq i8 %315, 15
  br i1 %cmp1515, label %do_default, label %if.end1518

if.end1518:                                       ; preds = %sw.bb1512
  %and1519 = and i32 %flags.addr.03601, 4096
  %tobool1520 = icmp eq i32 %and1519, 0
  br i1 %tobool1520, label %if.then1542, label %if.then1521

if.then1521:                                      ; preds = %if.end1518
  %321 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1524 = getelementptr inbounds %struct.regnode_charclass_class* %321, i64 0, i32 4, i64 1
  %322 = load i8* %arrayidx1524, align 1, !tbaa !1
  %and1526 = and i8 %322, 4
  %tobool1527 = icmp eq i8 %and1526, 0
  %flags1530 = getelementptr inbounds %struct.regnode_charclass_class* %321, i64 0, i32 0
  br i1 %tobool1527, label %lor.rhs1528, label %if.end1537

lor.rhs1528:                                      ; preds = %if.then1521
  %323 = load i8* %flags1530, align 1, !tbaa !1
  %and1532 = and i8 %323, 8
  %phitmp3520 = icmp eq i8 %and1532, 0
  br label %if.end1537

if.end1537:                                       ; preds = %if.then1521, %lor.rhs1528
  %324 = phi i1 [ %phitmp3520, %lor.rhs1528 ], [ false, %if.then1521 ]
  %arraydecay.i3496 = getelementptr inbounds %struct.regnode_charclass_class* %321, i64 0, i32 5, i64 0
  %325 = bitcast i8* %arraydecay.i3496 to i32*
  store i32 0, i32* %325, align 1
  %326 = getelementptr inbounds %struct.regnode_charclass_class* %321, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %326, i8 -1, i64 32, i32 4, i1 false) #3
  store i8 80, i8* %flags1530, align 1, !tbaa !1
  %327 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i3499 = and i32 %327, 2048
  %cmp.i3500 = icmp eq i32 %and.i3499, 0
  %..i3501 = select i1 %cmp.i3500, i8 80, i8 81
  store i8 %..i3501, i8* %flags1530, align 1, !tbaa !1
  %and1538 = and i32 %flags.addr.03601, 2048
  %tobool1539 = icmp ne i32 %and1538, 0
  %or.cond3454 = or i1 %tobool1539, %324
  br i1 %or.cond3454, label %if.then1542, label %sw.epilog2298

if.then1542:                                      ; preds = %if.end1518, %if.end1537
  %328 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1545 = getelementptr inbounds %struct.regnode_charclass_class* %328, i64 0, i32 4, i64 1
  %329 = load i8* %arrayidx1545, align 1, !tbaa !1
  %and1547 = and i8 %329, -5
  store i8 %and1547, i8* %arrayidx1545, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb1550:                                        ; preds = %if.then1495
  %and1551 = and i32 %flags.addr.03601, 2048
  %tobool1552 = icmp eq i32 %and1551, 0
  %330 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %331 = bitcast %struct.regnode* %314 to %struct.regnode_charclass_class*
  br i1 %tobool1552, label %if.else1555, label %if.then1553

if.then1553:                                      ; preds = %sw.bb1550
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %330, %struct.regnode_charclass_class* %331) #9
  br label %sw.epilog2298

if.else1555:                                      ; preds = %sw.bb1550
  call fastcc void @S_cl_or(%struct.RExC_state_t* %pRExC_state, %struct.regnode_charclass_class* %330, %struct.regnode_charclass_class* %331) #9
  br label %sw.epilog2298

sw.bb1558:                                        ; preds = %if.then1495
  %and1559 = and i32 %flags.addr.03601, 2048
  %tobool1560 = icmp eq i32 %and1559, 0
  %332 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1563 = getelementptr inbounds %struct.regnode_charclass_class* %332, i64 0, i32 0
  %333 = load i8* %flags1563, align 1, !tbaa !1
  %and1565 = and i8 %333, 1
  %tobool1566 = icmp ne i8 %and1565, 0
  br i1 %tobool1560, label %if.else1615, label %if.then1561

if.then1561:                                      ; preds = %sw.bb1558
  br i1 %tobool1566, label %sw.epilog2298, label %if.then1567

if.then1567:                                      ; preds = %if.then1561
  %arrayidx1570 = getelementptr inbounds %struct.regnode_charclass_class* %332, i64 0, i32 5, i64 0
  %334 = load i8* %arrayidx1570, align 1, !tbaa !1
  %and1572 = and i8 %334, -3
  store i8 %and1572, i8* %arrayidx1570, align 1, !tbaa !1
  br label %for.body1577

for.body1577:                                     ; preds = %for.inc1611, %if.then1567
  %value.13557 = phi i32 [ 0, %if.then1567 ], [ %inc1612, %for.inc1611 ]
  %value.1.off = add i32 %value.13557, -65
  %335 = icmp ult i32 %value.1.off, 26
  %value.1.off3388 = add i32 %value.13557, -97
  %336 = icmp ult i32 %value.1.off3388, 26
  %or.cond3456 = or i1 %335, %336
  br i1 %or.cond3456, label %for.inc1611, label %lor.lhs.false1589

lor.lhs.false1589:                                ; preds = %for.body1577
  %value.1.off3389 = add i32 %value.13557, -48
  %337 = icmp ult i32 %value.1.off3389, 10
  %cmp1596 = icmp eq i32 %value.13557, 95
  %or.cond2613 = or i1 %337, %cmp1596
  br i1 %or.cond2613, label %for.inc1611, label %if.then1598

if.then1598:                                      ; preds = %lor.lhs.false1589
  %and1599 = and i32 %value.13557, 7
  %shl1600 = shl i32 1, %and1599
  %neg = xor i32 %shl1600, 255
  %shr16013390 = lshr i32 %value.13557, 3
  %and1602 = and i32 %shr16013390, 31
  %idxprom16033391 = zext i32 %and1602 to i64
  %338 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1606 = getelementptr inbounds %struct.regnode_charclass_class* %338, i64 0, i32 4, i64 %idxprom16033391
  %339 = load i8* %arrayidx1606, align 1, !tbaa !1
  %conv16073392 = zext i8 %339 to i32
  %and1608 = and i32 %conv16073392, %neg
  %conv1609 = trunc i32 %and1608 to i8
  store i8 %conv1609, i8* %arrayidx1606, align 1, !tbaa !1
  br label %for.inc1611

for.inc1611:                                      ; preds = %if.then1598, %for.body1577, %lor.lhs.false1589
  %inc1612 = add nsw i32 %value.13557, 1
  %exitcond3627 = icmp eq i32 %inc1612, 256
  br i1 %exitcond3627, label %sw.epilog2298, label %for.body1577

if.else1615:                                      ; preds = %sw.bb1558
  br i1 %tobool1566, label %if.then1621, label %for.body1632

if.then1621:                                      ; preds = %if.else1615
  %arrayidx1624 = getelementptr inbounds %struct.regnode_charclass_class* %332, i64 0, i32 5, i64 0
  %340 = load i8* %arrayidx1624, align 1, !tbaa !1
  %or1626 = or i8 %340, 1
  store i8 %or1626, i8* %arrayidx1624, align 1, !tbaa !1
  br label %sw.epilog2298

for.body1632:                                     ; preds = %if.else1615, %for.inc1666
  %value.23559 = phi i32 [ %inc1667, %for.inc1666 ], [ 0, %if.else1615 ]
  %value.2.off = add i32 %value.23559, -65
  %341 = icmp ult i32 %value.2.off, 26
  %value.2.off3381 = add i32 %value.23559, -97
  %342 = icmp ult i32 %value.2.off3381, 26
  %or.cond3458 = or i1 %341, %342
  br i1 %or.cond3458, label %if.then1653, label %lor.lhs.false1644

lor.lhs.false1644:                                ; preds = %for.body1632
  %value.2.off3382 = add i32 %value.23559, -48
  %343 = icmp ult i32 %value.2.off3382, 10
  %cmp1651 = icmp eq i32 %value.23559, 95
  %or.cond2617 = or i1 %343, %cmp1651
  br i1 %or.cond2617, label %if.then1653, label %for.inc1666

if.then1653:                                      ; preds = %lor.lhs.false1644, %for.body1632
  %and1654 = and i32 %value.23559, 7
  %shl1655 = shl i32 1, %and1654
  %shr16563383 = lshr i32 %value.23559, 3
  %and1657 = and i32 %shr16563383, 31
  %idxprom16583384 = zext i32 %and1657 to i64
  %344 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1661 = getelementptr inbounds %struct.regnode_charclass_class* %344, i64 0, i32 4, i64 %idxprom16583384
  %345 = load i8* %arrayidx1661, align 1, !tbaa !1
  %conv16623385 = zext i8 %345 to i32
  %or1663 = or i32 %conv16623385, %shl1655
  %conv1664 = trunc i32 %or1663 to i8
  store i8 %conv1664, i8* %arrayidx1661, align 1, !tbaa !1
  br label %for.inc1666

for.inc1666:                                      ; preds = %if.then1653, %lor.lhs.false1644
  %inc1667 = add nsw i32 %value.23559, 1
  %exitcond3628 = icmp eq i32 %inc1667, 256
  br i1 %exitcond3628, label %sw.epilog2298, label %for.body1632

sw.bb1671:                                        ; preds = %if.then1495
  %and1672 = and i32 %flags.addr.03601, 2048
  %tobool1673 = icmp eq i32 %and1672, 0
  %346 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %tobool1673, label %if.else1688, label %if.then1674

if.then1674:                                      ; preds = %sw.bb1671
  %flags1676 = getelementptr inbounds %struct.regnode_charclass_class* %346, i64 0, i32 0
  %347 = load i8* %flags1676, align 1, !tbaa !1
  %and1678 = and i8 %347, 1
  %tobool1679 = icmp eq i8 %and1678, 0
  br i1 %tobool1679, label %sw.epilog2298, label %if.then1680

if.then1680:                                      ; preds = %if.then1674
  %arrayidx1683 = getelementptr inbounds %struct.regnode_charclass_class* %346, i64 0, i32 5, i64 0
  %348 = load i8* %arrayidx1683, align 1, !tbaa !1
  %and1685 = and i8 %348, -3
  store i8 %and1685, i8* %arrayidx1683, align 1, !tbaa !1
  br label %sw.epilog2298

if.else1688:                                      ; preds = %sw.bb1671
  %arrayidx1691 = getelementptr inbounds %struct.regnode_charclass_class* %346, i64 0, i32 5, i64 0
  %349 = load i8* %arrayidx1691, align 1, !tbaa !1
  %or1693 = or i8 %349, 1
  store i8 %or1693, i8* %arrayidx1691, align 1, !tbaa !1
  %350 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1696 = getelementptr inbounds %struct.regnode_charclass_class* %350, i64 0, i32 0
  %351 = load i8* %flags1696, align 1, !tbaa !1
  %or1698 = or i8 %351, 1
  store i8 %or1698, i8* %flags1696, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb1701:                                        ; preds = %if.then1495
  %and1702 = and i32 %flags.addr.03601, 2048
  %tobool1703 = icmp eq i32 %and1702, 0
  %352 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1706 = getelementptr inbounds %struct.regnode_charclass_class* %352, i64 0, i32 0
  %353 = load i8* %flags1706, align 1, !tbaa !1
  %and1708 = and i8 %353, 1
  %tobool1709 = icmp ne i8 %and1708, 0
  br i1 %tobool1703, label %if.else1759, label %if.then1704

if.then1704:                                      ; preds = %sw.bb1701
  br i1 %tobool1709, label %sw.epilog2298, label %if.then1710

if.then1710:                                      ; preds = %if.then1704
  %arrayidx1713 = getelementptr inbounds %struct.regnode_charclass_class* %352, i64 0, i32 5, i64 0
  %354 = load i8* %arrayidx1713, align 1, !tbaa !1
  %and1715 = and i8 %354, -2
  store i8 %and1715, i8* %arrayidx1713, align 1, !tbaa !1
  br label %for.body1720

for.body1720:                                     ; preds = %for.inc1755, %if.then1710
  %value.33552 = phi i32 [ 0, %if.then1710 ], [ %inc1756, %for.inc1755 ]
  %value.3.off = add i32 %value.33552, -65
  %355 = icmp ult i32 %value.3.off, 26
  %value.3.off3374 = add i32 %value.33552, -97
  %356 = icmp ult i32 %value.3.off3374, 26
  %or.cond3460 = or i1 %355, %356
  br i1 %or.cond3460, label %if.then1741, label %lor.lhs.false1732

lor.lhs.false1732:                                ; preds = %for.body1720
  %value.3.off3375 = add i32 %value.33552, -48
  %357 = icmp ult i32 %value.3.off3375, 10
  %cmp1739 = icmp eq i32 %value.33552, 95
  %or.cond2621 = or i1 %357, %cmp1739
  br i1 %or.cond2621, label %if.then1741, label %for.inc1755

if.then1741:                                      ; preds = %lor.lhs.false1732, %for.body1720
  %and1742 = and i32 %value.33552, 7
  %shl1743 = shl i32 1, %and1742
  %neg1744 = xor i32 %shl1743, 255
  %shr17453376 = lshr i32 %value.33552, 3
  %and1746 = and i32 %shr17453376, 31
  %idxprom17473377 = zext i32 %and1746 to i64
  %358 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1750 = getelementptr inbounds %struct.regnode_charclass_class* %358, i64 0, i32 4, i64 %idxprom17473377
  %359 = load i8* %arrayidx1750, align 1, !tbaa !1
  %conv17513378 = zext i8 %359 to i32
  %and1752 = and i32 %conv17513378, %neg1744
  %conv1753 = trunc i32 %and1752 to i8
  store i8 %conv1753, i8* %arrayidx1750, align 1, !tbaa !1
  br label %for.inc1755

for.inc1755:                                      ; preds = %if.then1741, %lor.lhs.false1732
  %inc1756 = add nsw i32 %value.33552, 1
  %exitcond3625 = icmp eq i32 %inc1756, 256
  br i1 %exitcond3625, label %sw.epilog2298, label %for.body1720

if.else1759:                                      ; preds = %sw.bb1701
  br i1 %tobool1709, label %if.then1765, label %for.body1776

if.then1765:                                      ; preds = %if.else1759
  %arrayidx1768 = getelementptr inbounds %struct.regnode_charclass_class* %352, i64 0, i32 5, i64 0
  %360 = load i8* %arrayidx1768, align 1, !tbaa !1
  %or1770 = or i8 %360, 2
  store i8 %or1770, i8* %arrayidx1768, align 1, !tbaa !1
  br label %sw.epilog2298

for.body1776:                                     ; preds = %if.else1759, %for.inc1810
  %value.43555 = phi i32 [ %inc1811, %for.inc1810 ], [ 0, %if.else1759 ]
  %value.4.off = add i32 %value.43555, -65
  %361 = icmp ult i32 %value.4.off, 26
  %value.4.off3367 = add i32 %value.43555, -97
  %362 = icmp ult i32 %value.4.off3367, 26
  %or.cond3462 = or i1 %361, %362
  br i1 %or.cond3462, label %for.inc1810, label %lor.lhs.false1788

lor.lhs.false1788:                                ; preds = %for.body1776
  %value.4.off3368 = add i32 %value.43555, -48
  %363 = icmp ult i32 %value.4.off3368, 10
  %cmp1795 = icmp eq i32 %value.43555, 95
  %or.cond2625 = or i1 %363, %cmp1795
  br i1 %or.cond2625, label %for.inc1810, label %if.then1797

if.then1797:                                      ; preds = %lor.lhs.false1788
  %and1798 = and i32 %value.43555, 7
  %shl1799 = shl i32 1, %and1798
  %shr18003369 = lshr i32 %value.43555, 3
  %and1801 = and i32 %shr18003369, 31
  %idxprom18023370 = zext i32 %and1801 to i64
  %364 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1805 = getelementptr inbounds %struct.regnode_charclass_class* %364, i64 0, i32 4, i64 %idxprom18023370
  %365 = load i8* %arrayidx1805, align 1, !tbaa !1
  %conv18063371 = zext i8 %365 to i32
  %or1807 = or i32 %conv18063371, %shl1799
  %conv1808 = trunc i32 %or1807 to i8
  store i8 %conv1808, i8* %arrayidx1805, align 1, !tbaa !1
  br label %for.inc1810

for.inc1810:                                      ; preds = %if.then1797, %for.body1776, %lor.lhs.false1788
  %inc1811 = add nsw i32 %value.43555, 1
  %exitcond3626 = icmp eq i32 %inc1811, 256
  br i1 %exitcond3626, label %sw.epilog2298, label %for.body1776

sw.bb1815:                                        ; preds = %if.then1495
  %and1816 = and i32 %flags.addr.03601, 2048
  %tobool1817 = icmp eq i32 %and1816, 0
  %366 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1820 = getelementptr inbounds %struct.regnode_charclass_class* %366, i64 0, i32 0
  %367 = load i8* %flags1820, align 1, !tbaa !1
  br i1 %tobool1817, label %if.else1832, label %if.then1818

if.then1818:                                      ; preds = %sw.bb1815
  %and1822 = and i8 %367, 1
  %tobool1823 = icmp eq i8 %and1822, 0
  br i1 %tobool1823, label %sw.epilog2298, label %if.then1824

if.then1824:                                      ; preds = %if.then1818
  %arrayidx1827 = getelementptr inbounds %struct.regnode_charclass_class* %366, i64 0, i32 5, i64 0
  %368 = load i8* %arrayidx1827, align 1, !tbaa !1
  %and1829 = and i8 %368, -2
  store i8 %and1829, i8* %arrayidx1827, align 1, !tbaa !1
  br label %sw.epilog2298

if.else1832:                                      ; preds = %sw.bb1815
  %or1836 = or i8 %367, 1
  store i8 %or1836, i8* %flags1820, align 1, !tbaa !1
  %369 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1840 = getelementptr inbounds %struct.regnode_charclass_class* %369, i64 0, i32 5, i64 0
  %370 = load i8* %arrayidx1840, align 1, !tbaa !1
  %or1842 = or i8 %370, 2
  store i8 %or1842, i8* %arrayidx1840, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb1845:                                        ; preds = %if.then1495
  %and1846 = and i32 %flags.addr.03601, 2048
  %tobool1847 = icmp eq i32 %and1846, 0
  %371 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1850 = getelementptr inbounds %struct.regnode_charclass_class* %371, i64 0, i32 0
  %372 = load i8* %flags1850, align 1, !tbaa !1
  %and1852 = and i8 %372, 1
  %tobool1853 = icmp ne i8 %and1852, 0
  br i1 %tobool1847, label %if.else1897, label %if.then1848

if.then1848:                                      ; preds = %sw.bb1845
  br i1 %tobool1853, label %sw.epilog2298, label %if.then1854

if.then1854:                                      ; preds = %if.then1848
  %arrayidx1857 = getelementptr inbounds %struct.regnode_charclass_class* %371, i64 0, i32 5, i64 0
  %373 = load i8* %arrayidx1857, align 1, !tbaa !1
  %and1859 = and i8 %373, -9
  store i8 %and1859, i8* %arrayidx1857, align 1, !tbaa !1
  br label %for.body1864

for.body1864:                                     ; preds = %for.inc1893, %if.then1854
  %value.53547 = phi i32 [ 0, %if.then1854 ], [ %inc1894, %for.inc1893 ]
  switch i32 %value.53547, label %if.then1879 [
    i32 32, label %for.inc1893
    i32 13, label %for.inc1893
    i32 12, label %for.inc1893
    i32 10, label %for.inc1893
    i32 9, label %for.inc1893
  ]

if.then1879:                                      ; preds = %for.body1864
  %and1880 = and i32 %value.53547, 7
  %shl1881 = shl i32 1, %and1880
  %neg1882 = xor i32 %shl1881, 255
  %shr18833362 = lshr i32 %value.53547, 3
  %and1884 = and i32 %shr18833362, 31
  %idxprom18853363 = zext i32 %and1884 to i64
  %374 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1888 = getelementptr inbounds %struct.regnode_charclass_class* %374, i64 0, i32 4, i64 %idxprom18853363
  %375 = load i8* %arrayidx1888, align 1, !tbaa !1
  %conv18893364 = zext i8 %375 to i32
  %and1890 = and i32 %conv18893364, %neg1882
  %conv1891 = trunc i32 %and1890 to i8
  store i8 %conv1891, i8* %arrayidx1888, align 1, !tbaa !1
  br label %for.inc1893

for.inc1893:                                      ; preds = %for.body1864, %for.body1864, %for.body1864, %for.body1864, %for.body1864, %if.then1879
  %inc1894 = add nsw i32 %value.53547, 1
  %exitcond3623 = icmp eq i32 %inc1894, 256
  br i1 %exitcond3623, label %sw.epilog2298, label %for.body1864

if.else1897:                                      ; preds = %sw.bb1845
  br i1 %tobool1853, label %if.then1903, label %for.body1914

if.then1903:                                      ; preds = %if.else1897
  %arrayidx1906 = getelementptr inbounds %struct.regnode_charclass_class* %371, i64 0, i32 5, i64 0
  %376 = load i8* %arrayidx1906, align 1, !tbaa !1
  %or1908 = or i8 %376, 4
  store i8 %or1908, i8* %arrayidx1906, align 1, !tbaa !1
  br label %sw.epilog2298

for.body1914:                                     ; preds = %if.else1897, %for.inc1942
  %value.63549 = phi i32 [ %inc1943, %for.inc1942 ], [ 0, %if.else1897 ]
  switch i32 %value.63549, label %for.inc1942 [
    i32 32, label %if.then1929
    i32 13, label %if.then1929
    i32 12, label %if.then1929
    i32 10, label %if.then1929
    i32 9, label %if.then1929
  ]

if.then1929:                                      ; preds = %for.body1914, %for.body1914, %for.body1914, %for.body1914, %for.body1914
  %and1930 = and i32 %value.63549, 7
  %shl1931 = shl i32 1, %and1930
  %shr19323357 = lshr i32 %value.63549, 3
  %and1933 = and i32 %shr19323357, 31
  %idxprom19343358 = zext i32 %and1933 to i64
  %377 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1937 = getelementptr inbounds %struct.regnode_charclass_class* %377, i64 0, i32 4, i64 %idxprom19343358
  %378 = load i8* %arrayidx1937, align 1, !tbaa !1
  %conv19383359 = zext i8 %378 to i32
  %or1939 = or i32 %conv19383359, %shl1931
  %conv1940 = trunc i32 %or1939 to i8
  store i8 %conv1940, i8* %arrayidx1937, align 1, !tbaa !1
  br label %for.inc1942

for.inc1942:                                      ; preds = %for.body1914, %if.then1929
  %inc1943 = add nsw i32 %value.63549, 1
  %exitcond3624 = icmp eq i32 %inc1943, 256
  br i1 %exitcond3624, label %sw.epilog2298, label %for.body1914

sw.bb1947:                                        ; preds = %if.then1495
  %and1948 = and i32 %flags.addr.03601, 2048
  %tobool1949 = icmp eq i32 %and1948, 0
  %379 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1952 = getelementptr inbounds %struct.regnode_charclass_class* %379, i64 0, i32 0
  %380 = load i8* %flags1952, align 1, !tbaa !1
  br i1 %tobool1949, label %if.else1964, label %if.then1950

if.then1950:                                      ; preds = %sw.bb1947
  %and1954 = and i8 %380, 1
  %tobool1955 = icmp eq i8 %and1954, 0
  br i1 %tobool1955, label %sw.epilog2298, label %if.then1956

if.then1956:                                      ; preds = %if.then1950
  %arrayidx1959 = getelementptr inbounds %struct.regnode_charclass_class* %379, i64 0, i32 5, i64 0
  %381 = load i8* %arrayidx1959, align 1, !tbaa !1
  %and1961 = and i8 %381, -9
  store i8 %and1961, i8* %arrayidx1959, align 1, !tbaa !1
  br label %sw.epilog2298

if.else1964:                                      ; preds = %sw.bb1947
  %or1968 = or i8 %380, 1
  store i8 %or1968, i8* %flags1952, align 1, !tbaa !1
  %382 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx1972 = getelementptr inbounds %struct.regnode_charclass_class* %382, i64 0, i32 5, i64 0
  %383 = load i8* %arrayidx1972, align 1, !tbaa !1
  %or1974 = or i8 %383, 4
  store i8 %or1974, i8* %arrayidx1972, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb1977:                                        ; preds = %if.then1495
  %and1978 = and i32 %flags.addr.03601, 2048
  %tobool1979 = icmp eq i32 %and1978, 0
  %384 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags1982 = getelementptr inbounds %struct.regnode_charclass_class* %384, i64 0, i32 0
  %385 = load i8* %flags1982, align 1, !tbaa !1
  %and1984 = and i8 %385, 1
  %tobool1985 = icmp ne i8 %and1984, 0
  br i1 %tobool1979, label %if.else2029, label %if.then1980

if.then1980:                                      ; preds = %sw.bb1977
  br i1 %tobool1985, label %sw.epilog2298, label %if.then1986

if.then1986:                                      ; preds = %if.then1980
  %arrayidx1989 = getelementptr inbounds %struct.regnode_charclass_class* %384, i64 0, i32 5, i64 0
  %386 = load i8* %arrayidx1989, align 1, !tbaa !1
  %and1991 = and i8 %386, -5
  store i8 %and1991, i8* %arrayidx1989, align 1, !tbaa !1
  br label %for.body1996

for.body1996:                                     ; preds = %for.inc2025, %if.then1986
  %value.73542 = phi i32 [ 0, %if.then1986 ], [ %inc2026, %for.inc2025 ]
  switch i32 %value.73542, label %for.inc2025 [
    i32 32, label %if.then2011
    i32 13, label %if.then2011
    i32 12, label %if.then2011
    i32 10, label %if.then2011
    i32 9, label %if.then2011
  ]

if.then2011:                                      ; preds = %for.body1996, %for.body1996, %for.body1996, %for.body1996, %for.body1996
  %and2012 = and i32 %value.73542, 7
  %shl2013 = shl i32 1, %and2012
  %neg2014 = xor i32 %shl2013, 255
  %shr20153352 = lshr i32 %value.73542, 3
  %and2016 = and i32 %shr20153352, 31
  %idxprom20173353 = zext i32 %and2016 to i64
  %387 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2020 = getelementptr inbounds %struct.regnode_charclass_class* %387, i64 0, i32 4, i64 %idxprom20173353
  %388 = load i8* %arrayidx2020, align 1, !tbaa !1
  %conv20213354 = zext i8 %388 to i32
  %and2022 = and i32 %conv20213354, %neg2014
  %conv2023 = trunc i32 %and2022 to i8
  store i8 %conv2023, i8* %arrayidx2020, align 1, !tbaa !1
  br label %for.inc2025

for.inc2025:                                      ; preds = %for.body1996, %if.then2011
  %inc2026 = add nsw i32 %value.73542, 1
  %exitcond3621 = icmp eq i32 %inc2026, 256
  br i1 %exitcond3621, label %sw.epilog2298, label %for.body1996

if.else2029:                                      ; preds = %sw.bb1977
  br i1 %tobool1985, label %if.then2035, label %for.body2046

if.then2035:                                      ; preds = %if.else2029
  %arrayidx2038 = getelementptr inbounds %struct.regnode_charclass_class* %384, i64 0, i32 5, i64 0
  %389 = load i8* %arrayidx2038, align 1, !tbaa !1
  %or2040 = or i8 %389, 8
  store i8 %or2040, i8* %arrayidx2038, align 1, !tbaa !1
  br label %sw.epilog2298

for.body2046:                                     ; preds = %if.else2029, %for.inc2074
  %value.83545 = phi i32 [ %inc2075, %for.inc2074 ], [ 0, %if.else2029 ]
  switch i32 %value.83545, label %if.then2061 [
    i32 32, label %for.inc2074
    i32 13, label %for.inc2074
    i32 12, label %for.inc2074
    i32 10, label %for.inc2074
    i32 9, label %for.inc2074
  ]

if.then2061:                                      ; preds = %for.body2046
  %and2062 = and i32 %value.83545, 7
  %shl2063 = shl i32 1, %and2062
  %shr20643347 = lshr i32 %value.83545, 3
  %and2065 = and i32 %shr20643347, 31
  %idxprom20663348 = zext i32 %and2065 to i64
  %390 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2069 = getelementptr inbounds %struct.regnode_charclass_class* %390, i64 0, i32 4, i64 %idxprom20663348
  %391 = load i8* %arrayidx2069, align 1, !tbaa !1
  %conv20703349 = zext i8 %391 to i32
  %or2071 = or i32 %conv20703349, %shl2063
  %conv2072 = trunc i32 %or2071 to i8
  store i8 %conv2072, i8* %arrayidx2069, align 1, !tbaa !1
  br label %for.inc2074

for.inc2074:                                      ; preds = %for.body2046, %for.body2046, %for.body2046, %for.body2046, %for.body2046, %if.then2061
  %inc2075 = add nsw i32 %value.83545, 1
  %exitcond3622 = icmp eq i32 %inc2075, 256
  br i1 %exitcond3622, label %sw.epilog2298, label %for.body2046

sw.bb2079:                                        ; preds = %if.then1495
  %and2080 = and i32 %flags.addr.03601, 2048
  %tobool2081 = icmp eq i32 %and2080, 0
  %392 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags2084 = getelementptr inbounds %struct.regnode_charclass_class* %392, i64 0, i32 0
  %393 = load i8* %flags2084, align 1, !tbaa !1
  br i1 %tobool2081, label %if.else2131, label %if.then2082

if.then2082:                                      ; preds = %sw.bb2079
  %and2086 = and i8 %393, 1
  %tobool2087 = icmp eq i8 %and2086, 0
  br i1 %tobool2087, label %sw.epilog2298, label %if.then2088

if.then2088:                                      ; preds = %if.then2082
  %arrayidx2091 = getelementptr inbounds %struct.regnode_charclass_class* %392, i64 0, i32 5, i64 0
  %394 = load i8* %arrayidx2091, align 1, !tbaa !1
  %and2093 = and i8 %394, -5
  store i8 %and2093, i8* %arrayidx2091, align 1, !tbaa !1
  br label %for.body2098

for.body2098:                                     ; preds = %for.inc2127, %if.then2088
  %value.93540 = phi i32 [ 0, %if.then2088 ], [ %inc2128, %for.inc2127 ]
  switch i32 %value.93540, label %if.then2113 [
    i32 32, label %for.inc2127
    i32 13, label %for.inc2127
    i32 12, label %for.inc2127
    i32 10, label %for.inc2127
    i32 9, label %for.inc2127
  ]

if.then2113:                                      ; preds = %for.body2098
  %and2114 = and i32 %value.93540, 7
  %shl2115 = shl i32 1, %and2114
  %neg2116 = xor i32 %shl2115, 255
  %shr21173344 = lshr i32 %value.93540, 3
  %and2118 = and i32 %shr21173344, 31
  %idxprom21193345 = zext i32 %and2118 to i64
  %395 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2122 = getelementptr inbounds %struct.regnode_charclass_class* %395, i64 0, i32 4, i64 %idxprom21193345
  %396 = load i8* %arrayidx2122, align 1, !tbaa !1
  %conv21233346 = zext i8 %396 to i32
  %and2124 = and i32 %conv21233346, %neg2116
  %conv2125 = trunc i32 %and2124 to i8
  store i8 %conv2125, i8* %arrayidx2122, align 1, !tbaa !1
  br label %for.inc2127

for.inc2127:                                      ; preds = %for.body2098, %for.body2098, %for.body2098, %for.body2098, %for.body2098, %if.then2113
  %inc2128 = add nsw i32 %value.93540, 1
  %exitcond3620 = icmp eq i32 %inc2128, 256
  br i1 %exitcond3620, label %sw.epilog2298, label %for.body2098

if.else2131:                                      ; preds = %sw.bb2079
  %or2135 = or i8 %393, 1
  store i8 %or2135, i8* %flags2084, align 1, !tbaa !1
  %397 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2139 = getelementptr inbounds %struct.regnode_charclass_class* %397, i64 0, i32 5, i64 0
  %398 = load i8* %arrayidx2139, align 1, !tbaa !1
  %or2141 = or i8 %398, 8
  store i8 %or2141, i8* %arrayidx2139, align 1, !tbaa !1
  br label %sw.epilog2298

sw.bb2144:                                        ; preds = %if.then1495
  %and2145 = and i32 %flags.addr.03601, 2048
  %tobool2146 = icmp eq i32 %and2145, 0
  %399 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %tobool2146, label %if.else2180, label %if.then2147

if.then2147:                                      ; preds = %sw.bb2144
  %arrayidx2150 = getelementptr inbounds %struct.regnode_charclass_class* %399, i64 0, i32 5, i64 0
  %400 = load i8* %arrayidx2150, align 1, !tbaa !1
  %and2152 = and i8 %400, -33
  store i8 %and2152, i8* %arrayidx2150, align 1, !tbaa !1
  br label %for.body2157

for.body2157:                                     ; preds = %for.inc2177, %if.then2147
  %value.103536 = phi i32 [ 0, %if.then2147 ], [ %inc2178, %for.inc2177 ]
  %value.10.off = add i32 %value.103536, -48
  %401 = icmp ult i32 %value.10.off, 10
  br i1 %401, label %for.inc2177, label %if.then2163

if.then2163:                                      ; preds = %for.body2157
  %and2164 = and i32 %value.103536, 7
  %shl2165 = shl i32 1, %and2164
  %neg2166 = xor i32 %shl2165, 255
  %shr21673339 = lshr i32 %value.103536, 3
  %and2168 = and i32 %shr21673339, 31
  %idxprom21693340 = zext i32 %and2168 to i64
  %402 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2172 = getelementptr inbounds %struct.regnode_charclass_class* %402, i64 0, i32 4, i64 %idxprom21693340
  %403 = load i8* %arrayidx2172, align 1, !tbaa !1
  %conv21733341 = zext i8 %403 to i32
  %and2174 = and i32 %conv21733341, %neg2166
  %conv2175 = trunc i32 %and2174 to i8
  store i8 %conv2175, i8* %arrayidx2172, align 1, !tbaa !1
  br label %for.inc2177

for.inc2177:                                      ; preds = %if.then2163, %for.body2157
  %inc2178 = add nsw i32 %value.103536, 1
  %exitcond = icmp eq i32 %inc2178, 256
  br i1 %exitcond, label %sw.epilog2298, label %for.body2157

if.else2180:                                      ; preds = %sw.bb2144
  %flags2182 = getelementptr inbounds %struct.regnode_charclass_class* %399, i64 0, i32 0
  %404 = load i8* %flags2182, align 1, !tbaa !1
  %and2184 = and i8 %404, 1
  %tobool2185 = icmp eq i8 %and2184, 0
  br i1 %tobool2185, label %for.body2197, label %if.then2186

if.then2186:                                      ; preds = %if.else2180
  %arrayidx2189 = getelementptr inbounds %struct.regnode_charclass_class* %399, i64 0, i32 5, i64 0
  %405 = load i8* %arrayidx2189, align 1, !tbaa !1
  %or2191 = or i8 %405, 16
  store i8 %or2191, i8* %arrayidx2189, align 1, !tbaa !1
  br label %sw.epilog2298

for.body2197:                                     ; preds = %if.else2180, %for.inc2216
  %value.113538 = phi i32 [ %inc2217, %for.inc2216 ], [ 0, %if.else2180 ]
  %value.11.off = add i32 %value.113538, -48
  %406 = icmp ult i32 %value.11.off, 10
  br i1 %406, label %if.then2203, label %for.inc2216

if.then2203:                                      ; preds = %for.body2197
  %and2204 = and i32 %value.113538, 7
  %shl2205 = shl i32 1, %and2204
  %shr22063334 = lshr i32 %value.113538, 3
  %and2207 = and i32 %shr22063334, 31
  %idxprom22083335 = zext i32 %and2207 to i64
  %407 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2211 = getelementptr inbounds %struct.regnode_charclass_class* %407, i64 0, i32 4, i64 %idxprom22083335
  %408 = load i8* %arrayidx2211, align 1, !tbaa !1
  %conv22123336 = zext i8 %408 to i32
  %or2213 = or i32 %conv22123336, %shl2205
  %conv2214 = trunc i32 %or2213 to i8
  store i8 %conv2214, i8* %arrayidx2211, align 1, !tbaa !1
  br label %for.inc2216

for.inc2216:                                      ; preds = %for.body2197, %if.then2203
  %inc2217 = add nsw i32 %value.113538, 1
  %exitcond3619 = icmp eq i32 %inc2217, 256
  br i1 %exitcond3619, label %sw.epilog2298, label %for.body2197

sw.bb2221:                                        ; preds = %if.then1495
  %and2222 = and i32 %flags.addr.03601, 2048
  %tobool2223 = icmp eq i32 %and2222, 0
  %409 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  br i1 %tobool2223, label %if.else2257, label %if.then2224

if.then2224:                                      ; preds = %sw.bb2221
  %arrayidx2227 = getelementptr inbounds %struct.regnode_charclass_class* %409, i64 0, i32 5, i64 0
  %410 = load i8* %arrayidx2227, align 1, !tbaa !1
  %and2229 = and i8 %410, -17
  store i8 %and2229, i8* %arrayidx2227, align 1, !tbaa !1
  br label %for.body2234

for.body2234:                                     ; preds = %for.inc2254, %if.then2224
  %value.123562 = phi i32 [ 0, %if.then2224 ], [ %inc2255, %for.inc2254 ]
  %value.12.off = add i32 %value.123562, -48
  %411 = icmp ult i32 %value.12.off, 10
  br i1 %411, label %if.then2240, label %for.inc2254

if.then2240:                                      ; preds = %for.body2234
  %and2241 = and i32 %value.123562, 7
  %shl2242 = shl i32 1, %and2241
  %neg2243 = xor i32 %shl2242, 255
  %shr22443400 = lshr i32 %value.123562, 3
  %and2245 = and i32 %shr22443400, 31
  %idxprom22463401 = zext i32 %and2245 to i64
  %412 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2249 = getelementptr inbounds %struct.regnode_charclass_class* %412, i64 0, i32 4, i64 %idxprom22463401
  %413 = load i8* %arrayidx2249, align 1, !tbaa !1
  %conv22503402 = zext i8 %413 to i32
  %and2251 = and i32 %conv22503402, %neg2243
  %conv2252 = trunc i32 %and2251 to i8
  store i8 %conv2252, i8* %arrayidx2249, align 1, !tbaa !1
  br label %for.inc2254

for.inc2254:                                      ; preds = %for.body2234, %if.then2240
  %inc2255 = add nsw i32 %value.123562, 1
  %exitcond3629 = icmp eq i32 %inc2255, 256
  br i1 %exitcond3629, label %sw.epilog2298, label %for.body2234

if.else2257:                                      ; preds = %sw.bb2221
  %flags2259 = getelementptr inbounds %struct.regnode_charclass_class* %409, i64 0, i32 0
  %414 = load i8* %flags2259, align 1, !tbaa !1
  %and2261 = and i8 %414, 1
  %tobool2262 = icmp eq i8 %and2261, 0
  br i1 %tobool2262, label %for.body2274, label %if.then2263

if.then2263:                                      ; preds = %if.else2257
  %arrayidx2266 = getelementptr inbounds %struct.regnode_charclass_class* %409, i64 0, i32 5, i64 0
  %415 = load i8* %arrayidx2266, align 1, !tbaa !1
  %or2268 = or i8 %415, 32
  store i8 %or2268, i8* %arrayidx2266, align 1, !tbaa !1
  br label %sw.epilog2298

for.body2274:                                     ; preds = %if.else2257, %for.inc2293
  %value.133564 = phi i32 [ %inc2294, %for.inc2293 ], [ 0, %if.else2257 ]
  %value.13.off = add i32 %value.133564, -48
  %416 = icmp ult i32 %value.13.off, 10
  br i1 %416, label %for.inc2293, label %if.then2280

if.then2280:                                      ; preds = %for.body2274
  %and2281 = and i32 %value.133564, 7
  %shl2282 = shl i32 1, %and2281
  %shr22833395 = lshr i32 %value.133564, 3
  %and2284 = and i32 %shr22833395, 31
  %idxprom22853396 = zext i32 %and2284 to i64
  %417 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arrayidx2288 = getelementptr inbounds %struct.regnode_charclass_class* %417, i64 0, i32 4, i64 %idxprom22853396
  %418 = load i8* %arrayidx2288, align 1, !tbaa !1
  %conv22893397 = zext i8 %418 to i32
  %or2290 = or i32 %conv22893397, %shl2282
  %conv2291 = trunc i32 %or2290 to i8
  store i8 %conv2291, i8* %arrayidx2288, align 1, !tbaa !1
  br label %for.inc2293

for.inc2293:                                      ; preds = %if.then2280, %for.body2274
  %inc2294 = add nsw i32 %value.133564, 1
  %exitcond3630 = icmp eq i32 %inc2294, 256
  br i1 %exitcond3630, label %sw.epilog2298, label %for.body2274

sw.epilog2298:                                    ; preds = %for.inc2293, %for.inc2254, %for.inc1666, %for.inc1611, %for.inc1810, %for.inc1755, %for.inc1942, %for.inc1893, %for.inc2074, %for.inc2025, %for.inc2127, %for.inc2216, %for.inc2177, %if.end1537, %do_default, %if.then1674, %if.then1818, %if.then1950, %if.then2082, %if.then2263, %if.then2186, %if.else2131, %if.then1980, %if.then2035, %if.else1964, %if.then1956, %if.then1848, %if.then1903, %if.else1832, %if.then1824, %if.then1704, %if.then1765, %if.else1688, %if.then1680, %if.then1561, %if.then1621, %if.then1553, %if.else1555, %if.then1542, %if.then1509
  %and2299 = and i32 %flags.addr.03601, 4096
  %tobool2300 = icmp eq i32 %and2299, 0
  br i1 %tobool2300, label %if.end2303, label %if.then2301

if.then2301:                                      ; preds = %sw.epilog2298
  %419 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %419, %struct.regnode_charclass_class* %and_with) #9
  br label %if.end2303

if.end2303:                                       ; preds = %sw.epilog2298, %if.then2301
  %and2304 = and i32 %flags.addr.03601, -6145
  br label %if.end2552

if.else2306:                                      ; preds = %if.else1480
  %420 = add i64 %idxprom616, -5
  %cmp2311 = icmp ult i64 %420, 4
  br i1 %cmp2311, label %land.lhs.true2313, label %if.else2324

land.lhs.true2313:                                ; preds = %if.else2306
  %and2314 = and i32 %flags.addr.03601, 1024
  %tobool2315 = icmp eq i32 %and2314, 0
  br i1 %tobool2315, label %if.else2324, label %if.then2316

if.then2316:                                      ; preds = %land.lhs.true2313
  %cmp2319 = icmp eq i8 %130, 7
  %cond2321 = select i1 %cmp2319, i32 2, i32 1
  %421 = load i32* %flags2322, align 4, !tbaa !3
  %or2323 = or i32 %421, %cond2321
  store i32 %or2323, i32* %flags2322, align 4, !tbaa !3
  br label %if.end2552

if.else2324:                                      ; preds = %land.lhs.true2313, %if.else2306
  %422 = lshr i64 1241867597247414272, %idxprom616
  %423 = and i64 %422, 1
  %cmp2329 = icmp eq i64 %423, 0
  br i1 %cmp2329, label %if.else2473, label %land.lhs.true2331

land.lhs.true2331:                                ; preds = %if.else2324
  %flags2332 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  %424 = load i8* %flags2332, align 1, !tbaa !1
  %tobool2334 = icmp eq i8 %424, 0
  %or.cond3463 = and i1 %tobool2334, %tobool647
  br i1 %or.cond3463, label %lor.lhs.false2337, label %land.lhs.true2340

lor.lhs.false2337:                                ; preds = %land.lhs.true2331
  %and2338 = and i32 %flags.addr.03601, 6144
  %tobool2339 = icmp eq i32 %and2338, 0
  br i1 %tobool2339, label %if.else2473, label %land.lhs.true2340

land.lhs.true2340:                                ; preds = %lor.lhs.false2337, %land.lhs.true2331
  %.off = add i8 %130, -50
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then2350, label %if.else2473

if.then2350:                                      ; preds = %land.lhs.true2340
  store i32 0, i32* %fake2353, align 4, !tbaa !3
  call void @llvm.lifetime.start(i64 44, i8* %12) #3
  store i32 0, i32* %flags2355, align 8, !tbaa !3
  br i1 %tobool2356, label %if.then2357, label %if.end2364

if.then2357:                                      ; preds = %if.then2350
  %425 = load i32* %whilem_c2358, align 4, !tbaa !3
  store i32 %425, i32* %whilem_c2359, align 4, !tbaa !3
  %426 = load i32** %last_closep2506, align 8, !tbaa !0
  br label %if.end2364

if.end2364:                                       ; preds = %if.then2350, %if.then2357
  %storemerge3670 = phi i32* [ %426, %if.then2357 ], [ %fake2353, %if.then2350 ]
  store i32* %storemerge3670, i32** %last_closep2361, align 8, !tbaa !0
  %and2365 = and i32 %flags.addr.03601, 6144
  %tobool2366 = icmp eq i32 %and2365, 0
  br i1 %tobool2366, label %if.end2378, label %land.lhs.true2367

land.lhs.true2367:                                ; preds = %if.end2364
  %427 = load i8* %flags2332, align 1, !tbaa !1
  %tobool2369 = icmp eq i8 %427, 0
  br i1 %tobool2369, label %land.lhs.true2370, label %if.end2378

land.lhs.true2370:                                ; preds = %land.lhs.true2367
  %428 = load i8* %type168, align 1, !tbaa !1
  %cmp2373 = icmp eq i8 %428, 50
  br i1 %cmp2373, label %if.then2375, label %if.end2378

if.then2375:                                      ; preds = %land.lhs.true2370
  store i64 0, i64* %13, align 8
  store i8 17, i8* %type.i3502, align 1, !tbaa !1
  store i32 0, i32* %14, align 8
  call void @llvm.memset.p0i8.i64(i8* %15, i8 -1, i64 32, i32 8, i1 false) #3
  %429 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i.i3505 = and i32 %429, 2048
  %cmp.i.i3506 = icmp eq i32 %and.i.i3505, 0
  %..i.i3507 = select i1 %cmp.i.i3506, i8 80, i8 81
  store i8 %..i.i3507, i8* %12, align 8, !tbaa !1
  store %struct.regnode_charclass_class* %intrnl, %struct.regnode_charclass_class** %start_class2376, align 8, !tbaa !0
  br label %if.end2378

if.end2378:                                       ; preds = %land.lhs.true2367, %if.end2364, %if.then2375, %land.lhs.true2370
  %f2354.0 = phi i32 [ 0, %land.lhs.true2367 ], [ 2048, %if.then2375 ], [ 0, %land.lhs.true2370 ], [ 0, %if.end2364 ]
  %and2379 = and i32 %flags.addr.03601, 8192
  %430 = or i32 %f2354.0, %and2379
  %add.ptr2386 = getelementptr inbounds %struct.regnode* %52, i64 2
  store %struct.regnode* %add.ptr2386, %struct.regnode** %nscan, align 8, !tbaa !0
  %call2387 = call fastcc i32 @S_study_chunk(%struct.RExC_state_t* %pRExC_state, %struct.regnode** %nscan, i32* %deltanext2351, %struct.regnode* %last, %struct.scan_data_t* %data_fake, i32 %430) #9
  %431 = load %struct.regnode** %scan, align 8, !tbaa !0
  %flags2388 = getelementptr inbounds %struct.regnode* %431, i64 0, i32 0
  %432 = load i8* %flags2388, align 1, !tbaa !1
  %tobool2389 = icmp eq i8 %432, 0
  br i1 %tobool2389, label %if.end2433, label %if.then2390

if.then2390:                                      ; preds = %if.end2378
  %433 = load i32* %deltanext2351, align 4, !tbaa !3
  %tobool2391 = icmp eq i32 %433, 0
  br i1 %tobool2391, label %if.else2409, label %if.then2392

if.then2392:                                      ; preds = %if.then2390
  %434 = load %struct.regnode** %emit2413, align 8, !tbaa !0
  %cmp2394 = icmp eq %struct.regnode* %434, @PL_regdummy
  br i1 %cmp2394, label %if.end2398, label %if.then2396

if.then2396:                                      ; preds = %if.then2392
  %435 = load %struct.regexp** %rx2417, align 8, !tbaa !0
  %436 = bitcast %struct.regexp* %435 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %436) #8
  br label %if.end2398

if.end2398:                                       ; preds = %if.then2396, %if.then2392
  %437 = load i8** %parse2420, align 8, !tbaa !0
  %438 = load i8** %precomp2421, align 8, !tbaa !0
  %sub.ptr.lhs.cast2402 = ptrtoint i8* %437 to i64
  %sub.ptr.rhs.cast2403 = ptrtoint i8* %438 to i64
  %sub.ptr.sub2404 = sub i64 %sub.ptr.lhs.cast2402, %sub.ptr.rhs.cast2403
  %conv2405 = trunc i64 %sub.ptr.sub2404 to i32
  %add.ptr2408 = getelementptr inbounds i8* %438, i64 %sub.ptr.sub2404
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str99, i64 0, i64 0), i32 %conv2405, i8* %438, i8* %add.ptr2408) #8
  br label %if.end2430

if.else2409:                                      ; preds = %if.then2390
  %cmp2410 = icmp sgt i32 %call2387, 255
  br i1 %cmp2410, label %if.then2412, label %if.end2430

if.then2412:                                      ; preds = %if.else2409
  %439 = load %struct.regnode** %emit2413, align 8, !tbaa !0
  %cmp2414 = icmp eq %struct.regnode* %439, @PL_regdummy
  br i1 %cmp2414, label %if.end2418, label %if.then2416

if.then2416:                                      ; preds = %if.then2412
  %440 = load %struct.regexp** %rx2417, align 8, !tbaa !0
  %441 = bitcast %struct.regexp* %440 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %441) #8
  br label %if.end2418

if.end2418:                                       ; preds = %if.then2416, %if.then2412
  %442 = load i8** %parse2420, align 8, !tbaa !0
  %443 = load i8** %precomp2421, align 8, !tbaa !0
  %sub.ptr.lhs.cast2422 = ptrtoint i8* %442 to i64
  %sub.ptr.rhs.cast2423 = ptrtoint i8* %443 to i64
  %sub.ptr.sub2424 = sub i64 %sub.ptr.lhs.cast2422, %sub.ptr.rhs.cast2423
  %conv2425 = trunc i64 %sub.ptr.sub2424 to i32
  %add.ptr2428 = getelementptr inbounds i8* %443, i64 %sub.ptr.sub2424
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([43 x i8]* @.str100, i64 0, i64 0), i64 255, i32 %conv2425, i8* %443, i8* %add.ptr2428) #9
  br label %if.end2430

if.end2430:                                       ; preds = %if.else2409, %if.end2418, %if.end2398
  %conv2431 = trunc i32 %call2387 to i8
  %444 = load %struct.regnode** %scan, align 8, !tbaa !0
  %flags2432 = getelementptr inbounds %struct.regnode* %444, i64 0, i32 0
  store i8 %conv2431, i8* %flags2432, align 1, !tbaa !1
  br label %if.end2433

if.end2433:                                       ; preds = %if.end2378, %if.end2430
  br i1 %tobool2356, label %land.lhs.true2443, label %if.end2455

land.lhs.true2443:                                ; preds = %if.end2433
  %445 = bitcast i32* %flags2355 to i64*
  %446 = load i64* %445, align 8
  %447 = trunc i64 %446 to i32
  %and2437 = and i32 %447, 384
  %not.tobool2438 = icmp ne i32 %and2437, 0
  %inc2440 = zext i1 %not.tobool2438 to i32
  %pars.0.inc2440 = add nsw i32 %inc2440, %pars.03598
  %and2445 = and i32 %447, 512
  %tobool2446 = icmp eq i32 %and2445, 0
  %448 = lshr i64 %446, 32
  %449 = trunc i64 %448 to i32
  br i1 %tobool2446, label %if.then2452, label %if.then2447

if.then2447:                                      ; preds = %land.lhs.true2443
  %450 = load i32* %flags2322, align 4, !tbaa !3
  %or2449 = or i32 %450, 512
  store i32 %or2449, i32* %flags2322, align 4, !tbaa !3
  br label %if.then2452

if.then2452:                                      ; preds = %if.then2447, %land.lhs.true2443
  store i32 %449, i32* %whilem_c2358, align 4, !tbaa !3
  br label %if.end2455

if.end2455:                                       ; preds = %if.end2433, %if.then2452
  %pars.73517 = phi i32 [ %pars.0.inc2440, %if.then2452 ], [ %pars.03598, %if.end2433 ]
  %tobool2457 = icmp eq i32 %f2354.0, 0
  br i1 %tobool2457, label %if.end2552, label %if.then2458

if.then2458:                                      ; preds = %if.end2455
  %451 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags2460 = getelementptr inbounds %struct.regnode_charclass_class* %451, i64 0, i32 0
  %452 = load i8* %flags2460, align 1, !tbaa !1
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %451, %struct.regnode_charclass_class* %intrnl) #9
  %and2462 = and i8 %452, 16
  %tobool2464 = icmp eq i8 %and2462, 0
  br i1 %tobool2464, label %if.end2552, label %if.then2465

if.then2465:                                      ; preds = %if.then2458
  %453 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %flags2467 = getelementptr inbounds %struct.regnode_charclass_class* %453, i64 0, i32 0
  %454 = load i8* %flags2467, align 1, !tbaa !1
  %or2469 = or i8 %454, 16
  store i8 %or2469, i8* %flags2467, align 1, !tbaa !1
  br label %if.end2552

if.else2473:                                      ; preds = %land.lhs.true2340, %lor.lhs.false2337, %if.else2324
  switch i8 %130, label %if.end2552 [
    i8 45, label %if.then2478
    i8 46, label %if.then2485
    i8 57, label %if.then2513
    i8 59, label %land.lhs.true2524
  ]

if.then2478:                                      ; preds = %if.else2473
  %inc2479 = add nsw i32 %pars.03598, 1
  br label %if.end2552

if.then2485:                                      ; preds = %if.else2473
  %arg12486 = getelementptr inbounds %struct.regnode* %52, i64 1
  %455 = bitcast %struct.regnode* %arg12486 to i32*
  %456 = load i32* %455, align 4, !tbaa !3
  %cmp2487 = icmp eq i32 %456, %is_par.03594
  br i1 %cmp2487, label %if.then2489, label %if.end2502

if.then2489:                                      ; preds = %if.then2485
  %call2490 = call %struct.regnode* @Perl_regnext(%struct.regnode* %52) #9
  %tobool2491 = icmp eq %struct.regnode* %call2490, null
  br i1 %tobool2491, label %if.end2502, label %land.lhs.true2492

land.lhs.true2492:                                ; preds = %if.then2489
  %type2493 = getelementptr inbounds %struct.regnode* %call2490, i64 0, i32 1
  %457 = load i8* %type2493, align 1, !tbaa !1
  %cmp2495 = icmp ne i8 %457, 44
  %cmp2498 = icmp ult %struct.regnode* %call2490, %last
  %or.cond3464 = and i1 %cmp2495, %cmp2498
  %.is_par.03469 = select i1 %or.cond3464, i32 0, i32 %is_par.03594
  br label %if.end2502

if.end2502:                                       ; preds = %land.lhs.true2492, %if.then2489, %if.then2485
  %is_par.1 = phi i32 [ %is_par.03594, %if.then2489 ], [ %is_par.03594, %if.then2485 ], [ %.is_par.03469, %land.lhs.true2492 ]
  br i1 %tobool647, label %if.end2552, label %if.then2504

if.then2504:                                      ; preds = %if.end2502
  %458 = load i32** %last_closep2506, align 8, !tbaa !0
  store i32 %456, i32* %458, align 4, !tbaa !3
  br label %if.end2552

if.then2513:                                      ; preds = %if.else2473
  br i1 %tobool647, label %if.end2552, label %if.then2515

if.then2515:                                      ; preds = %if.then2513
  %459 = load i32* %flags2322, align 4, !tbaa !3
  %or2517 = or i32 %459, 512
  store i32 %or2517, i32* %flags2322, align 4, !tbaa !3
  br label %if.end2552

land.lhs.true2524:                                ; preds = %if.else2473
  %flags2525 = getelementptr inbounds %struct.regnode* %52, i64 0, i32 0
  %460 = load i8* %flags2525, align 1, !tbaa !1
  %cmp2527 = icmp eq i8 %460, 2
  br i1 %cmp2527, label %if.then2529, label %if.end2552

if.then2529:                                      ; preds = %land.lhs.true2524
  %and2530 = and i32 %flags.addr.03601, 1024
  %tobool2531 = icmp eq i32 %and2530, 0
  br i1 %tobool2531, label %if.end2535, label %if.then2532

if.then2532:                                      ; preds = %if.then2529
  call fastcc void @S_scan_commit(%struct.RExC_state_t* %pRExC_state, %struct.scan_data_t* %data) #9
  store %struct.sv** %longest_float2533, %struct.sv*** %longest2534, align 8, !tbaa !0
  br label %if.end2535

if.end2535:                                       ; preds = %if.then2529, %if.then2532
  %and2536 = and i32 %flags.addr.03601, 4096
  %tobool2537 = icmp eq i32 %and2536, 0
  br i1 %tobool2537, label %if.end2540, label %if.then2538

if.then2538:                                      ; preds = %if.end2535
  %461 = load %struct.regnode_charclass_class** %start_class742, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds %struct.regnode_charclass_class* %461, i64 0, i32 5, i64 0
  %462 = bitcast i8* %arraydecay.i to i32*
  store i32 0, i32* %462, align 1
  %463 = getelementptr inbounds %struct.regnode_charclass_class* %461, i64 0, i32 4, i64 0
  call void @llvm.memset.p0i8.i64(i8* %463, i8 -1, i64 32, i32 4, i1 false) #3
  %flags.i = getelementptr inbounds %struct.regnode_charclass_class* %461, i64 0, i32 0
  store i8 80, i8* %flags.i, align 1, !tbaa !1
  %464 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i3482 = and i32 %464, 2048
  %cmp.i3483 = icmp eq i32 %and.i3482, 0
  %..i = select i1 %cmp.i3483, i8 80, i8 81
  store i8 %..i, i8* %flags.i, align 1, !tbaa !1
  br label %if.end2540

if.end2540:                                       ; preds = %if.end2535, %if.then2538
  %and2541 = and i32 %flags.addr.03601, -6145
  br label %if.end2552

if.end2552:                                       ; preds = %if.then2458, %if.end2455, %if.end1491, %cleanup1477.thread3512, %if.else2473, %if.then2465, %if.end2502, %if.then2513, %if.end612, %if.then2316, %if.then2478, %if.then2515, %if.end2540, %land.lhs.true2524, %if.then2504, %if.end2303, %if.end771
  %is_par.2 = phi i32 [ %is_par.03594, %if.end612 ], [ %is_par.03594, %if.end771 ], [ %is_par.03594, %if.end2303 ], [ %is_par.03594, %if.then2316 ], [ %is_par.03594, %if.then2478 ], [ %is_par.1, %if.then2504 ], [ %is_par.1, %if.end2502 ], [ %is_par.03594, %if.then2515 ], [ %is_par.03594, %if.then2513 ], [ %is_par.03594, %if.end2540 ], [ %is_par.03594, %land.lhs.true2524 ], [ %is_par.03594, %if.then2465 ], [ %is_par.03594, %if.else2473 ], [ %is_par.03594, %cleanup1477.thread3512 ], [ %is_par.03594, %if.end1491 ], [ %is_par.03594, %if.end2455 ], [ %is_par.03594, %if.then2458 ]
  %is_inf_internal.6 = phi i32 [ %is_inf_internal.03595, %if.end612 ], [ %is_inf_internal.03595, %if.end771 ], [ %is_inf_internal.03595, %if.end2303 ], [ %is_inf_internal.03595, %if.then2316 ], [ %is_inf_internal.03595, %if.then2478 ], [ %is_inf_internal.03595, %if.then2504 ], [ %is_inf_internal.03595, %if.end2502 ], [ %is_inf_internal.03595, %if.then2515 ], [ %is_inf_internal.03595, %if.then2513 ], [ 1, %if.end2540 ], [ %is_inf_internal.03595, %land.lhs.true2524 ], [ %is_inf_internal.03595, %if.then2465 ], [ %is_inf_internal.03595, %if.else2473 ], [ 1, %cleanup1477.thread3512 ], [ %is_inf_internal.03595, %if.end1491 ], [ %is_inf_internal.03595, %if.end2455 ], [ %is_inf_internal.03595, %if.then2458 ]
  %is_inf.6 = phi i32 [ %is_inf.03596, %if.end612 ], [ %is_inf.03596, %if.end771 ], [ %is_inf.03596, %if.end2303 ], [ %is_inf.03596, %if.then2316 ], [ %is_inf.03596, %if.then2478 ], [ %is_inf.03596, %if.then2504 ], [ %is_inf.03596, %if.end2502 ], [ %is_inf.03596, %if.then2515 ], [ %is_inf.03596, %if.then2513 ], [ 1, %if.end2540 ], [ %is_inf.03596, %land.lhs.true2524 ], [ %is_inf.03596, %if.then2465 ], [ %is_inf.03596, %if.else2473 ], [ 1, %cleanup1477.thread3512 ], [ %is_inf.03596, %if.end1491 ], [ %is_inf.03596, %if.end2455 ], [ %is_inf.03596, %if.then2458 ]
  %pars.8 = phi i32 [ %pars.03598, %if.end612 ], [ %pars.03598, %if.end771 ], [ %pars.03598, %if.end2303 ], [ %pars.03598, %if.then2316 ], [ %inc2479, %if.then2478 ], [ %pars.03598, %if.then2504 ], [ %pars.03598, %if.end2502 ], [ %pars.03598, %if.then2515 ], [ %pars.03598, %if.then2513 ], [ %pars.03598, %if.end2540 ], [ %pars.03598, %land.lhs.true2524 ], [ %pars.73517, %if.then2465 ], [ %pars.03598, %if.else2473 ], [ %pars.03598, %cleanup1477.thread3512 ], [ %pars.03598, %if.end1491 ], [ %pars.73517, %if.end2455 ], [ %pars.73517, %if.then2458 ]
  %min.8 = phi i32 [ %add436, %if.end612 ], [ %add646, %if.end771 ], [ %inc1492, %if.end2303 ], [ %min.3, %if.then2316 ], [ %min.3, %if.then2478 ], [ %min.3, %if.then2504 ], [ %min.3, %if.end2502 ], [ %min.3, %if.then2515 ], [ %min.3, %if.then2513 ], [ %min.3, %if.end2540 ], [ %min.3, %land.lhs.true2524 ], [ %min.3, %if.then2465 ], [ %min.3, %if.else2473 ], [ %min.3, %cleanup1477.thread3512 ], [ %inc1492, %if.end1491 ], [ %min.3, %if.end2455 ], [ %min.3, %if.then2458 ]
  %flags.addr.5 = phi i32 [ %and613, %if.end612 ], [ %and772, %if.end771 ], [ %and2304, %if.end2303 ], [ %flags.addr.03601, %if.then2316 ], [ %flags.addr.03601, %if.then2478 ], [ %flags.addr.03601, %if.then2504 ], [ %flags.addr.03601, %if.end2502 ], [ %flags.addr.03601, %if.then2515 ], [ %flags.addr.03601, %if.then2513 ], [ %and2541, %if.end2540 ], [ %flags.addr.03601, %land.lhs.true2524 ], [ %flags.addr.03601, %if.then2465 ], [ %flags.addr.03601, %if.else2473 ], [ %and1476, %cleanup1477.thread3512 ], [ %flags.addr.03601, %if.end1491 ], [ %flags.addr.03601, %if.end2455 ], [ %flags.addr.03601, %if.then2458 ]
  %465 = load %struct.regnode** %scan, align 8, !tbaa !0
  %call2553 = call %struct.regnode* @Perl_regnext(%struct.regnode* %465) #9
  store %struct.regnode* %call2553, %struct.regnode** %scan, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %optimize_curly_tail, %if.else381, %if.then374, %while.cond1442.preheader, %land.rhs1450, %while.body1456, %if.end2552, %if.then405, %if.else408, %if.else389, %if.then386, %if.then377
  %is_par.0.be = phi i32 [ %is_par.03594, %if.then405 ], [ %is_par.03594, %if.else408 ], [ %is_par.2, %if.end2552 ], [ %is_par.03594, %if.else389 ], [ %is_par.03594, %if.then386 ], [ %is_par.03594, %if.then377 ], [ %is_par.03594, %while.body1456 ], [ %is_par.03594, %land.rhs1450 ], [ %is_par.03594, %while.cond1442.preheader ], [ %is_par.03594, %if.then374 ], [ %is_par.03594, %if.else381 ], [ %is_par.03594, %optimize_curly_tail ]
  %is_inf_internal.0.be = phi i32 [ %is_inf_internal.03595, %if.then405 ], [ %is_inf_internal.03595, %if.else408 ], [ %is_inf_internal.6, %if.end2552 ], [ %is_inf_internal.3, %if.else389 ], [ %is_inf_internal.3, %if.then386 ], [ %is_inf_internal.3, %if.then377 ], [ %is_inf_internal.4, %while.body1456 ], [ %is_inf_internal.4, %land.rhs1450 ], [ %is_inf_internal.4, %while.cond1442.preheader ], [ %is_inf_internal.3, %if.then374 ], [ %is_inf_internal.3, %if.else381 ], [ %is_inf_internal.4, %optimize_curly_tail ]
  %is_inf.0.be = phi i32 [ %is_inf.03596, %if.then405 ], [ %is_inf.03596, %if.else408 ], [ %is_inf.6, %if.end2552 ], [ %is_inf.3, %if.else389 ], [ %is_inf.3, %if.then386 ], [ %is_inf.3, %if.then377 ], [ %is_inf.4, %while.body1456 ], [ %is_inf.4, %land.rhs1450 ], [ %is_inf.4, %while.cond1442.preheader ], [ %is_inf.3, %if.then374 ], [ %is_inf.3, %if.else381 ], [ %is_inf.4, %optimize_curly_tail ]
  %delta.0.be = phi i32 [ %delta.03597, %if.then405 ], [ %delta.03597, %if.else408 ], [ %delta.03597, %if.end2552 ], [ %add371, %if.else389 ], [ %add371, %if.then386 ], [ %add371, %if.then377 ], [ %delta.1, %while.body1456 ], [ %delta.1, %land.rhs1450 ], [ %delta.1, %while.cond1442.preheader ], [ %add371, %if.then374 ], [ %add371, %if.else381 ], [ %delta.1, %optimize_curly_tail ]
  %pars.0.be = phi i32 [ %pars.03598, %if.then405 ], [ %pars.03598, %if.else408 ], [ %pars.8, %if.end2552 ], [ %pars.3, %if.else389 ], [ %pars.3, %if.then386 ], [ %pars.3, %if.then377 ], [ %pars.5, %while.body1456 ], [ %pars.5, %land.rhs1450 ], [ %pars.5, %while.cond1442.preheader ], [ %pars.3, %if.then374 ], [ %pars.3, %if.else381 ], [ %pars.5, %optimize_curly_tail ]
  %min.0.be = phi i32 [ %min.3, %if.then405 ], [ %min.3, %if.else408 ], [ %min.8, %if.end2552 ], [ %add369, %if.else389 ], [ %add369, %if.then386 ], [ %add369, %if.then377 ], [ %min.6, %while.body1456 ], [ %min.6, %land.rhs1450 ], [ %min.6, %while.cond1442.preheader ], [ %add369, %if.then374 ], [ %add369, %if.else381 ], [ %min.6, %optimize_curly_tail ]
  %flags.addr.0.be = phi i32 [ %flags.addr.03601, %if.then405 ], [ %flags.addr.03601, %if.else408 ], [ %flags.addr.5, %if.end2552 ], [ %or393, %if.else389 ], [ %and388, %if.then386 ], [ %and379, %if.then377 ], [ %flags.addr.3, %while.body1456 ], [ %flags.addr.3, %land.rhs1450 ], [ %flags.addr.3, %while.cond1442.preheader ], [ %flags.addr.03601, %if.then374 ], [ %flags.addr.03601, %if.else381 ], [ %flags.addr.3, %optimize_curly_tail ]
  %466 = load %struct.regnode** %scan, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.regnode* %466, null
  br i1 %tobool5, label %finish, label %while.cond.backedge.land.lhs.true_crit_edge

while.cond.backedge.land.lhs.true_crit_edge:      ; preds = %while.cond.backedge
  %type6.phi.trans.insert = getelementptr inbounds %struct.regnode* %466, i64 0, i32 1
  %.pre3661 = load i8* %type6.phi.trans.insert, align 1, !tbaa !1
  br label %land.lhs.true

finish:                                           ; preds = %cond.end, %land.lhs.true, %while.cond.backedge, %cleanup1477
  %467 = phi i8* [ %10, %cleanup1477 ], [ %9, %cond.end ], [ %10, %land.lhs.true ], [ %10, %while.cond.backedge ]
  %468 = phi i8* [ %11, %cleanup1477 ], [ %8, %cond.end ], [ %11, %land.lhs.true ], [ %11, %while.cond.backedge ]
  %469 = phi %struct.regnode* [ %add.ptr787, %cleanup1477 ], [ null, %cond.end ], [ %.pre.pre, %land.lhs.true ], [ null, %while.cond.backedge ]
  %flags.addr.03590 = phi i32 [ %flags.addr.03601, %cleanup1477 ], [ %flags, %cond.end ], [ %flags.addr.03601, %land.lhs.true ], [ %flags.addr.0.be, %while.cond.backedge ]
  %pars.03587 = phi i32 [ %pars.03598, %cleanup1477 ], [ 0, %cond.end ], [ %pars.03598, %land.lhs.true ], [ %pars.0.be, %while.cond.backedge ]
  %delta.03585 = phi i32 [ %delta.03597, %cleanup1477 ], [ 0, %cond.end ], [ %delta.03597, %land.lhs.true ], [ %delta.0.be, %while.cond.backedge ]
  %is_inf.03583 = phi i32 [ %is_inf.03596, %cleanup1477 ], [ %land.ext, %cond.end ], [ %is_inf.03596, %land.lhs.true ], [ %is_inf.0.be, %while.cond.backedge ]
  %is_inf_internal.03581 = phi i32 [ %is_inf_internal.03595, %cleanup1477 ], [ 0, %cond.end ], [ %is_inf_internal.03595, %land.lhs.true ], [ %is_inf_internal.0.be, %while.cond.backedge ]
  %is_par.03579 = phi i32 [ %is_par.03594, %cleanup1477 ], [ 0, %cond.end ], [ %is_par.03594, %land.lhs.true ], [ %is_par.0.be, %while.cond.backedge ]
  %min.9 = phi i32 [ %min.3, %cleanup1477 ], [ 0, %cond.end ], [ %min.03600, %land.lhs.true ], [ %min.0.be, %while.cond.backedge ]
  store %struct.regnode* %469, %struct.regnode** %scanp, align 8, !tbaa !0
  %tobool2555 = icmp ne i32 %is_inf_internal.03581, 0
  %cond2559 = select i1 %tobool2555, i32 2147483647, i32 %delta.03585
  store i32 %cond2559, i32* %deltap, align 4, !tbaa !3
  %and2560 = and i32 %flags.addr.03590, 1024
  %tobool2561 = icmp eq i32 %and2560, 0
  %tobool2563 = icmp eq i32 %is_inf.03583, 0
  %or.cond3465 = or i1 %tobool2561, %tobool2563
  br i1 %or.cond3465, label %if.end2568, label %if.then2564

if.then2564:                                      ; preds = %finish
  %pos_min2565 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 2
  %470 = load i32* %pos_min2565, align 4, !tbaa !3
  %sub2566 = sub nsw i32 2147483647, %470
  %pos_delta2567 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 3
  store i32 %sub2566, i32* %pos_delta2567, align 4, !tbaa !3
  br label %if.end2568

if.end2568:                                       ; preds = %finish, %if.then2564
  %tobool25733519 = icmp ne i32 %is_par.03579, 0
  %not.cmp2569 = icmp slt i32 %is_par.03579, 256
  %tobool2573 = and i1 %tobool25733519, %not.cmp2569
  %cmp2575 = icmp eq i32 %pars.03587, 1
  %or.cond3466 = and i1 %tobool2573, %cmp2575
  %or.cond3466.not = xor i1 %or.cond3466, true
  %tobool2578 = icmp eq %struct.scan_data_t* %data, null
  %or.cond3467 = or i1 %tobool2578, %or.cond3466.not
  br i1 %or.cond3467, label %if.else2584, label %if.then2579

if.then2579:                                      ; preds = %if.end2568
  %flags2580 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %471 = load i32* %flags2580, align 4, !tbaa !3
  %or2581 = and i32 %471, -385
  %and2583 = or i32 %or2581, 256
  store i32 %and2583, i32* %flags2580, align 4, !tbaa !3
  br label %if.end2594

if.else2584:                                      ; preds = %if.end2568
  %tobool2585 = icmp eq i32 %pars.03587, 0
  %or.cond3468 = or i1 %tobool2585, %tobool2578
  br i1 %or.cond3468, label %if.end2594, label %if.then2588

if.then2588:                                      ; preds = %if.else2584
  %flags2589 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %472 = load i32* %flags2589, align 4, !tbaa !3
  %or2590 = and i32 %472, -385
  %and2592 = or i32 %or2590, 128
  store i32 %and2592, i32* %flags2589, align 4, !tbaa !3
  br label %if.end2594

if.end2594:                                       ; preds = %if.else2584, %if.then2588, %if.then2579
  %and2595 = and i32 %flags.addr.03590, 4096
  %tobool2596 = icmp eq i32 %and2595, 0
  br i1 %tobool2596, label %cleanup2600, label %if.then2597

if.then2597:                                      ; preds = %if.end2594
  %start_class2598 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 17
  %473 = load %struct.regnode_charclass_class** %start_class2598, align 8, !tbaa !0
  call fastcc void @S_cl_and(%struct.regnode_charclass_class* %473, %struct.regnode_charclass_class* %and_with) #9
  br label %cleanup2600

cleanup2600:                                      ; preds = %if.then2597, %if.end2594
  call void @llvm.lifetime.end(i64 44, i8* %467) #3
  call void @llvm.lifetime.end(i64 104, i8* %468) #3
  ret i32 %min.9
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_scan_commit(%struct.RExC_state_t* nocapture %pRExC_state, %struct.scan_data_t* nocapture %data) #0 {
entry:
  %utf8 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 17
  %0 = load i32* %utf8, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  %last_found = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 4
  %1 = load %struct.sv** %last_found, align 8, !tbaa !0
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !5
  %longest143 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 8
  %5 = load %struct.sv*** %longest143, align 8, !tbaa !0
  %6 = load %struct.sv** %5, align 8, !tbaa !0
  br label %cond.false6

cond.end:                                         ; preds = %entry
  %call = tail call i64 @Perl_sv_len_utf8(%struct.sv* %1) #8
  %.pre = load i32* %utf8, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pre, 0
  %longest = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 8
  %7 = load %struct.sv*** %longest, align 8, !tbaa !0
  %8 = load %struct.sv** %7, align 8, !tbaa !0
  br i1 %phitmp, label %cond.false6, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  %call5 = tail call i64 @Perl_sv_len_utf8(%struct.sv* %8) #8
  br label %cond.end10

cond.false6:                                      ; preds = %cond.end.thread, %cond.end
  %9 = phi %struct.sv* [ %6, %cond.end.thread ], [ %8, %cond.end ]
  %longest147 = phi %struct.sv*** [ %longest143, %cond.end.thread ], [ %longest, %cond.end ]
  %cond145 = phi i64 [ %4, %cond.end.thread ], [ %call, %cond.end ]
  %sv_any8 = getelementptr inbounds %struct.sv* %9, i64 0, i32 0
  %10 = load i8** %sv_any8, align 8, !tbaa !0
  %xpv_cur9 = getelementptr inbounds i8* %10, i64 8
  %11 = bitcast i8* %xpv_cur9 to i64*
  %12 = load i64* %11, align 8, !tbaa !5
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %cond.true4
  %longest146 = phi %struct.sv*** [ %longest, %cond.true4 ], [ %longest147, %cond.false6 ]
  %cond144 = phi i64 [ %call, %cond.true4 ], [ %cond145, %cond.false6 ]
  %cond11 = phi i64 [ %call5, %cond.true4 ], [ %12, %cond.false6 ]
  %cmp12 = icmp ult i64 %cond144, %cond11
  br i1 %cmp12, label %if.end78, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end10
  %cmp13 = icmp ugt i64 %cond144, %cond11
  br i1 %cmp13, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %13 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %13, 3
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end78, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.sv*** %longest146, align 8, !tbaa !0
  %15 = load %struct.sv** %14, align 8, !tbaa !0
  %16 = load %struct.sv** %last_found, align 8, !tbaa !0
  %cmp16 = icmp eq %struct.sv* %15, %16
  br i1 %cmp16, label %if.end26, label %if.then17

if.then17:                                        ; preds = %if.then
  tail call void @Perl_sv_setsv_flags(%struct.sv* %15, %struct.sv* %16, i32 2) #8
  %17 = load %struct.sv*** %longest146, align 8, !tbaa !0
  %18 = load %struct.sv** %17, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %18, i64 0, i32 2
  %19 = load i32* %sv_flags, align 4, !tbaa !3
  %and21 = and i32 %19, 16384
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.then17
  %call25 = tail call i32 @Perl_mg_set(%struct.sv* %18) #8
  %.pre141 = load %struct.sv*** %longest146, align 8, !tbaa !0
  %.pre142 = load %struct.sv** %.pre141, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.then, %if.then23
  %20 = phi %struct.sv* [ %18, %if.then17 ], [ %15, %if.then ], [ %.pre142, %if.then23 ]
  %longest_fixed = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 9
  %21 = load %struct.sv** %longest_fixed, align 8, !tbaa !0
  %cmp28 = icmp eq %struct.sv* %20, %21
  %tobool30 = icmp ne i64 %cond144, 0
  %last_start_min = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 6
  %pos_min = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 2
  %cond34.in = select i1 %tobool30, i32* %last_start_min, i32* %pos_min
  %cond34 = load i32* %cond34.in, align 4
  br i1 %cmp28, label %cond.end33, label %cond.end51

cond.end33:                                       ; preds = %if.end26
  %offset_fixed = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 10
  store i32 %cond34, i32* %offset_fixed, align 4, !tbaa !3
  %flags35 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %22 = load i32* %flags35, align 4, !tbaa !3
  %and36 = and i32 %22, 3
  %tobool37 = icmp eq i32 %and36, 0
  br i1 %tobool37, label %if.else, label %if.then38

if.then38:                                        ; preds = %cond.end33
  %shl = shl nuw nsw i32 %and36, 2
  %or = or i32 %shl, %22
  store i32 %or, i32* %flags35, align 4, !tbaa !3
  br label %if.end78

if.else:                                          ; preds = %cond.end33
  %and43 = and i32 %22, -13
  store i32 %and43, i32* %flags35, align 4, !tbaa !3
  br label %if.end78

cond.end51:                                       ; preds = %if.end26
  %offset_float_min = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 12
  store i32 %cond34, i32* %offset_float_min, align 4, !tbaa !3
  br i1 %tobool30, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end51
  %last_start_max = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 7
  %23 = load i32* %last_start_max, align 4, !tbaa !3
  br label %cond.end57

cond.false55:                                     ; preds = %cond.end51
  %24 = load i32* %pos_min, align 4, !tbaa !3
  %pos_delta = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 3
  %25 = load i32* %pos_delta, align 4, !tbaa !3
  %add = add nsw i32 %25, %24
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true54
  %cond58 = phi i32 [ %23, %cond.true54 ], [ %add, %cond.false55 ]
  %offset_float_max = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 13
  %cmp60 = icmp slt i32 %cond58, 0
  %.cond58 = select i1 %cmp60, i32 2147483647, i32 %cond58
  store i32 %.cond58, i32* %offset_float_max, align 4, !tbaa !3
  %flags64 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %26 = load i32* %flags64, align 4, !tbaa !3
  %and65 = and i32 %26, 3
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.else73, label %if.then67

if.then67:                                        ; preds = %cond.end57
  %shl70 = shl nuw nsw i32 %and65, 4
  %or72 = or i32 %shl70, %26
  store i32 %or72, i32* %flags64, align 4, !tbaa !3
  br label %if.end78

if.else73:                                        ; preds = %cond.end57
  %and75 = and i32 %26, -49
  store i32 %and75, i32* %flags64, align 4, !tbaa !3
  br label %if.end78

if.end78:                                         ; preds = %lor.lhs.false, %cond.end10, %if.else, %if.then38, %if.else73, %if.then67
  %27 = load %struct.sv** %last_found, align 8, !tbaa !0
  %sv_any80 = getelementptr inbounds %struct.sv* %27, i64 0, i32 0
  %28 = load i8** %sv_any80, align 8, !tbaa !0
  %xpv_cur81 = getelementptr inbounds i8* %28, i64 8
  %29 = bitcast i8* %xpv_cur81 to i64*
  store i64 0, i64* %29, align 8, !tbaa !5
  %sv_flags83 = getelementptr inbounds %struct.sv* %27, i64 0, i32 2
  %30 = load i32* %sv_flags83, align 4, !tbaa !3
  %and84 = and i32 %30, 536870912
  %tobool85 = icmp eq i32 %and84, 0
  %and88 = and i32 %30, 57344
  %tobool89 = icmp eq i32 %and88, 0
  %or.cond = or i1 %tobool85, %tobool89
  br i1 %or.cond, label %if.end100, label %cond.end93

cond.end93:                                       ; preds = %if.end78
  %call91 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %27, i32 119) #8
  %tobool95 = icmp eq %struct.magic* %call91, null
  br i1 %tobool95, label %if.end100, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %cond.end93
  %mg_len = getelementptr inbounds %struct.magic* %call91, i64 0, i32 7
  %31 = load i32* %mg_len, align 4, !tbaa !3
  %cmp97 = icmp sgt i32 %31, 0
  br i1 %cmp97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %land.lhs.true96
  store i32 0, i32* %mg_len, align 4, !tbaa !3
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true96, %cond.end93, %if.end78, %if.then98
  %last_end = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 5
  store i32 -1, i32* %last_end, align 4, !tbaa !3
  %flags101 = getelementptr inbounds %struct.scan_data_t* %data, i64 0, i32 14
  %32 = load i32* %flags101, align 4, !tbaa !3
  %and102 = and i32 %32, -4
  store i32 %and102, i32* %flags101, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_fbm_compile(%struct.sv*, i32) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @S_cl_is_anything(%struct.regnode_charclass_class* nocapture %cl) #4 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %value.036 = phi i32 [ 0, %entry ], [ %add14, %for.inc ]
  %shr31 = lshr i32 %value.036, 3
  %and = and i32 %shr31, 3
  %idxprom32 = zext i32 %and to i64
  %arrayidx = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 5, i64 %idxprom32
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  %and1 = and i32 %value.036, 6
  %shl = shl i32 1, %and1
  %and2 = and i32 %conv, %shl
  %tobool = icmp eq i32 %and2, 0
  br i1 %tobool, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %and10 = or i32 %and1, 1
  %shl11 = shl i32 1, %and10
  %and12 = and i32 %conv, %shl11
  %tobool13 = icmp eq i32 %and12, 0
  br i1 %tobool13, label %for.inc, label %return

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %add14 = add nsw i32 %value.036, 2
  %cmp = icmp slt i32 %add14, 33
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %flags = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 0
  %1 = load i8* %flags, align 1, !tbaa !1
  %and16 = and i8 %1, 64
  %tobool17 = icmp eq i8 %and16, 0
  br i1 %tobool17, label %return, label %if.end19

if.end19:                                         ; preds = %for.end
  %arraydecay = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 0
  %call = tail call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([33 x i8]* @.str95, i64 0, i64 0), i64 32) #8
  %tobool20 = icmp eq i32 %call, 0
  %. = zext i1 %tobool20 to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end19, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %., %if.end19 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @S_add_data(%struct.RExC_state_t* nocapture %pRExC_state, i32 %n, i8* nocapture %s) #0 {
entry:
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %0 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data = getelementptr inbounds %struct.regexp* %0, i64 0, i32 5
  %1 = load %struct.reg_data** %data, align 8, !tbaa !0
  %tobool = icmp eq %struct.reg_data* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.reg_data* %1 to i8*
  %count = getelementptr inbounds %struct.reg_data* %1, i64 0, i32 0
  %3 = load i32* %count, align 4, !tbaa !3
  %add = add i32 %n, -1
  %sub = add i32 %add, %3
  %conv = zext i32 %sub to i64
  %mul = shl nuw nsw i64 %conv, 3
  %add5 = add i64 %mul, 24
  %call = tail call i8* @Perl_safesysrealloc(i8* %2, i64 %add5) #8
  %4 = bitcast i8* %call to %struct.reg_data*
  %5 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data8 = getelementptr inbounds %struct.regexp* %5, i64 0, i32 5
  store %struct.reg_data* %4, %struct.reg_data** %data8, align 8, !tbaa !0
  %6 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data10 = getelementptr inbounds %struct.regexp* %6, i64 0, i32 5
  %7 = load %struct.reg_data** %data10, align 8, !tbaa !0
  %what = getelementptr inbounds %struct.reg_data* %7, i64 0, i32 1
  %8 = load i8** %what, align 8, !tbaa !0
  %count13 = getelementptr inbounds %struct.reg_data* %7, i64 0, i32 0
  %9 = load i32* %count13, align 4, !tbaa !3
  %add14 = add i32 %9, %n
  %conv15 = zext i32 %add14 to i64
  %call17 = tail call i8* @Perl_safesysrealloc(i8* %8, i64 %conv15) #8
  %10 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data19 = getelementptr inbounds %struct.regexp* %10, i64 0, i32 5
  %11 = load %struct.reg_data** %data19, align 8, !tbaa !0
  %what20 = getelementptr inbounds %struct.reg_data* %11, i64 0, i32 1
  store i8* %call17, i8** %what20, align 8, !tbaa !0
  %12 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data22 = getelementptr inbounds %struct.regexp* %12, i64 0, i32 5
  %13 = load %struct.reg_data** %data22, align 8, !tbaa !0
  %count23 = getelementptr inbounds %struct.reg_data* %13, i64 0, i32 0
  %14 = load i32* %count23, align 4, !tbaa !3
  %add24 = add i32 %14, %n
  store i32 %add24, i32* %count23, align 4, !tbaa !3
  %idx.ext48.pre = sext i32 %n to i64
  br label %if.end

if.else:                                          ; preds = %entry
  %sub25 = add nsw i32 %n, -1
  %conv26 = sext i32 %sub25 to i64
  %mul27 = shl nsw i64 %conv26, 3
  %add28 = add i64 %mul27, 24
  %call30 = tail call i8* @Perl_safesysmalloc(i64 %add28) #8
  %15 = bitcast i8* %call30 to %struct.reg_data*
  %16 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data32 = getelementptr inbounds %struct.regexp* %16, i64 0, i32 5
  store %struct.reg_data* %15, %struct.reg_data** %data32, align 8, !tbaa !0
  %conv33 = sext i32 %n to i64
  %call35 = tail call i8* @Perl_safesysmalloc(i64 %conv33) #8
  %17 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data37 = getelementptr inbounds %struct.regexp* %17, i64 0, i32 5
  %18 = load %struct.reg_data** %data37, align 8, !tbaa !0
  %what38 = getelementptr inbounds %struct.reg_data* %18, i64 0, i32 1
  store i8* %call35, i8** %what38, align 8, !tbaa !0
  %19 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data40 = getelementptr inbounds %struct.regexp* %19, i64 0, i32 5
  %20 = load %struct.reg_data** %data40, align 8, !tbaa !0
  %count41 = getelementptr inbounds %struct.reg_data* %20, i64 0, i32 0
  store i32 %n, i32* %count41, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %idx.ext48.pre-phi = phi i64 [ %conv33, %if.else ], [ %idx.ext48.pre, %if.then ]
  %21 = phi i32 [ %n, %if.else ], [ %add24, %if.then ]
  %22 = phi %struct.reg_data* [ %20, %if.else ], [ %13, %if.then ]
  %what44 = getelementptr inbounds %struct.reg_data* %22, i64 0, i32 1
  %23 = load i8** %what44, align 8, !tbaa !0
  %idx.ext = zext i32 %21 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext48.pre-phi
  %add.ptr49 = getelementptr inbounds i8* %23, i64 %add.ptr.sum
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr49, i8* %s, i64 %idx.ext48.pre-phi, i32 1, i1 false)
  %24 = load %struct.regexp** %rx, align 8, !tbaa !0
  %data53 = getelementptr inbounds %struct.regexp* %24, i64 0, i32 5
  %25 = load %struct.reg_data** %data53, align 8, !tbaa !0
  %count54 = getelementptr inbounds %struct.reg_data* %25, i64 0, i32 0
  %26 = load i32* %count54, align 4, !tbaa !3
  %sub55 = sub i32 %26, %n
  ret i32 %sub55
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_regdump(%struct.regexp* nocapture %r) #5 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_regprop(%struct.sv* nocapture %sv, %struct.regnode* nocapture %o) #5 {
entry:
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.sv* @Perl_re_intuit_string(%struct.regexp* nocapture %prog) #4 {
entry:
  %substrs = getelementptr inbounds %struct.regexp* %prog, i64 0, i32 3
  %0 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  %substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 2, i32 2
  %1 = load %struct.sv** %substr, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %0, i64 0, i32 0, i64 2, i32 3
  %2 = load %struct.sv** %utf8_substr, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.sv* [ %2, %cond.false ], [ %1, %entry ]
  ret %struct.sv* %cond
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pregfree(%struct.regexp* %r) #0 {
entry:
  %tobool = icmp eq %struct.regexp* %r, null
  br i1 %tobool, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.regexp* %r, i64 0, i32 9
  %0 = load i32* %refcnt, align 4, !tbaa !3
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %refcnt, align 4, !tbaa !3
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %precomp = getelementptr inbounds %struct.regexp* %r, i64 0, i32 4
  %1 = load i8** %precomp, align 8, !tbaa !0
  %tobool1 = icmp eq i8* %1, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @Perl_safesysfree(i8* %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %offsets = getelementptr inbounds %struct.regexp* %r, i64 0, i32 7
  %2 = load i32** %offsets, align 8, !tbaa !0
  %tobool5 = icmp eq i32* %2, null
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %3 = bitcast i32* %2 to i8*
  tail call void @Perl_safesysfree(i8* %3) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then6
  %reganch = getelementptr inbounds %struct.regexp* %r, i64 0, i32 15
  %4 = load i32* %reganch, align 4, !tbaa !3
  %and = and i32 %4, 262144
  %tobool9 = icmp eq i32 %and, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  %subbeg = getelementptr inbounds %struct.regexp* %r, i64 0, i32 6
  %5 = load i8** %subbeg, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %5) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then10
  %substrs = getelementptr inbounds %struct.regexp* %r, i64 0, i32 3
  %6 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.reg_substr_data* %6, null
  br i1 %tobool12, label %if.end55, label %if.then13

if.then13:                                        ; preds = %if.end11
  %substr = getelementptr inbounds %struct.reg_substr_data* %6, i64 0, i32 0, i64 0, i32 2
  %7 = load %struct.sv** %substr, align 8, !tbaa !0
  %tobool15 = icmp eq %struct.sv* %7, null
  br i1 %tobool15, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.then13
  tail call void @Perl_sv_free(%struct.sv* %7) #8
  %.pre = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.then16
  %8 = phi %struct.reg_substr_data* [ %6, %if.then13 ], [ %.pre, %if.then16 ]
  %utf8_substr = getelementptr inbounds %struct.reg_substr_data* %8, i64 0, i32 0, i64 0, i32 3
  %9 = load %struct.sv** %utf8_substr, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.sv* %9, null
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end21
  tail call void @Perl_sv_free(%struct.sv* %9) #8
  %.pre179 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.end21, %if.then26
  %10 = phi %struct.reg_substr_data* [ %8, %if.end21 ], [ %.pre179, %if.then26 ]
  %substr35 = getelementptr inbounds %struct.reg_substr_data* %10, i64 0, i32 0, i64 1, i32 2
  %11 = load %struct.sv** %substr35, align 8, !tbaa !0
  %tobool36 = icmp eq %struct.sv* %11, null
  br i1 %tobool36, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end31
  tail call void @Perl_sv_free(%struct.sv* %11) #8
  %.pre180 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.end31, %if.then37
  %12 = phi %struct.reg_substr_data* [ %10, %if.end31 ], [ %.pre180, %if.then37 ]
  %utf8_substr46 = getelementptr inbounds %struct.reg_substr_data* %12, i64 0, i32 0, i64 1, i32 3
  %13 = load %struct.sv** %utf8_substr46, align 8, !tbaa !0
  %tobool47 = icmp eq %struct.sv* %13, null
  br i1 %tobool47, label %if.end53, label %if.then48

if.then48:                                        ; preds = %if.end42
  tail call void @Perl_sv_free(%struct.sv* %13) #8
  %.pre181 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.end42, %if.then48
  %14 = phi %struct.reg_substr_data* [ %12, %if.end42 ], [ %.pre181, %if.then48 ]
  %15 = bitcast %struct.reg_substr_data* %14 to i8*
  tail call void @Perl_safesysfree(i8* %15) #8
  br label %if.end55

if.end55:                                         ; preds = %if.end11, %if.end53
  %data56 = getelementptr inbounds %struct.regexp* %r, i64 0, i32 5
  %16 = load %struct.reg_data** %data56, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.reg_data* %16, null
  br i1 %tobool57, label %if.end119, label %if.then58

if.then58:                                        ; preds = %if.end55
  %count = getelementptr inbounds %struct.reg_data* %16, i64 0, i32 0
  %17 = load i32* %count, align 4, !tbaa !3
  %cmp62166169 = icmp sgt i32 %17, 0
  br i1 %cmp62166169, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.then58, %while.cond.outer.backedge
  %dec61165171.in = phi i32 [ %dec61167, %while.cond.outer.backedge ], [ %17, %if.then58 ]
  %new_comppad.0.ph170 = phi %struct.av* [ %new_comppad.0.ph.be, %while.cond.outer.backedge ], [ null, %if.then58 ]
  %18 = sext i32 %dec61165171.in to i64
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %indvars.iv = phi i64 [ %18, %while.body.lr.ph ], [ %indvars.iv.next, %while.cond.backedge ]
  %dec61167.in = phi i32 [ %dec61165171.in, %while.body.lr.ph ], [ %dec61167, %while.cond.backedge ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec61167 = add nsw i32 %dec61167.in, -1
  %19 = load %struct.reg_data** %data56, align 8, !tbaa !0
  %what = getelementptr inbounds %struct.reg_data* %19, i64 0, i32 1
  %20 = load i8** %what, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i8* %20, i64 %indvars.iv.next
  %21 = load i8* %arrayidx64, align 1, !tbaa !1
  %conv = zext i8 %21 to i32
  switch i32 %conv, label %sw.default [
    i32 115, label %sw.bb
    i32 102, label %sw.bb69
    i32 112, label %sw.bb74
    i32 111, label %sw.bb79
    i32 110, label %while.cond.backedge
  ]

sw.bb:                                            ; preds = %while.body
  %arrayidx68 = getelementptr inbounds %struct.reg_data* %19, i64 0, i32 2, i64 %indvars.iv.next
  %22 = load i8** %arrayidx68, align 8, !tbaa !0
  %23 = bitcast i8* %22 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %23) #8
  br label %while.cond.backedge

sw.bb69:                                          ; preds = %while.body
  %arrayidx73 = getelementptr inbounds %struct.reg_data* %19, i64 0, i32 2, i64 %indvars.iv.next
  %24 = load i8** %arrayidx73, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %24) #8
  br label %while.cond.backedge

sw.bb74:                                          ; preds = %while.body
  %arrayidx78 = getelementptr inbounds %struct.reg_data* %19, i64 0, i32 2, i64 %indvars.iv.next
  %25 = load i8** %arrayidx78, align 8, !tbaa !0
  %26 = bitcast i8* %25 to %struct.av*
  br label %while.cond.outer.backedge

sw.bb79:                                          ; preds = %while.body
  %cmp80 = icmp eq %struct.av* %new_comppad.0.ph170, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %sw.bb79
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0)) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %sw.bb79
  %27 = load %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.av* %new_comppad.0.ph170, i64 0, i32 2
  %28 = load i32* %sv_flags, align 4, !tbaa !3
  %and84 = and i32 %28, 255
  %cmp85 = icmp eq i32 %and84, 10
  %cond = select i1 %cmp85, %struct.av* %new_comppad.0.ph170, %struct.av* null
  store %struct.av* %cond, %struct.av** @PL_comppad, align 8, !tbaa !0
  %tobool87 = icmp eq %struct.av* %cond, null
  br i1 %tobool87, label %cond.end90, label %cond.true88

cond.true88:                                      ; preds = %if.end83
  %sv_any = getelementptr inbounds %struct.av* %cond, i64 0, i32 0
  %29 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %29, i64 0, i32 0
  %30 = load i8** %xav_array, align 8, !tbaa !0
  %31 = bitcast i8* %30 to %struct.sv**
  br label %cond.end90

cond.end90:                                       ; preds = %if.end83, %cond.true88
  %cond91 = phi %struct.sv** [ %31, %cond.true88 ], [ null, %if.end83 ]
  store %struct.sv** %cond91, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %32 = load %struct.reg_data** %data56, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds %struct.reg_data* %32, i64 0, i32 2, i64 %indvars.iv.next
  %33 = load i8** %arrayidx95, align 8, !tbaa !0
  %op_targ = getelementptr inbounds i8* %33, i64 24
  %34 = bitcast i8* %op_targ to i64*
  %35 = load i64* %34, align 8, !tbaa !5
  %dec96 = add i64 %35, -1
  store i64 %dec96, i64* %34, align 8, !tbaa !5
  %tobool97 = icmp eq i64 %dec96, 0
  br i1 %tobool97, label %if.then98, label %if.end103

if.then98:                                        ; preds = %cond.end90
  %36 = bitcast i8* %33 to %struct.op*
  tail call void @Perl_op_free(%struct.op* %36) #8
  br label %if.end103

if.end103:                                        ; preds = %cond.end90, %if.then98
  store %struct.av* %27, %struct.av** @PL_comppad, align 8, !tbaa !0
  %tobool104 = icmp eq %struct.av* %27, null
  br i1 %tobool104, label %cond.end109, label %cond.true105

cond.true105:                                     ; preds = %if.end103
  %sv_any106 = getelementptr inbounds %struct.av* %27, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any106, align 8, !tbaa !0
  %xav_array107 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 0
  %38 = load i8** %xav_array107, align 8, !tbaa !0
  %39 = bitcast i8* %38 to %struct.sv**
  br label %cond.end109

cond.end109:                                      ; preds = %if.end103, %cond.true105
  %cond110 = phi %struct.sv** [ %39, %cond.true105 ], [ null, %if.end103 ]
  store %struct.sv** %cond110, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %40 = bitcast %struct.av* %new_comppad.0.ph170 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %40) #8
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %cond.end109, %sw.bb74
  %new_comppad.0.ph.be = phi %struct.av* [ null, %cond.end109 ], [ %26, %sw.bb74 ]
  %cmp62166 = icmp sgt i32 %dec61167, 0
  br i1 %cmp62166, label %while.body.lr.ph, label %while.end

sw.default:                                       ; preds = %while.body
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 %conv) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.default, %while.body, %sw.bb69, %sw.bb
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp62 = icmp sgt i32 %41, 0
  br i1 %cmp62, label %while.body, label %while.end

while.end:                                        ; preds = %if.then58, %while.cond.outer.backedge, %while.cond.backedge
  %42 = load %struct.reg_data** %data56, align 8, !tbaa !0
  %what117 = getelementptr inbounds %struct.reg_data* %42, i64 0, i32 1
  %43 = load i8** %what117, align 8, !tbaa !0
  tail call void @Perl_safesysfree(i8* %43) #8
  %44 = load %struct.reg_data** %data56, align 8, !tbaa !0
  %45 = bitcast %struct.reg_data* %44 to i8*
  tail call void @Perl_safesysfree(i8* %45) #8
  br label %if.end119

if.end119:                                        ; preds = %if.end55, %while.end
  %startp = getelementptr inbounds %struct.regexp* %r, i64 0, i32 0
  %46 = load i32** %startp, align 8, !tbaa !0
  %47 = bitcast i32* %46 to i8*
  tail call void @Perl_safesysfree(i8* %47) #8
  %endp = getelementptr inbounds %struct.regexp* %r, i64 0, i32 1
  %48 = load i32** %endp, align 8, !tbaa !0
  %49 = bitcast i32* %48 to i8*
  tail call void @Perl_safesysfree(i8* %49) #8
  %50 = bitcast %struct.regexp* %r to i8*
  tail call void @Perl_safesysfree(i8* %50) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end119
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #2

; Function Attrs: optsize
declare void @Perl_op_free(%struct.op*) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_save_re_context() #0 {
entry:
  %digits = alloca [22 x i8], align 16
  call void @Perl_save_I32(i32* @PL_reg_flags) #8
  call void @Perl_save_pptr(i8** @PL_bostr) #8
  call void @Perl_save_pptr(i8** @PL_reginput) #8
  call void @Perl_save_pptr(i8** @PL_regbol) #8
  call void @Perl_save_pptr(i8** @PL_regeol) #8
  call void @Perl_save_vptr(i8* bitcast (i32** @PL_regstartp to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (i32** @PL_regendp to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (i32** @PL_reglastparen to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (i32** @PL_reglastcloseparen to i8*)) #8
  call void @Perl_save_pptr(i8** @PL_regtill) #8
  call void @Perl_save_generic_pvref(i8** bitcast (i8*** @PL_reg_start_tmp to i8**)) #8
  store i8** null, i8*** @PL_reg_start_tmp, align 8, !tbaa !0
  call void @Perl_save_I32(i32* @PL_reg_start_tmpl) #8
  store i32 0, i32* @PL_reg_start_tmpl, align 4, !tbaa !3
  call void @Perl_save_vptr(i8* bitcast (%struct.reg_data** @PL_regdata to i8*)) #8
  call void @Perl_save_I32(i32* @PL_reg_eval_set) #8
  call void @Perl_save_I32(i32* @PL_regnarrate) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.regnode** @PL_regprogram to i8*)) #8
  call void @Perl_save_int(i32* @PL_regindent) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.curcur** @PL_regcc to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.cop** @PL_curcop to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.re_cc_state** @PL_reg_call_cc to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.regexp** @PL_reg_re to i8*)) #8
  call void @Perl_save_pptr(i8** @PL_reg_ganch) #8
  call void @Perl_save_sptr(%struct.sv** @PL_reg_sv) #8
  call void @Perl_save_bool(i8* @PL_reg_match_utf8) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.magic** @PL_reg_magic to i8*)) #8
  call void @Perl_save_I32(i32* @PL_reg_oldpos) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.pmop** @PL_reg_oldcurpm to i8*)) #8
  call void @Perl_save_vptr(i8* bitcast (%struct.pmop** @PL_reg_curpm to i8*)) #8
  call void @Perl_save_pptr(i8** @PL_reg_oldsaved) #8
  store i8* null, i8** @PL_reg_oldsaved, align 8, !tbaa !0
  call void @Perl_save_I32(i32* bitcast (i64* @PL_reg_oldsavedlen to i32*)) #8
  store i64 0, i64* @PL_reg_oldsavedlen, align 8, !tbaa !5
  call void @Perl_save_I32(i32* @PL_reg_maxiter) #8
  store i32 0, i32* @PL_reg_maxiter, align 4, !tbaa !3
  call void @Perl_save_I32(i32* @PL_reg_leftiter) #8
  store i32 0, i32* @PL_reg_leftiter, align 4, !tbaa !3
  call void @Perl_save_generic_pvref(i8** @PL_reg_poscache) #8
  store i8* null, i8** @PL_reg_poscache, align 8, !tbaa !0
  call void @Perl_save_I32(i32* bitcast (i64* @PL_reg_poscache_size to i32*)) #8
  store i64 0, i64* @PL_reg_poscache_size, align 8, !tbaa !5
  call void @Perl_save_pptr(i8** @PL_regprecomp) #8
  call void @Perl_save_I32(i32* @PL_regnpar) #8
  call void @Perl_save_I32(i32* @PL_regsize) #8
  %0 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %tobool = icmp eq %struct.pmop* %0, null
  br i1 %tobool, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %op_pmregexp = getelementptr inbounds %struct.pmop* %0, i64 0, i32 13
  %1 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.regexp* %1, null
  br i1 %tobool1, label %if.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %nparens = getelementptr inbounds %struct.regexp* %1, i64 0, i32 12
  %2 = load i32* %nparens, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %2, 0
  br i1 %cmp10, label %if.end7, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay = getelementptr inbounds [22 x i8]* %digits, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.011 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc ]
  %conv = zext i32 %i.011 to i64
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i64 %conv) #8
  %call3 = call %struct.gv* @Perl_gv_fetchpv(i8* %arraydecay, i32 0, i32 4) #8
  %tobool4 = icmp eq %struct.gv* %call3, null
  br i1 %tobool4, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %call6 = call %struct.sv* @Perl_save_scalar(%struct.gv* %call3) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add i32 %i.011, 1
  %3 = load i32* %nparens, align 4, !tbaa !3
  %cmp = icmp ugt i32 %inc, %3
  br i1 %cmp, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.cond.preheader, %for.inc, %land.lhs.true, %entry
  ret void
}

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #2

; Function Attrs: optsize
declare void @Perl_save_pptr(i8**) #2

; Function Attrs: optsize
declare void @Perl_save_vptr(i8*) #2

; Function Attrs: optsize
declare void @Perl_save_generic_pvref(i8**) #2

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #2

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #2

; Function Attrs: optsize
declare void @Perl_save_bool(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #6

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_save_scalar(%struct.gv*) #2

; Function Attrs: nounwind optsize uwtable
define internal void @S_re_croak2(i8* nocapture %pat1, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %l1 = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %call = call i64 @strlen(i8* %pat1) #8
  store i64 %call, i64* %l1, align 8, !tbaa !5
  %0 = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #3
  %cmp = icmp ugt i64 %call, 510
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 510, i64* %l1, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ 510, %if.then ], [ %call, %entry ]
  %add = add i64 %1, 52
  %cmp2 = icmp ugt i64 %add, 510
  %sub = sub i64 510, %1
  %sub. = select i1 %cmp2, i64 %sub, i64 52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %pat1, i64 %1, i32 1, i1 false)
  %add.ptr = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i64 %sub., i32 1, i1 false)
  %add7 = add i64 %1, %sub.
  %arrayidx = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 %add7
  store i8 10, i8* %arrayidx, align 1, !tbaa !1
  %add8 = add i64 %sub., 1
  %add9 = add i64 %add8, %1
  %arrayidx10 = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 %add9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !1
  %arraydecay1112 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1112)
  %call14 = call %struct.sv* @Perl_vmess(i8* %0, [1 x %struct.__va_list_tag]* %args) #8
  call void @llvm.va_end(i8* %arraydecay1112)
  %sv_flags = getelementptr inbounds %struct.sv* %call14, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %sv_any = getelementptr inbounds %struct.sv* %call14, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !5
  store i64 %5, i64* %l1, align 8, !tbaa !5
  %xpv_pv = bitcast i8* %3 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call19 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call14, i64* %l1, i32 2) #8
  %.pr = load i64* %l1, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = phi i64 [ %.pr, %cond.false ], [ %5, %cond.true ]
  %cond = phi i8* [ %call19, %cond.false ], [ %6, %cond.true ]
  %cmp20 = icmp ugt i64 %7, 512
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %cond.end
  store i64 512, i64* %l1, align 8, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cond.end
  %8 = phi i64 [ 512, %if.then21 ], [ %7, %cond.end ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %cond, i64 %8, i32 1, i1 false)
  %sub25 = add i64 %8, -1
  %arrayidx26 = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 %sub25
  store i8 0, i8* %arrayidx26, align 1, !tbaa !1
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([3 x i8]* @.str94, i64 0, i64 0), i8* %0) #8
  call void @llvm.lifetime.end(i64 512, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @S_nextchar(%struct.RExC_state_t* nocapture %pRExC_state) #0 {
entry:
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %0 = load i8** %parse, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %end = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %precomp = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %flags = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %if.then62, %while.end, %while.body75, %while.cond70, %entry
  %1 = phi i8* [ %incdec.ptr, %entry ], [ %incdec.ptr36, %while.end ], [ %incdec.ptr64, %if.then62 ], [ %incdec.ptr77, %while.body75 ], [ %16, %while.cond70 ]
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 40
  br i1 %cmp, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8* %1, i64 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %3, 63
  br i1 %cmp6, label %land.lhs.true8, label %if.end37

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx10 = getelementptr inbounds i8* %1, i64 2
  %4 = load i8* %arrayidx10, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %4, 35
  br i1 %cmp12, label %while.body, label %if.end37

while.body:                                       ; preds = %if.end32, %land.lhs.true8
  %5 = phi i8* [ %1, %land.lhs.true8 ], [ %incdec.ptr34, %if.end32 ]
  %6 = load i8** %end, align 8, !tbaa !0
  %cmp19 = icmp eq i8* %5, %6
  br i1 %cmp19, label %if.then21, label %if.end32

if.then21:                                        ; preds = %while.body
  %7 = load i8** %precomp, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp23 = icmp eq %struct.regnode* %8, @PL_regdummy
  br i1 %cmp23, label %if.end, label %if.then25

if.then25:                                        ; preds = %if.then21
  %9 = load %struct.regexp** %rx, align 8, !tbaa !0
  %10 = bitcast %struct.regexp* %9 to i8*
  tail call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %10) #8
  %.pre = load i8** %precomp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then21
  %11 = phi i8* [ %.pre, %if.then25 ], [ %7, %if.then21 ]
  %cmp26 = icmp sgt i64 %sub.ptr.sub, 127
  %. = select i1 %cmp26, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %12 = trunc i64 %sub.ptr.sub to i32
  %conv30 = select i1 %cmp26, i32 117, i32 %12
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str12, i64 0, i64 0), i32 %conv30, i8* %11, i8* %.) #8
  %.pre112 = load i8** %parse, align 8, !tbaa !0
  br label %if.end32

if.end32:                                         ; preds = %if.end, %while.body
  %13 = phi i8* [ %.pre112, %if.end ], [ %5, %while.body ]
  %incdec.ptr34 = getelementptr inbounds i8* %13, i64 1
  store i8* %incdec.ptr34, i8** %parse, align 8, !tbaa !0
  %14 = load i8* %incdec.ptr34, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %14, 41
  br i1 %cmp16, label %while.end, label %while.body

while.end:                                        ; preds = %if.end32
  %incdec.ptr36 = getelementptr inbounds i8* %13, i64 2
  store i8* %incdec.ptr36, i8** %parse, align 8, !tbaa !0
  br label %for.cond

if.end37:                                         ; preds = %land.lhs.true8, %land.lhs.true, %for.cond
  %15 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %15, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end86, label %if.then38

if.then38:                                        ; preds = %if.end37
  switch i8 %2, label %if.end86 [
    i8 32, label %if.then62
    i8 9, label %if.then62
    i8 10, label %if.then62
    i8 13, label %if.then62
    i8 12, label %if.then62
    i8 35, label %while.cond70.preheader
  ]

while.cond70.preheader:                           ; preds = %if.then38
  %.pre113 = load i8** %end, align 8, !tbaa !0
  br label %while.cond70

if.then62:                                        ; preds = %if.then38, %if.then38, %if.then38, %if.then38, %if.then38
  %incdec.ptr64 = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr64, i8** %parse, align 8, !tbaa !0
  br label %for.cond

while.cond70:                                     ; preds = %while.cond70.preheader, %while.body75
  %16 = phi i8* [ %1, %while.cond70.preheader ], [ %incdec.ptr77, %while.body75 ]
  %cmp73 = icmp ult i8* %16, %.pre113
  br i1 %cmp73, label %while.body75, label %for.cond

while.body75:                                     ; preds = %while.cond70
  %incdec.ptr77 = getelementptr inbounds i8* %16, i64 1
  store i8* %incdec.ptr77, i8** %parse, align 8, !tbaa !0
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp79 = icmp eq i8 %17, 10
  br i1 %cmp79, label %for.cond, label %while.cond70

if.end86:                                         ; preds = %if.then38, %if.end37
  ret i8* %0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_push_scope() #2

; Function Attrs: optsize
declare %struct.op* @Perl_sv_compile_2op(%struct.sv*, %struct.op**, i8*, %struct.av**) #2

; Function Attrs: optsize
declare void @Perl_pop_scope() #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* nocapture %pRExC_state, i8 zeroext %op) #0 {
entry:
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %1 = load i32* %size, align 4, !tbaa !3
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %size, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.regnode* %0, i64 0, i32 0
  store i8 -34, i8* %flags, align 1, !tbaa !1
  %type = getelementptr inbounds %struct.regnode* %0, i64 0, i32 1
  store i8 %op, i8* %type, align 1, !tbaa !1
  %next_off = getelementptr inbounds %struct.regnode* %0, i64 0, i32 2
  store i16 0, i16* %next_off, align 2, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.regnode* %0, i64 1
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %2 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %2, i64 0, i32 7
  %3 = load i32** %offsets, align 8, !tbaa !0
  %tobool = icmp eq i32* %3, null
  br i1 %tobool, label %if.end31, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.regnode* %4, @PL_regdummy
  br i1 %cmp4, label %if.end31, label %if.then5

if.then5:                                         ; preds = %if.then2
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %5 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div) #8
  br label %if.end31

if.else:                                          ; preds = %if.then5
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %6 = load i8** %parse, align 8, !tbaa !0
  %cmp15 = icmp eq i8 %op, 0
  %idx.ext = zext i1 %cmp15 to i64
  %add.ptr = getelementptr inbounds i8* %6, i64 %idx.ext
  %start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %7 = load i8** %start, align 8, !tbaa !0
  %sub.ptr.lhs.cast17 = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %7 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %conv20 = trunc i64 %sub.ptr.sub19 to i32
  %mul = ashr exact i64 %sub.ptr.sub, 1
  %sub = add nsw i64 %mul, -1
  %arrayidx = getelementptr inbounds i32* %3, i64 %sub
  store i32 %conv20, i32* %arrayidx, align 4, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then2, %if.else, %if.then8
  store %struct.regnode* %incdec.ptr, %struct.regnode** %emit, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end31, %if.then
  ret %struct.regnode* %0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_regtail(%struct.RExC_state_t* nocapture %pRExC_state, %struct.regnode* %p, %struct.regnode* %val) #0 {
entry:
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %if.end10, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %scan.0 = phi %struct.regnode* [ %call, %for.cond ], [ %p, %entry ]
  %call = tail call %struct.regnode* @Perl_regnext(%struct.regnode* %scan.0) #9
  %cmp1 = icmp eq %struct.regnode* %call, null
  br i1 %cmp1, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %type = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 1
  %1 = load i8* %type, align 1, !tbaa !1
  %idxprom = zext i8 %1 to i64
  %2 = lshr i64 1277896394266378240, %idxprom
  %3 = and i64 %2, 1
  %tobool = icmp eq i64 %3, 0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %val to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %scan.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  br i1 %tobool, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.end
  %conv = trunc i64 %sub.ptr.div to i32
  %arg1 = getelementptr inbounds %struct.regnode* %scan.0, i64 1
  %4 = bitcast %struct.regnode* %arg1 to i32*
  store i32 %conv, i32* %4, align 4, !tbaa !3
  br label %if.end10

if.else:                                          ; preds = %for.end
  %conv9 = trunc i64 %sub.ptr.div to i16
  %next_off = getelementptr inbounds %struct.regnode* %scan.0, i64 0, i32 2
  store i16 %conv9, i16* %next_off, align 2, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %entry, %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* nocapture %pRExC_state, i8 zeroext %op, i32 %arg) #0 {
entry:
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %1 = load i32* %size, align 4, !tbaa !3
  %add = add nsw i32 %1, 2
  store i32 %add, i32* %size, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.regnode* %0, i64 0, i32 0
  store i8 -34, i8* %flags, align 1, !tbaa !1
  %arg1 = getelementptr inbounds %struct.regnode* %0, i64 1
  %2 = bitcast %struct.regnode* %arg1 to i32*
  store i32 %arg, i32* %2, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.regnode* %0, i64 0, i32 1
  store i8 %op, i8* %type, align 1, !tbaa !1
  %next_off = getelementptr inbounds %struct.regnode* %0, i64 0, i32 2
  store i16 0, i16* %next_off, align 2, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.regnode* %0, i64 2
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %3 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %3, i64 0, i32 7
  %4 = load i32** %offsets, align 8, !tbaa !0
  %tobool = icmp eq i32* %4, null
  br i1 %tobool, label %if.end28, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.regnode* %5, @PL_regdummy
  br i1 %cmp4, label %if.end28, label %if.then5

if.then5:                                         ; preds = %if.then2
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %6 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div) #8
  br label %if.end28

if.else:                                          ; preds = %if.then5
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %7 = load i8** %parse, align 8, !tbaa !0
  %start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %8 = load i8** %start, align 8, !tbaa !0
  %sub.ptr.lhs.cast15 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %8 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %conv = trunc i64 %sub.ptr.sub17 to i32
  %mul = ashr exact i64 %sub.ptr.sub, 1
  %sub = add nsw i64 %mul, -1
  %arrayidx = getelementptr inbounds i32* %4, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then2, %if.else, %if.then8
  store %struct.regnode* %add.ptr, %struct.regnode** %emit, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end28, %if.then
  ret %struct.regnode* %0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_regbranch(%struct.RExC_state_t* %pRExC_state, i32* nocapture %flagp, i32 %first) #0 {
entry:
  %flags.i = alloca i32, align 4
  %tobool = icmp eq i32 %first, 0
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  br i1 %tobool, label %if.else, label %if.end30

if.else:                                          ; preds = %entry
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %if.else3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %extralen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  %1 = load i32* %extralen, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.else3, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %call = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 56, i32 0) #9
  br label %land.lhs.true25

if.else3:                                         ; preds = %land.lhs.true, %if.else
  %call4 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 31) #9
  %2 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.regnode* %2, @PL_regdummy
  br i1 %cmp6, label %if.then28, label %if.then7

if.then7:                                         ; preds = %if.else3
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %3 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %call4 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp8 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp8, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.then7
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div) #8
  br label %land.lhs.true25

if.else15:                                        ; preds = %if.then7
  %mul = ashr exact i64 %sub.ptr.sub, 1
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %4 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %4, i64 0, i32 7
  %5 = load i32** %offsets, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %5, i64 %mul
  store i32 1, i32* %arrayidx, align 4, !tbaa !3
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.else15, %if.then9, %if.then2
  %ret.0.ph = phi %struct.regnode* [ %call4, %if.else15 ], [ %call4, %if.then9 ], [ %call, %if.then2 ]
  %.pr = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp27 = icmp eq %struct.regnode* %.pr, @PL_regdummy
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.else3, %land.lhs.true25
  %ret.0169 = phi %struct.regnode* [ %ret.0.ph, %land.lhs.true25 ], [ %call4, %if.else3 ]
  %extralen29 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  %6 = load i32* %extralen29, align 4, !tbaa !3
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %extralen29, align 4, !tbaa !3
  br label %if.end30

if.end30:                                         ; preds = %entry, %if.then28, %land.lhs.true25
  %ret.0127 = phi %struct.regnode* [ %ret.0169, %if.then28 ], [ %ret.0.ph, %land.lhs.true25 ], [ null, %entry ]
  store i32 0, i32* %flagp, align 4, !tbaa !3
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %7 = load i8** %parse, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %7, i64 -1
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %call31 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %end = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %8 = bitcast i32* %flags.i to i8*
  %precomp.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %rx.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %whilem_seen.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 6
  %extralen238.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 14
  %naughty241.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 9
  %emit_start155.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %start170.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end63, %if.end30
  %or.i123.ph = phi i32 [ 0, %if.end30 ], [ %or.i124, %if.end63 ]
  %ret.1.ph = phi %struct.regnode* [ %ret.0127, %if.end30 ], [ %call42.ret.1, %if.end63 ]
  %chain.0.ph = phi %struct.regnode* [ null, %if.end30 ], [ %call.i, %if.end63 ]
  %c.0.ph = phi i32 [ 0, %if.end30 ], [ %inc64, %if.end63 ]
  br label %while.cond

while.cond:                                       ; preds = %if.then45, %while.cond.outer
  %or.i123 = phi i32 [ %or.i123.ph, %while.cond.outer ], [ %and.or.i, %if.then45 ]
  %9 = load i8** %parse, align 8, !tbaa !0
  %10 = load i8** %end, align 8, !tbaa !0
  %cmp33 = icmp ult i8* %9, %10
  br i1 %cmp33, label %land.lhs.true34, label %while.end

land.lhs.true34:                                  ; preds = %while.cond
  %11 = load i8* %9, align 1, !tbaa !1
  switch i8 %11, label %while.body [
    i8 124, label %while.end
    i8 41, label %while.end
  ]

while.body:                                       ; preds = %land.lhs.true34
  %and = and i32 %or.i123, -9
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %call.i = call fastcc %struct.regnode* @S_regatom(%struct.RExC_state_t* %pRExC_state, i32* %flags.i) #8
  %cmp.i = icmp eq %struct.regnode* %call.i, null
  br i1 %cmp.i, label %if.then45, label %if.end2.i

if.end2.i:                                        ; preds = %while.body
  %12 = load i8** %parse, align 8, !tbaa !0
  %13 = load i8* %12, align 1, !tbaa !1
  %cmp4.i = icmp eq i8 %13, 123
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end286.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call7.i = call fastcc i32 @S_regcurly(i8* %12) #8
  %tobool8.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i, label %if.then297.i, label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %land.lhs.true.i, %if.then25.i
  %maxpos.0.i.ph = phi i8* [ %next.0.i, %if.then25.i ], [ null, %land.lhs.true.i ]
  %.pn.i.ph = phi i8* [ %next.0.i, %if.then25.i ], [ %12, %land.lhs.true.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.i.outer
  %.pn.i = phi i8* [ %.pn.i.ph, %while.cond.i.outer ], [ %next.0.i, %while.cond.i ]
  %next.0.i = getelementptr inbounds i8* %.pn.i, i64 1
  %14 = load i8* %next.0.i, align 1, !tbaa !1
  %.off = add i8 %14, -48
  %15 = icmp ult i8 %.off, 10
  br i1 %15, label %while.cond.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %while.cond.i
  switch i8 %14, label %if.end286.i [
    i8 44, label %if.then25.i
    i8 125, label %if.then33.i
  ]

if.then25.i:                                      ; preds = %lor.rhs.i
  %tobool26.i = icmp eq i8* %maxpos.0.i.ph, null
  br i1 %tobool26.i, label %while.cond.i.outer, label %if.end286.i

if.then33.i:                                      ; preds = %lor.rhs.i
  %tobool34.i = icmp eq i8* %maxpos.0.i.ph, null
  %next.0.maxpos.0.i = select i1 %tobool34.i, i8* %next.0.i, i8* %maxpos.0.i.ph
  %incdec.ptr38.i = getelementptr inbounds i8* %12, i64 1
  store i8* %incdec.ptr38.i, i8** %parse, align 8, !tbaa !0
  %call40.i = call i32 @atoi(i8* %incdec.ptr38.i) #8
  %16 = load i8* %next.0.maxpos.0.i, align 1, !tbaa !1
  %cmp42.i = icmp eq i8 %16, 44
  %incdec.ptr45.i = getelementptr inbounds i8* %next.0.maxpos.0.i, i64 1
  %incdec.ptr45.i.incdec.ptr38.i = select i1 %cmp42.i, i8* %incdec.ptr45.i, i8* %incdec.ptr38.i
  %call49.i = call i32 @atoi(i8* %incdec.ptr45.i.incdec.ptr38.i) #8
  %tobool50.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.i, label %land.lhs.true51.i, label %if.else56.i

land.lhs.true51.i:                                ; preds = %if.then33.i
  %17 = load i8* %incdec.ptr45.i.incdec.ptr38.i, align 1, !tbaa !1
  %cmp53.i = icmp eq i8 %17, 48
  %. = select i1 %cmp53.i, i32 0, i32 32767
  br label %if.end70.i

if.else56.i:                                      ; preds = %if.then33.i
  %cmp57.i = icmp sgt i32 %call49.i, 32766
  br i1 %cmp57.i, label %if.then59.i, label %if.end70.i

if.then59.i:                                      ; preds = %if.else56.i
  %18 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp60.i = icmp eq %struct.regnode* %18, @PL_regdummy
  br i1 %cmp60.i, label %if.end63.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.then59.i
  %19 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %20 = bitcast %struct.regexp* %19 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %20) #8
  %.pre = load i8** %parse, align 8, !tbaa !0
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.then59.i
  %21 = phi i8* [ %.pre, %if.then62.i ], [ %incdec.ptr38.i, %if.then59.i ]
  %22 = load i8** %precomp.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %22 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv65.i = trunc i64 %sub.ptr.sub.i to i32
  %add.ptr68.i = getelementptr inbounds i8* %22, i64 %sub.ptr.sub.i
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([33 x i8]* @.str36, i64 0, i64 0), i32 32766, i32 %conv65.i, i8* %22, i8* %add.ptr68.i) #8
  br label %if.end70.i

if.end70.i:                                       ; preds = %land.lhs.true51.i, %if.end63.i, %if.else56.i
  %max.0.i = phi i32 [ %call49.i, %if.end63.i ], [ %call49.i, %if.else56.i ], [ %., %land.lhs.true51.i ]
  store i8* %next.0.i, i8** %parse, align 8, !tbaa !0
  %call72.i = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #8
  br label %do_curly.i

do_curly.i:                                       ; preds = %if.end298.i, %land.lhs.true324.i, %land.lhs.true308.i, %if.end70.i
  %or.i122 = phi i32 [ %and, %if.end70.i ], [ %cond304.i, %land.lhs.true308.i ], [ %cond304.i, %land.lhs.true324.i ], [ %cond304.i, %if.end298.i ]
  %max.1.i = phi i32 [ %max.0.i, %if.end70.i ], [ 32767, %land.lhs.true308.i ], [ 32767, %land.lhs.true324.i ], [ 1, %if.end298.i ]
  %min.0.i = phi i32 [ %call40.i, %if.end70.i ], [ 0, %land.lhs.true308.i ], [ 1, %land.lhs.true324.i ], [ 0, %if.end298.i ]
  %23 = load i32* %flags.i, align 4, !tbaa !3
  %and73.i = and i32 %23, 2
  %tobool74.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.i, label %if.else141.i, label %if.then75.i

if.then75.i:                                      ; preds = %do_curly.i
  %24 = load i32* %naughty241.i, align 4, !tbaa !3
  %div.i = sdiv i32 %24, 2
  %add.i = add i32 %24, 2
  %add77.i = add i32 %add.i, %div.i
  store i32 %add77.i, i32* %naughty241.i, align 4, !tbaa !3
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 40, %struct.regnode* %call.i) #8
  %25 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp79.i = icmp eq %struct.regnode* %25, @PL_regdummy
  br i1 %cmp79.i, label %if.end245.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.then75.i
  %26 = load %struct.regnode** %emit_start155.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast82.i = ptrtoint %struct.regnode* %call.i to i64
  %sub.ptr.rhs.cast83.i = ptrtoint %struct.regnode* %26 to i64
  %sub.ptr.sub84.i = sub i64 %sub.ptr.lhs.cast82.i, %sub.ptr.rhs.cast83.i
  %cmp85.i = icmp slt i64 %sub.ptr.sub84.i, 0
  br i1 %cmp85.i, label %if.then87.i, label %if.else93.i

if.then87.i:                                      ; preds = %if.then81.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub84.i, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div.i) #8
  %.pr129.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end106.i

if.else93.i:                                      ; preds = %if.then81.i
  %add.ptr94.i = getelementptr inbounds i8* %12, i64 1
  %27 = load i8** %start170.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast95.i = ptrtoint i8* %add.ptr94.i to i64
  %sub.ptr.rhs.cast96.i = ptrtoint i8* %27 to i64
  %sub.ptr.sub97.i = sub i64 %sub.ptr.lhs.cast95.i, %sub.ptr.rhs.cast96.i
  %conv98.i = trunc i64 %sub.ptr.sub97.i to i32
  %mul.i = ashr exact i64 %sub.ptr.sub84.i, 1
  %sub.i = add nsw i64 %mul.i, -1
  %28 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %offsets.i = getelementptr inbounds %struct.regexp* %28, i64 0, i32 7
  %29 = load i32** %offsets.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i32* %29, i64 %sub.i
  store i32 %conv98.i, i32* %arrayidx.i, align 4, !tbaa !3
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else93.i, %if.then87.i
  %.pr129 = phi %struct.regnode* [ %25, %if.else93.i ], [ %.pr129.pre, %if.then87.i ]
  %cmp108.i = icmp eq %struct.regnode* %.pr129, @PL_regdummy
  br i1 %cmp108.i, label %if.end245.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.end106.i
  %30 = load %struct.regnode** %emit_start155.i, align 8, !tbaa !0
  %sub.ptr.rhs.cast113.i = ptrtoint %struct.regnode* %30 to i64
  %sub.ptr.sub114.i = sub i64 %sub.ptr.lhs.cast82.i, %sub.ptr.rhs.cast113.i
  %cmp116.i = icmp slt i64 %sub.ptr.sub114.i, 0
  br i1 %cmp116.i, label %if.then118.i, label %if.else124.i

if.then118.i:                                     ; preds = %if.then110.i
  %sub.ptr.div115.i = ashr exact i64 %sub.ptr.sub114.i, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div115.i) #8
  br label %if.end245.i

if.else124.i:                                     ; preds = %if.then110.i
  %31 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast126.i = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast127.i = ptrtoint i8* %12 to i64
  %sub.ptr.sub128.i = sub i64 %sub.ptr.lhs.cast126.i, %sub.ptr.rhs.cast127.i
  %conv129.i = trunc i64 %sub.ptr.sub128.i to i32
  %mul135.i = ashr exact i64 %sub.ptr.sub114.i, 1
  %32 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %offsets137.i = getelementptr inbounds %struct.regexp* %32, i64 0, i32 7
  %33 = load i32** %offsets137.i, align 8, !tbaa !0
  %arrayidx138.i = getelementptr inbounds i32* %33, i64 %mul135.i
  store i32 %conv129.i, i32* %arrayidx138.i, align 4, !tbaa !3
  br label %if.end245.i

if.else141.i:                                     ; preds = %do_curly.i
  %call142.i = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 44) #8
  %flags143.i = getelementptr inbounds %struct.regnode* %call142.i, i64 0, i32 0
  store i8 0, i8* %flags143.i, align 1, !tbaa !1
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call.i, %struct.regnode* %call142.i) #8
  %34 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp145.i = icmp eq %struct.regnode* %34, @PL_regdummy
  br i1 %cmp145.i, label %if.end150.i, label %land.lhs.true147.i

land.lhs.true147.i:                               ; preds = %if.else141.i
  %35 = load i32* %extralen238.i, align 4, !tbaa !3
  %tobool148.i = icmp eq i32 %35, 0
  br i1 %tobool148.i, label %if.end150.i, label %if.then149.i

if.then149.i:                                     ; preds = %land.lhs.true147.i
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 55, %struct.regnode* %call.i) #8
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 36, %struct.regnode* %call.i) #8
  %next_off.i = getelementptr inbounds %struct.regnode* %call.i, i64 0, i32 2
  store i16 3, i16* %next_off.i, align 2, !tbaa !4
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then149.i, %land.lhs.true147.i, %if.else141.i
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 43, %struct.regnode* %call.i) #8
  %36 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp152.i = icmp eq %struct.regnode* %36, @PL_regdummy
  br i1 %cmp152.i, label %if.end232.i, label %if.then154.i

if.then154.i:                                     ; preds = %if.end150.i
  %37 = load %struct.regnode** %emit_start155.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast156.i = ptrtoint %struct.regnode* %call.i to i64
  %sub.ptr.rhs.cast157.i = ptrtoint %struct.regnode* %37 to i64
  %sub.ptr.sub158.i = sub i64 %sub.ptr.lhs.cast156.i, %sub.ptr.rhs.cast157.i
  %cmp160.i = icmp slt i64 %sub.ptr.sub158.i, 0
  br i1 %cmp160.i, label %if.then162.i, label %if.else168.i

if.then162.i:                                     ; preds = %if.then154.i
  %sub.ptr.div159.i = ashr exact i64 %sub.ptr.sub158.i, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div159.i) #8
  %.pr131.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end186.i

if.else168.i:                                     ; preds = %if.then154.i
  %add.ptr169.i = getelementptr inbounds i8* %12, i64 1
  %38 = load i8** %start170.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast171.i = ptrtoint i8* %add.ptr169.i to i64
  %sub.ptr.rhs.cast172.i = ptrtoint i8* %38 to i64
  %sub.ptr.sub173.i = sub i64 %sub.ptr.lhs.cast171.i, %sub.ptr.rhs.cast172.i
  %conv174.i = trunc i64 %sub.ptr.sub173.i to i32
  %mul180.i = ashr exact i64 %sub.ptr.sub158.i, 1
  %sub181.i = add nsw i64 %mul180.i, -1
  %39 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %offsets183.i = getelementptr inbounds %struct.regexp* %39, i64 0, i32 7
  %40 = load i32** %offsets183.i, align 8, !tbaa !0
  %arrayidx184.i = getelementptr inbounds i32* %40, i64 %sub181.i
  store i32 %conv174.i, i32* %arrayidx184.i, align 4, !tbaa !3
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.else168.i, %if.then162.i
  %.pr131 = phi %struct.regnode* [ %36, %if.else168.i ], [ %.pr131.pre, %if.then162.i ]
  %cmp188.i = icmp eq %struct.regnode* %.pr131, @PL_regdummy
  br i1 %cmp188.i, label %if.end232.i, label %if.then190.i

if.then190.i:                                     ; preds = %if.end186.i
  %41 = load %struct.regnode** %emit_start155.i, align 8, !tbaa !0
  %sub.ptr.rhs.cast193.i = ptrtoint %struct.regnode* %41 to i64
  %sub.ptr.sub194.i = sub i64 %sub.ptr.lhs.cast156.i, %sub.ptr.rhs.cast193.i
  %cmp196.i = icmp slt i64 %sub.ptr.sub194.i, 0
  br i1 %cmp196.i, label %if.then198.i, label %if.else204.i

if.then198.i:                                     ; preds = %if.then190.i
  %sub.ptr.div195.i = ashr exact i64 %sub.ptr.sub194.i, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div195.i) #8
  %.pr133.pr.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end223.i

if.else204.i:                                     ; preds = %if.then190.i
  br i1 %cmp4.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %if.else204.i
  %42 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast209.i = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast210.i = ptrtoint i8* %12 to i64
  %sub.ptr.sub211.i = sub i64 %sub.ptr.lhs.cast209.i, %sub.ptr.rhs.cast210.i
  %phitmp.i = trunc i64 %sub.ptr.sub211.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.else204.i, %cond.true.i
  %cond.i = phi i32 [ %phitmp.i, %cond.true.i ], [ 1, %if.else204.i ]
  %mul218.i = ashr exact i64 %sub.ptr.sub194.i, 1
  %43 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %offsets220.i = getelementptr inbounds %struct.regexp* %43, i64 0, i32 7
  %44 = load i32** %offsets220.i, align 8, !tbaa !0
  %arrayidx221.i = getelementptr inbounds i32* %44, i64 %mul218.i
  store i32 %cond.i, i32* %arrayidx221.i, align 4, !tbaa !3
  br label %if.end223.i

if.end223.i:                                      ; preds = %cond.end.i, %if.then198.i
  %.pr133.pr = phi %struct.regnode* [ %.pr131, %cond.end.i ], [ %.pr133.pr.pre, %if.then198.i ]
  %cmp225.i = icmp eq %struct.regnode* %.pr133.pr, @PL_regdummy
  br i1 %cmp225.i, label %if.end232.i, label %land.lhs.true227.i

land.lhs.true227.i:                               ; preds = %if.end223.i
  %45 = load i32* %extralen238.i, align 4, !tbaa !3
  %tobool229.i = icmp eq i32 %45, 0
  br i1 %tobool229.i, label %if.end232.i, label %if.then230.i

if.then230.i:                                     ; preds = %land.lhs.true227.i
  %next_off231.i = getelementptr inbounds %struct.regnode* %call.i, i64 0, i32 2
  store i16 3, i16* %next_off231.i, align 2, !tbaa !4
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.end150.i, %if.end186.i, %if.then230.i, %land.lhs.true227.i, %if.end223.i
  %call233.i = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 36) #8
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call.i, %struct.regnode* %call233.i) #8
  %46 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp235.i = icmp eq %struct.regnode* %46, @PL_regdummy
  br i1 %cmp235.i, label %if.then237.i, label %if.end240.i

if.then237.i:                                     ; preds = %if.end232.i
  %47 = load i32* %whilem_seen.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %47, 1
  store i32 %inc.i, i32* %whilem_seen.i, align 4, !tbaa !3
  %48 = load i32* %extralen238.i, align 4, !tbaa !3
  %add239.i = add nsw i32 %48, 3
  store i32 %add239.i, i32* %extralen238.i, align 4, !tbaa !3
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then237.i, %if.end232.i
  %49 = load i32* %naughty241.i, align 4, !tbaa !3
  %factor = shl i32 %49, 1
  %add244.i = add i32 %factor, 4
  store i32 %add244.i, i32* %naughty241.i, align 4, !tbaa !3
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.then75.i, %if.end240.i, %if.else124.i, %if.then118.i, %if.end106.i
  %flags246.i = getelementptr inbounds %struct.regnode* %call.i, i64 0, i32 0
  store i8 0, i8* %flags246.i, align 1, !tbaa !1
  %cmp247.i = icmp sgt i32 %min.0.i, 0
  %.or.i122 = select i1 %cmp247.i, i32 0, i32 %or.i122
  %cmp251.i = icmp sgt i32 %max.1.i, 0
  %or254.i = zext i1 %cmp251.i to i32
  %or.i126 = or i32 %.or.i122, %or254.i
  %tobool256.i = icmp ne i32 %max.1.i, 0
  %cmp258.i = icmp slt i32 %max.1.i, %min.0.i
  %or.cond617.i = and i1 %tobool256.i, %cmp258.i
  br i1 %or.cond617.i, label %if.then260.i, label %if.end277.i

if.then260.i:                                     ; preds = %if.end245.i
  %50 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp262.i = icmp eq %struct.regnode* %50, @PL_regdummy
  br i1 %cmp262.i, label %if.end266.i, label %if.then264.i

if.then264.i:                                     ; preds = %if.then260.i
  %51 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %52 = bitcast %struct.regexp* %51 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %52) #8
  br label %if.end266.i

if.end266.i:                                      ; preds = %if.then264.i, %if.then260.i
  %53 = load i8** %parse, align 8, !tbaa !0
  %54 = load i8** %precomp.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast270.i = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast271.i = ptrtoint i8* %54 to i64
  %sub.ptr.sub272.i = sub i64 %sub.ptr.lhs.cast270.i, %sub.ptr.rhs.cast271.i
  %conv273.i = trunc i64 %sub.ptr.sub272.i to i32
  %add.ptr276.i = getelementptr inbounds i8* %54, i64 %sub.ptr.sub272.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0), i32 %conv273.i, i8* %54, i8* %add.ptr276.i) #8
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.end266.i, %if.end245.i
  %55 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp279.i = icmp eq %struct.regnode* %55, @PL_regdummy
  br i1 %cmp279.i, label %nest_check.i, label %if.then281.i

if.then281.i:                                     ; preds = %if.end277.i
  %conv282.i = trunc i32 %min.0.i to i16
  %arg1.i = getelementptr inbounds %struct.regnode* %call.i, i64 1
  %56 = bitcast %struct.regnode* %arg1.i to i16*
  store i16 %conv282.i, i16* %56, align 2, !tbaa !4
  %conv283.i = trunc i32 %max.1.i to i16
  %57 = getelementptr inbounds %struct.regnode* %call.i, i64 1, i32 2
  store i16 %conv283.i, i16* %57, align 2, !tbaa !4
  br label %nest_check.i

if.end286.i:                                      ; preds = %lor.rhs.i, %if.then25.i, %if.end2.i
  switch i8 %13, label %if.then297.i [
    i8 63, label %if.end298.i
    i8 43, label %if.end298.i
    i8 42, label %if.end298.i
  ]

if.then297.i:                                     ; preds = %land.lhs.true.i, %if.end286.i
  %58 = load i32* %flags.i, align 4, !tbaa !3
  br label %if.else50

if.end298.i:                                      ; preds = %if.end286.i, %if.end286.i, %if.end286.i
  %call300.i = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #8
  %cmp302.i = icmp ne i8 %13, 43
  %cond304.i = select i1 %cmp302.i, i32 5, i32 1
  switch i8 %13, label %nest_check.i [
    i8 42, label %land.lhs.true308.i
    i8 43, label %land.lhs.true324.i
    i8 63, label %do_curly.i
  ]

land.lhs.true308.i:                               ; preds = %if.end298.i
  %59 = load i32* %flags.i, align 4, !tbaa !3
  %and309.i = and i32 %59, 2
  %tobool310.i = icmp eq i32 %and309.i, 0
  br i1 %tobool310.i, label %do_curly.i, label %if.then311.i

if.then311.i:                                     ; preds = %land.lhs.true308.i
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 38, %struct.regnode* %call.i) #8
  %flags312.i = getelementptr inbounds %struct.regnode* %call.i, i64 0, i32 0
  store i8 0, i8* %flags312.i, align 1, !tbaa !1
  %60 = load i32* %naughty241.i, align 4, !tbaa !3
  %add314.i = add nsw i32 %60, 4
  store i32 %add314.i, i32* %naughty241.i, align 4, !tbaa !3
  br label %nest_check.i

land.lhs.true324.i:                               ; preds = %if.end298.i
  %61 = load i32* %flags.i, align 4, !tbaa !3
  %and325.i = and i32 %61, 2
  %tobool326.i = icmp eq i32 %and325.i, 0
  br i1 %tobool326.i, label %do_curly.i, label %if.then327.i

if.then327.i:                                     ; preds = %land.lhs.true324.i
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 39, %struct.regnode* %call.i) #8
  %flags328.i = getelementptr inbounds %struct.regnode* %call.i, i64 0, i32 0
  store i8 0, i8* %flags328.i, align 1, !tbaa !1
  %62 = load i32* %naughty241.i, align 4, !tbaa !3
  %add330.i = add nsw i32 %62, 3
  store i32 %add330.i, i32* %naughty241.i, align 4, !tbaa !3
  br label %nest_check.i

nest_check.i:                                     ; preds = %if.end298.i, %if.then327.i, %if.then311.i, %if.then281.i, %if.end277.i
  %or.i125 = phi i32 [ %or.i126, %if.end277.i ], [ %or.i126, %if.then281.i ], [ %cond304.i, %if.then311.i ], [ %cond304.i, %if.then327.i ], [ %cond304.i, %if.end298.i ]
  %max.2.i = phi i32 [ %max.1.i, %if.end277.i ], [ %max.1.i, %if.then281.i ], [ 32767, %if.then311.i ], [ 32767, %if.then327.i ], [ 32767, %if.end298.i ]
  %63 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings.i = getelementptr inbounds %struct.cop* %63, i64 0, i32 14
  %64 = load %struct.sv** %cop_warnings.i, align 8, !tbaa !0
  %cmp346.i = icmp eq %struct.sv* %64, null
  br i1 %cmp346.i, label %lor.lhs.false362.i, label %land.lhs.true348.i

land.lhs.true348.i:                               ; preds = %nest_check.i
  %65 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings349.i = getelementptr inbounds %struct.cop* %65, i64 0, i32 14
  %66 = load %struct.sv** %cop_warnings349.i, align 8, !tbaa !0
  %cmp350.i = icmp eq %struct.sv* %66, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp350.i, label %lor.lhs.false362.i, label %land.lhs.true352.i

land.lhs.true352.i:                               ; preds = %land.lhs.true348.i
  %67 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings353.i = getelementptr inbounds %struct.cop* %67, i64 0, i32 14
  %68 = load %struct.sv** %cop_warnings353.i, align 8, !tbaa !0
  %cmp354.i = icmp eq %struct.sv* %68, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp354.i, label %land.lhs.true370.i, label %lor.lhs.false356.i

lor.lhs.false356.i:                               ; preds = %land.lhs.true352.i
  %69 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings357.i = getelementptr inbounds %struct.cop* %69, i64 0, i32 14
  %70 = load %struct.sv** %cop_warnings357.i, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.sv* %70, i64 0, i32 0
  %71 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %71 to i8**
  %72 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %arrayidx358.i = getelementptr inbounds i8* %72, i64 5
  %73 = load i8* %arrayidx358.i, align 1, !tbaa !1
  %and360.i = and i8 %73, 1
  %tobool361.i = icmp eq i8 %and360.i, 0
  br i1 %tobool361.i, label %lor.lhs.false362.i, label %land.lhs.true370.i

lor.lhs.false362.i:                               ; preds = %lor.lhs.false356.i, %land.lhs.true348.i, %nest_check.i
  %74 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings363.i = getelementptr inbounds %struct.cop* %74, i64 0, i32 14
  %75 = load %struct.sv** %cop_warnings363.i, align 8, !tbaa !0
  %cmp364.i = icmp eq %struct.sv* %75, null
  br i1 %cmp364.i, label %land.lhs.true366.i, label %if.end395.i

land.lhs.true366.i:                               ; preds = %lor.lhs.false362.i
  %76 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and368.i = and i8 %76, 1
  %tobool369.i = icmp eq i8 %and368.i, 0
  br i1 %tobool369.i, label %if.end395.i, label %land.lhs.true370.i

land.lhs.true370.i:                               ; preds = %land.lhs.true366.i, %lor.lhs.false356.i, %land.lhs.true352.i
  %77 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp372.i = icmp eq %struct.regnode* %77, @PL_regdummy
  br i1 %cmp372.i, label %if.end395.i, label %land.lhs.true374.i

land.lhs.true374.i:                               ; preds = %land.lhs.true370.i
  %78 = load i32* %flags.i, align 4, !tbaa !3
  %and375.i = and i32 %78, 1
  %tobool376.i = icmp eq i32 %and375.i, 0
  %cmp378.i = icmp sgt i32 %max.2.i, 10922
  %or.cond620.i = and i1 %tobool376.i, %cmp378.i
  br i1 %or.cond620.i, label %if.then380.i, label %if.end395.i

if.then380.i:                                     ; preds = %land.lhs.true374.i
  %79 = load i8** %parse, align 8, !tbaa !0
  %80 = load i8** %precomp.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast384.i = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast385.i = ptrtoint i8* %80 to i64
  %sub.ptr.sub386.i = sub i64 %sub.ptr.lhs.cast384.i, %sub.ptr.rhs.cast385.i
  %sub.ptr.rhs.cast389.i = ptrtoint i8* %9 to i64
  %sub.ptr.sub390.i = sub i64 %sub.ptr.lhs.cast384.i, %sub.ptr.rhs.cast389.i
  %conv391.i = trunc i64 %sub.ptr.sub386.i to i32
  %add.ptr394.i = getelementptr inbounds i8* %80, i64 %sub.ptr.sub386.i
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([88 x i8]* @.str38, i64 0, i64 0), i64 %sub.ptr.sub390.i, i8* %9, i32 %conv391.i, i8* %80, i8* %add.ptr394.i) #8
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.then380.i, %land.lhs.true374.i, %land.lhs.true370.i, %land.lhs.true366.i, %lor.lhs.false362.i
  %81 = load i8** %parse, align 8, !tbaa !0
  %82 = load i8* %81, align 1, !tbaa !1
  %cmp398.i = icmp eq i8 %82, 63
  br i1 %cmp398.i, label %if.then400.i, label %if.end403.i

if.then400.i:                                     ; preds = %if.end395.i
  %call401.i = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #8
  call fastcc void @S_reginsert(%struct.RExC_state_t* %pRExC_state, i8 zeroext 58, %struct.regnode* %call.i) #8
  %add.ptr402.i = getelementptr inbounds %struct.regnode* %call.i, i64 1
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %call.i, %struct.regnode* %add.ptr402.i) #8
  %.pre163 = load i8** %parse, align 8, !tbaa !0
  %.pre164 = load i8* %.pre163, align 1, !tbaa !1
  br label %if.end403.i

if.end403.i:                                      ; preds = %if.then400.i, %if.end395.i
  %83 = phi i8 [ %.pre164, %if.then400.i ], [ %82, %if.end395.i ]
  %84 = phi i8* [ %.pre163, %if.then400.i ], [ %81, %if.end395.i ]
  switch i8 %83, label %if.else50 [
    i8 42, label %if.then427.i
    i8 43, label %if.then427.i
    i8 63, label %if.then427.i
    i8 123, label %land.lhs.true423.i
  ]

land.lhs.true423.i:                               ; preds = %if.end403.i
  %call425.i = call fastcc i32 @S_regcurly(i8* %84) #8
  %tobool426.i = icmp eq i32 %call425.i, 0
  br i1 %tobool426.i, label %if.else50, label %if.then427.i

if.then427.i:                                     ; preds = %land.lhs.true423.i, %if.end403.i, %if.end403.i, %if.end403.i
  %incdec.ptr429.i = getelementptr inbounds i8* %84, i64 1
  store i8* %incdec.ptr429.i, i8** %parse, align 8, !tbaa !0
  %85 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp431.i = icmp eq %struct.regnode* %85, @PL_regdummy
  br i1 %cmp431.i, label %if.end435.i, label %if.then433.i

if.then433.i:                                     ; preds = %if.then427.i
  %86 = load %struct.regexp** %rx.i, align 8, !tbaa !0
  %87 = bitcast %struct.regexp* %86 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %87) #8
  %.pre165 = load i8** %parse, align 8, !tbaa !0
  br label %if.end435.i

if.end435.i:                                      ; preds = %if.then433.i, %if.then427.i
  %88 = phi i8* [ %.pre165, %if.then433.i ], [ %incdec.ptr429.i, %if.then427.i ]
  %89 = load i8** %precomp.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast439.i = ptrtoint i8* %88 to i64
  %sub.ptr.rhs.cast440.i = ptrtoint i8* %89 to i64
  %sub.ptr.sub441.i = sub i64 %sub.ptr.lhs.cast439.i, %sub.ptr.rhs.cast440.i
  %conv442.i = trunc i64 %sub.ptr.sub441.i to i32
  %add.ptr445.i = getelementptr inbounds i8* %89, i64 %sub.ptr.sub441.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i32 %conv442.i, i8* %89, i8* %add.ptr445.i) #8
  br label %if.else50

if.then45:                                        ; preds = %while.body
  %90 = load i32* %flags.i, align 4, !tbaa !3
  %and.i = and i32 %90, 8
  %tobool.i = icmp eq i32 %and.i, 0
  %or.i = or i32 %or.i123, 8
  %and.or.i = select i1 %tobool.i, i32 %and, i32 %or.i
  call void @llvm.lifetime.end(i64 4, i8* %8) #3
  %and46 = and i32 %and.or.i, 8
  %tobool47 = icmp eq i32 %and46, 0
  br i1 %tobool47, label %return, label %while.cond

if.else50:                                        ; preds = %if.end435.i, %land.lhs.true423.i, %if.end403.i, %if.then297.i
  %or.i124 = phi i32 [ %58, %if.then297.i ], [ %or.i125, %if.end403.i ], [ %or.i125, %land.lhs.true423.i ], [ %or.i125, %if.end435.i ]
  call void @llvm.lifetime.end(i64 4, i8* %8) #3
  %cmp51 = icmp eq %struct.regnode* %ret.1.ph, null
  %call42.ret.1 = select i1 %cmp51, %struct.regnode* %call.i, %struct.regnode* %ret.1.ph
  %and56 = and i32 %or.i124, 1
  %91 = load i32* %flagp, align 4, !tbaa !3
  %or = or i32 %91, %and56
  store i32 %or, i32* %flagp, align 4, !tbaa !3
  %cmp57 = icmp eq %struct.regnode* %chain.0.ph, null
  br i1 %cmp57, label %if.then59, label %if.else62

if.then59:                                        ; preds = %if.else50
  %and60 = and i32 %or.i124, 4
  %or61 = or i32 %or, %and60
  store i32 %or61, i32* %flagp, align 4, !tbaa !3
  br label %if.end63

if.else62:                                        ; preds = %if.else50
  %92 = load i32* %naughty241.i, align 4, !tbaa !3
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %naughty241.i, align 4, !tbaa !3
  call fastcc void @S_regtail(%struct.RExC_state_t* %pRExC_state, %struct.regnode* %chain.0.ph, %struct.regnode* %call.i) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then59
  %inc64 = add nsw i32 %c.0.ph, 1
  br label %while.cond.outer

while.end:                                        ; preds = %land.lhs.true34, %land.lhs.true34, %while.cond
  %cmp65 = icmp eq %struct.regnode* %chain.0.ph, null
  br i1 %cmp65, label %if.then67, label %if.end73

if.then67:                                        ; preds = %while.end
  %call68 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 36) #9
  %cmp69 = icmp eq %struct.regnode* %ret.1.ph, null
  %call68.ret.1 = select i1 %cmp69, %struct.regnode* %call68, %struct.regnode* %ret.1.ph
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %while.end
  %ret.3 = phi %struct.regnode* [ %ret.1.ph, %while.end ], [ %call68.ret.1, %if.then67 ]
  %cmp74 = icmp eq i32 %c.0.ph, 1
  br i1 %cmp74, label %if.then76, label %return

if.then76:                                        ; preds = %if.end73
  %and77 = and i32 %or.i123, 2
  %93 = load i32* %flagp, align 4, !tbaa !3
  %or78 = or i32 %93, %and77
  store i32 %or78, i32* %flagp, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then45, %if.end73, %if.then76
  %retval.0 = phi %struct.regnode* [ %ret.3, %if.then76 ], [ %ret.3, %if.end73 ], [ null, %if.then45 ]
  ret %struct.regnode* %retval.0
}

; Function Attrs: optsize
declare void @Perl_pmflag(i32*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_reginsert(%struct.RExC_state_t* nocapture %pRExC_state, i8 zeroext %op, %struct.regnode* %opnd) #0 {
entry:
  %idxprom = zext i8 %op to i64
  %arrayidx = getelementptr inbounds [62 x i8]* @regarglen, i64 0, i64 %idxprom
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %1 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %1, @PL_regdummy
  %add = add nsw i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %2 = load i32* %size, align 4, !tbaa !3
  %add2 = add nsw i32 %2, %add
  store i32 %add2, i32* %size, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  %idx.ext207 = zext i32 %add to i64
  %add.ptr = getelementptr inbounds %struct.regnode* %1, i64 %idx.ext207
  store %struct.regnode* %add.ptr, %struct.regnode** %emit, align 8, !tbaa !0
  %cmp7211 = icmp ugt %struct.regnode* %1, %opnd
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  br i1 %cmp7211, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %src.0213 = phi %struct.regnode* [ %1, %while.body.lr.ph ], [ %incdec.ptr9, %while.cond.backedge ]
  %dst.0212 = phi %struct.regnode* [ %add.ptr, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge ]
  %incdec.ptr = getelementptr inbounds %struct.regnode* %dst.0212, i64 -1
  %incdec.ptr9 = getelementptr inbounds %struct.regnode* %src.0213, i64 -1
  %3 = bitcast %struct.regnode* %incdec.ptr9 to i32*
  %4 = bitcast %struct.regnode* %incdec.ptr to i32*
  %5 = load i32* %3, align 2
  store i32 %5, i32* %4, align 2
  %6 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %6, i64 0, i32 7
  %7 = load i32** %offsets, align 8, !tbaa !0
  %tobool = icmp eq i32* %7, null
  br i1 %tobool, label %while.cond.backedge, label %if.then10

if.then10:                                        ; preds = %while.body
  %8 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.regnode* %8, @PL_regdummy
  br i1 %cmp12, label %while.cond.backedge, label %if.then14

if.then14:                                        ; preds = %if.then10
  %9 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp15 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div) #8
  %.pr.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end42

if.else:                                          ; preds = %if.then14
  %sub.ptr.lhs.cast24 = ptrtoint %struct.regnode* %incdec.ptr9 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast
  %mul = ashr exact i64 %sub.ptr.sub26, 1
  %sub = add nsw i64 %mul, -1
  %arrayidx30 = getelementptr inbounds i32* %7, i64 %sub
  %10 = load i32* %arrayidx30, align 4, !tbaa !3
  %mul36 = ashr exact i64 %sub.ptr.sub, 1
  %sub37 = add nsw i64 %mul36, -1
  %arrayidx40 = getelementptr inbounds i32* %7, i64 %sub37
  store i32 %10, i32* %arrayidx40, align 4, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %if.then17, %if.else
  %.pr = phi %struct.regnode* [ %.pr.pre, %if.then17 ], [ %8, %if.else ]
  %cmp44 = icmp eq %struct.regnode* %.pr, @PL_regdummy
  br i1 %cmp44, label %while.cond.backedge, label %if.then46

while.cond.backedge:                              ; preds = %if.end42, %if.else60, %if.then54, %while.body, %if.then10
  %cmp7 = icmp ugt %struct.regnode* %incdec.ptr9, %opnd
  br i1 %cmp7, label %while.body, label %while.end

if.then46:                                        ; preds = %if.end42
  %11 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.rhs.cast49 = ptrtoint %struct.regnode* %11 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast49
  %cmp52 = icmp slt i64 %sub.ptr.sub50, 0
  br i1 %cmp52, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.then46
  %sub.ptr.div51 = ashr exact i64 %sub.ptr.sub50, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div51) #8
  br label %while.cond.backedge

if.else60:                                        ; preds = %if.then46
  %sub.ptr.lhs.cast62 = ptrtoint %struct.regnode* %incdec.ptr9 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast49
  %mul66 = ashr exact i64 %sub.ptr.sub64, 1
  %12 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets68 = getelementptr inbounds %struct.regexp* %12, i64 0, i32 7
  %13 = load i32** %offsets68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %13, i64 %mul66
  %14 = load i32* %arrayidx69, align 4, !tbaa !3
  %mul75 = ashr exact i64 %sub.ptr.sub50, 1
  %arrayidx78 = getelementptr inbounds i32* %13, i64 %mul75
  store i32 %14, i32* %arrayidx78, align 4, !tbaa !3
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end, %while.cond.backedge
  %15 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets83 = getelementptr inbounds %struct.regexp* %15, i64 0, i32 7
  %16 = load i32** %offsets83, align 8, !tbaa !0
  %tobool84 = icmp eq i32* %16, null
  br i1 %tobool84, label %if.end149, label %if.then85

if.then85:                                        ; preds = %while.end
  %17 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp87 = icmp eq %struct.regnode* %17, @PL_regdummy
  br i1 %cmp87, label %if.end149, label %if.then89

if.then89:                                        ; preds = %if.then85
  %emit_start90 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %18 = load %struct.regnode** %emit_start90, align 8, !tbaa !0
  %sub.ptr.lhs.cast91 = ptrtoint %struct.regnode* %opnd to i64
  %sub.ptr.rhs.cast92 = ptrtoint %struct.regnode* %18 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %cmp95 = icmp slt i64 %sub.ptr.sub93, 0
  br i1 %cmp95, label %if.then97, label %if.else103

if.then97:                                        ; preds = %if.then89
  %sub.ptr.div94 = ashr exact i64 %sub.ptr.sub93, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div94) #8
  %.pr209.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end119

if.else103:                                       ; preds = %if.then89
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %19 = load i8** %parse, align 8, !tbaa !0
  %start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %20 = load i8** %start, align 8, !tbaa !0
  %sub.ptr.lhs.cast104 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %20 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %conv107 = trunc i64 %sub.ptr.sub106 to i32
  %mul113 = ashr exact i64 %sub.ptr.sub93, 1
  %sub114 = add nsw i64 %mul113, -1
  %arrayidx117 = getelementptr inbounds i32* %16, i64 %sub114
  store i32 %conv107, i32* %arrayidx117, align 4, !tbaa !3
  br label %if.end119

if.end119:                                        ; preds = %if.then97, %if.else103
  %.pr209 = phi %struct.regnode* [ %.pr209.pre, %if.then97 ], [ %17, %if.else103 ]
  %cmp121 = icmp eq %struct.regnode* %.pr209, @PL_regdummy
  br i1 %cmp121, label %if.end149, label %if.then123

if.then123:                                       ; preds = %if.end119
  %21 = load %struct.regnode** %emit_start90, align 8, !tbaa !0
  %sub.ptr.rhs.cast126 = ptrtoint %struct.regnode* %21 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast126
  %cmp129 = icmp slt i64 %sub.ptr.sub127, 0
  br i1 %cmp129, label %if.then131, label %if.else137

if.then131:                                       ; preds = %if.then123
  %sub.ptr.div128 = ashr exact i64 %sub.ptr.sub127, 2
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div128) #8
  br label %if.end149

if.else137:                                       ; preds = %if.then123
  %mul143 = ashr exact i64 %sub.ptr.sub127, 1
  %22 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets145 = getelementptr inbounds %struct.regexp* %22, i64 0, i32 7
  %23 = load i32** %offsets145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %23, i64 %mul143
  store i32 1, i32* %arrayidx146, align 4, !tbaa !3
  br label %if.end149

if.end149:                                        ; preds = %if.then85, %while.end, %if.end119, %if.else137, %if.then131
  %type = getelementptr inbounds %struct.regnode* %opnd, i64 0, i32 1
  store i8 %op, i8* %type, align 1, !tbaa !1
  %next_off = getelementptr inbounds %struct.regnode* %opnd, i64 0, i32 2
  store i16 0, i16* %next_off, align 2, !tbaa !4
  %24 = getelementptr inbounds %struct.regnode* %opnd, i64 1, i32 0
  %conv152 = zext i8 %0 to i64
  %mul153 = shl nuw nsw i64 %conv152, 2
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %mul153, i32 1, i1 false)
  br label %return

return:                                           ; preds = %if.end149, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_regatom(%struct.RExC_state_t* %pRExC_state, i32* %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  %numlen = alloca i64, align 8
  %foldlen = alloca i64, align 8
  %tmpbuf = alloca [7 x i8], align 1
  %flags1137 = alloca i32, align 4
  %flags1151 = alloca i32, align 4
  %flags1189 = alloca i32, align 4
  %unilen = alloca i64, align 8
  %unilen1397 = alloca i64, align 8
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %0 = load i8** %parse, align 8, !tbaa !0
  store i32 0, i32* %flagp, align 4, !tbaa !3
  %flags1027 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %end1033 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  br label %tryagain.outer

tryagain.outer:                                   ; preds = %if.then189, %entry
  %1 = phi i32 [ undef, %entry ], [ %39, %if.then189 ]
  %2 = phi i8* [ %0, %entry ], [ %40, %if.then189 ]
  br label %tryagain

tryagain:                                         ; preds = %while.end1045, %tryagain.outer
  %3 = phi i8* [ %2, %tryagain.outer ], [ %204, %while.end1045 ]
  %4 = load i8* %3, align 1, !tbaa !1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default1053 [
    i32 94, label %sw.bb
    i32 36, label %sw.bb30
    i32 46, label %sw.bb82
    i32 91, label %sw.bb122
    i32 40, label %sw.bb181
    i32 124, label %sw.bb200
    i32 41, label %sw.bb200
    i32 123, label %sw.bb222
    i32 63, label %sw.bb230
    i32 43, label %sw.bb230
    i32 42, label %sw.bb230
    i32 92, label %sw.bb249
    i32 35, label %sw.bb1026
  ]

sw.bb:                                            ; preds = %tryagain
  %seen_zerolen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %5 = load i32* %seen_zerolen, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %seen_zerolen, align 4, !tbaa !3
  %call = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %6 = load i32* %flags1027, align 4, !tbaa !3
  %and = and i32 %6, 4096
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %call3 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 3) #9
  br label %if.end11

if.else:                                          ; preds = %sw.bb
  %and5 = and i32 %6, 8192
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  %call8 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 4) #9
  br label %if.end11

if.else9:                                         ; preds = %if.else
  %call10 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 2) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else9, %if.then
  %ret.1 = phi %struct.regnode* [ %call3, %if.then ], [ %call8, %if.then7 ], [ %call10, %if.else9 ]
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %7 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %7, @PL_regdummy
  br i1 %cmp, label %sw.epilog1537, label %if.then13

if.then13:                                        ; preds = %if.end11
  %emit_start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %8 = load %struct.regnode** %emit_start, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.regnode* %ret.1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.regnode* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp slt i64 %sub.ptr.sub, 0
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.then13
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div) #8
  br label %sw.epilog1537

if.else22:                                        ; preds = %if.then13
  %mul = ashr exact i64 %sub.ptr.sub, 1
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %9 = load %struct.regexp** %rx, align 8, !tbaa !0
  %offsets = getelementptr inbounds %struct.regexp* %9, i64 0, i32 7
  %10 = load i32** %offsets, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %10, i64 %mul
  store i32 1, i32* %arrayidx, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb30:                                          ; preds = %tryagain
  %call31 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %11 = load i8** %parse, align 8, !tbaa !0
  %12 = load i8* %11, align 1, !tbaa !1
  %tobool33 = icmp eq i8 %12, 0
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %sw.bb30
  %seen_zerolen35 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %13 = load i32* %seen_zerolen35, align 4, !tbaa !3
  %inc36 = add nsw i32 %13, 1
  store i32 %inc36, i32* %seen_zerolen35, align 4, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %sw.bb30, %if.then34
  %14 = load i32* %flags1027, align 4, !tbaa !3
  %and39 = and i32 %14, 4096
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.end37
  %call42 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 7) #9
  br label %if.end52

if.else43:                                        ; preds = %if.end37
  %and45 = and i32 %14, 8192
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.else49, label %if.then47

if.then47:                                        ; preds = %if.else43
  %call48 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 8) #9
  br label %if.end52

if.else49:                                        ; preds = %if.else43
  %call50 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 6) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.else49, %if.then41
  %ret.2 = phi %struct.regnode* [ %call42, %if.then41 ], [ %call48, %if.then47 ], [ %call50, %if.else49 ]
  %emit53 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %15 = load %struct.regnode** %emit53, align 8, !tbaa !0
  %cmp54 = icmp eq %struct.regnode* %15, @PL_regdummy
  br i1 %cmp54, label %sw.epilog1537, label %if.then56

if.then56:                                        ; preds = %if.end52
  %emit_start57 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %16 = load %struct.regnode** %emit_start57, align 8, !tbaa !0
  %sub.ptr.lhs.cast58 = ptrtoint %struct.regnode* %ret.2 to i64
  %sub.ptr.rhs.cast59 = ptrtoint %struct.regnode* %16 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %cmp62 = icmp slt i64 %sub.ptr.sub60, 0
  br i1 %cmp62, label %if.then64, label %if.else70

if.then64:                                        ; preds = %if.then56
  %sub.ptr.div61 = ashr exact i64 %sub.ptr.sub60, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div61) #8
  br label %sw.epilog1537

if.else70:                                        ; preds = %if.then56
  %mul76 = ashr exact i64 %sub.ptr.sub60, 1
  %rx77 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %17 = load %struct.regexp** %rx77, align 8, !tbaa !0
  %offsets78 = getelementptr inbounds %struct.regexp* %17, i64 0, i32 7
  %18 = load i32** %offsets78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i32* %18, i64 %mul76
  store i32 1, i32* %arrayidx79, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb82:                                          ; preds = %tryagain
  %call83 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %19 = load i32* %flags1027, align 4, !tbaa !3
  %and85 = and i32 %19, 8192
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %if.else89, label %if.then87

if.then87:                                        ; preds = %sw.bb82
  %call88 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 15) #9
  br label %if.end91

if.else89:                                        ; preds = %sw.bb82
  %call90 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 14) #9
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  %ret.3 = phi %struct.regnode* [ %call88, %if.then87 ], [ %call90, %if.else89 ]
  %20 = load i32* %flagp, align 4, !tbaa !3
  %or = or i32 %20, 3
  store i32 %or, i32* %flagp, align 4, !tbaa !3
  %naughty = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 9
  %21 = load i32* %naughty, align 4, !tbaa !3
  %inc92 = add nsw i32 %21, 1
  store i32 %inc92, i32* %naughty, align 4, !tbaa !3
  %emit93 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %22 = load %struct.regnode** %emit93, align 8, !tbaa !0
  %cmp94 = icmp eq %struct.regnode* %22, @PL_regdummy
  br i1 %cmp94, label %sw.epilog1537, label %if.then96

if.then96:                                        ; preds = %if.end91
  %emit_start97 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %23 = load %struct.regnode** %emit_start97, align 8, !tbaa !0
  %sub.ptr.lhs.cast98 = ptrtoint %struct.regnode* %ret.3 to i64
  %sub.ptr.rhs.cast99 = ptrtoint %struct.regnode* %23 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %cmp102 = icmp slt i64 %sub.ptr.sub100, 0
  br i1 %cmp102, label %if.then104, label %if.else110

if.then104:                                       ; preds = %if.then96
  %sub.ptr.div101 = ashr exact i64 %sub.ptr.sub100, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div101) #8
  br label %sw.epilog1537

if.else110:                                       ; preds = %if.then96
  %mul116 = ashr exact i64 %sub.ptr.sub100, 1
  %rx117 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %24 = load %struct.regexp** %rx117, align 8, !tbaa !0
  %offsets118 = getelementptr inbounds %struct.regexp* %24, i64 0, i32 7
  %25 = load i32** %offsets118, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i32* %25, i64 %mul116
  store i32 1, i32* %arrayidx119, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb122:                                         ; preds = %tryagain
  %incdec.ptr = getelementptr inbounds i8* %3, i64 1
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %call124 = call fastcc %struct.regnode* @S_regclass(%struct.RExC_state_t* %pRExC_state) #9
  %26 = load i8** %parse, align 8, !tbaa !0
  %27 = load i8* %26, align 1, !tbaa !1
  %cmp127 = icmp eq i8 %27, 93
  br i1 %cmp127, label %sw.bb122.if.end144_crit_edge, label %if.then129

sw.bb122.if.end144_crit_edge:                     ; preds = %sw.bb122
  %emit147.pre = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  br label %if.end144

if.then129:                                       ; preds = %sw.bb122
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %emit131 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %28 = load %struct.regnode** %emit131, align 8, !tbaa !0
  %cmp132 = icmp eq %struct.regnode* %28, @PL_regdummy
  br i1 %cmp132, label %if.end136, label %if.then134

if.then134:                                       ; preds = %if.then129
  %rx135 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %29 = load %struct.regexp** %rx135, align 8, !tbaa !0
  %30 = bitcast %struct.regexp* %29 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %30) #8
  %.pre2236 = load i8** %parse, align 8, !tbaa !0
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.then129
  %31 = phi i8* [ %.pre2236, %if.then134 ], [ %incdec.ptr, %if.then129 ]
  %precomp = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %32 = load i8** %precomp, align 8, !tbaa !0
  %sub.ptr.lhs.cast138 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast139 = ptrtoint i8* %32 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %conv141 = trunc i64 %sub.ptr.sub140 to i32
  %add.ptr = getelementptr inbounds i8* %32, i64 %sub.ptr.sub140
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i32 %conv141, i8* %32, i8* %add.ptr) #8
  br label %if.end144

if.end144:                                        ; preds = %sw.bb122.if.end144_crit_edge, %if.end136
  %emit147.pre-phi = phi %struct.regnode** [ %emit147.pre, %sw.bb122.if.end144_crit_edge ], [ %emit131, %if.end136 ]
  %call145 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %33 = load i32* %flagp, align 4, !tbaa !3
  %or146 = or i32 %33, 3
  store i32 %or146, i32* %flagp, align 4, !tbaa !3
  %34 = load %struct.regnode** %emit147.pre-phi, align 8, !tbaa !0
  %cmp148 = icmp eq %struct.regnode* %34, @PL_regdummy
  br i1 %cmp148, label %sw.epilog1537, label %if.then150

if.then150:                                       ; preds = %if.end144
  %emit_start151 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %35 = load %struct.regnode** %emit_start151, align 8, !tbaa !0
  %sub.ptr.lhs.cast152 = ptrtoint %struct.regnode* %call124 to i64
  %sub.ptr.rhs.cast153 = ptrtoint %struct.regnode* %35 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %cmp156 = icmp slt i64 %sub.ptr.sub154, 0
  br i1 %cmp156, label %if.then158, label %if.else164

if.then158:                                       ; preds = %if.then150
  %sub.ptr.div155 = ashr exact i64 %sub.ptr.sub154, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div155) #8
  br label %sw.epilog1537

if.else164:                                       ; preds = %if.then150
  %36 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast166 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast167 = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.sub168 = sub i64 1, %sub.ptr.rhs.cast167
  %add = add i64 %sub.ptr.sub168, %sub.ptr.lhs.cast166
  %conv169 = trunc i64 %add to i32
  %mul175 = ashr exact i64 %sub.ptr.sub154, 1
  %rx176 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %37 = load %struct.regexp** %rx176, align 8, !tbaa !0
  %offsets177 = getelementptr inbounds %struct.regexp* %37, i64 0, i32 7
  %38 = load i32** %offsets177, align 8, !tbaa !0
  %arrayidx178 = getelementptr inbounds i32* %38, i64 %mul175
  store i32 %conv169, i32* %arrayidx178, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb181:                                         ; preds = %tryagain
  %call182 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %call183 = call fastcc %struct.regnode* @S_reg(%struct.RExC_state_t* %pRExC_state, i32 1, i32* %flags) #9
  %cmp184 = icmp eq %struct.regnode* %call183, null
  %39 = load i32* %flags, align 4, !tbaa !3
  br i1 %cmp184, label %if.then186, label %if.end197

if.then186:                                       ; preds = %sw.bb181
  %and187 = and i32 %39, 8
  %tobool188 = icmp eq i32 %and187, 0
  br i1 %tobool188, label %return, label %if.then189

if.then189:                                       ; preds = %if.then186
  %40 = load i8** %parse, align 8, !tbaa !0
  %41 = load i8** %end1033, align 8, !tbaa !0
  %cmp191 = icmp eq i8* %40, %41
  br i1 %cmp191, label %if.then193, label %tryagain.outer

if.then193:                                       ; preds = %if.then189
  %42 = load i32* %flagp, align 4, !tbaa !3
  %or194 = or i32 %42, 8
  store i32 %or194, i32* %flagp, align 4, !tbaa !3
  br label %return

if.end197:                                        ; preds = %sw.bb181
  %and198 = and i32 %39, 7
  %43 = load i32* %flagp, align 4, !tbaa !3
  %or199 = or i32 %43, %and198
  store i32 %or199, i32* %flagp, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb200:                                         ; preds = %tryagain, %tryagain
  %and201 = and i32 %1, 8
  %tobool202 = icmp eq i32 %and201, 0
  br i1 %tobool202, label %if.end205, label %if.then203

if.then203:                                       ; preds = %sw.bb200
  %44 = load i32* %flagp, align 4, !tbaa !3
  %or204 = or i32 %44, 8
  store i32 %or204, i32* %flagp, align 4, !tbaa !3
  br label %return

if.end205:                                        ; preds = %sw.bb200
  %emit206 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %45 = load %struct.regnode** %emit206, align 8, !tbaa !0
  %cmp207 = icmp eq %struct.regnode* %45, @PL_regdummy
  br i1 %cmp207, label %if.end211, label %if.then209

if.then209:                                       ; preds = %if.end205
  %rx210 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %46 = load %struct.regexp** %rx210, align 8, !tbaa !0
  %47 = bitcast %struct.regexp* %46 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %47) #8
  %.pre2237 = load i8** %parse, align 8, !tbaa !0
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %if.end205
  %48 = phi i8* [ %.pre2237, %if.then209 ], [ %3, %if.end205 ]
  %precomp214 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %49 = load i8** %precomp214, align 8, !tbaa !0
  %sub.ptr.lhs.cast215 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast216 = ptrtoint i8* %49 to i64
  %sub.ptr.sub217 = sub i64 %sub.ptr.lhs.cast215, %sub.ptr.rhs.cast216
  %conv218 = trunc i64 %sub.ptr.sub217 to i32
  %add.ptr221 = getelementptr inbounds i8* %49, i64 %sub.ptr.sub217
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str41, i64 0, i64 0), i32 %conv218, i8* %49, i8* %add.ptr221) #8
  br label %sw.epilog1537

sw.bb222:                                         ; preds = %tryagain
  %call224 = call fastcc i32 @S_regcurly(i8* %3) #9
  %tobool225 = icmp eq i32 %call224, 0
  br i1 %tobool225, label %if.then226, label %sw.bb230

if.then226:                                       ; preds = %sw.bb222
  %incdec.ptr228 = getelementptr inbounds i8* %3, i64 1
  store i8* %incdec.ptr228, i8** %parse, align 8, !tbaa !0
  br label %defchar

sw.bb230:                                         ; preds = %tryagain, %tryagain, %tryagain, %sw.bb222
  %incdec.ptr232 = getelementptr inbounds i8* %3, i64 1
  store i8* %incdec.ptr232, i8** %parse, align 8, !tbaa !0
  %emit233 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %50 = load %struct.regnode** %emit233, align 8, !tbaa !0
  %cmp234 = icmp eq %struct.regnode* %50, @PL_regdummy
  br i1 %cmp234, label %if.end238, label %if.then236

if.then236:                                       ; preds = %sw.bb230
  %rx237 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %51 = load %struct.regexp** %rx237, align 8, !tbaa !0
  %52 = bitcast %struct.regexp* %51 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %52) #8
  %.pre2238 = load i8** %parse, align 8, !tbaa !0
  br label %if.end238

if.end238:                                        ; preds = %if.then236, %sw.bb230
  %53 = phi i8* [ %.pre2238, %if.then236 ], [ %incdec.ptr232, %sw.bb230 ]
  %precomp241 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %54 = load i8** %precomp241, align 8, !tbaa !0
  %sub.ptr.lhs.cast242 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast243 = ptrtoint i8* %54 to i64
  %sub.ptr.sub244 = sub i64 %sub.ptr.lhs.cast242, %sub.ptr.rhs.cast243
  %conv245 = trunc i64 %sub.ptr.sub244 to i32
  %add.ptr248 = getelementptr inbounds i8* %54, i64 %sub.ptr.sub244
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str42, i64 0, i64 0), i32 %conv245, i8* %54, i8* %add.ptr248) #8
  br label %sw.epilog1537

sw.bb249:                                         ; preds = %tryagain
  %incdec.ptr251 = getelementptr inbounds i8* %3, i64 1
  store i8* %incdec.ptr251, i8** %parse, align 8, !tbaa !0
  %55 = load i8* %incdec.ptr251, align 1, !tbaa !1
  %conv252 = sext i8 %55 to i32
  switch i32 %conv252, label %sw.default [
    i32 65, label %sw.bb253
    i32 71, label %sw.bb288
    i32 90, label %sw.bb322
    i32 122, label %sw.bb328
    i32 67, label %sw.bb363
    i32 88, label %sw.bb398
    i32 119, label %sw.bb431
    i32 87, label %sw.bb469
    i32 98, label %sw.bb508
    i32 66, label %sw.bb551
    i32 115, label %sw.bb594
    i32 83, label %sw.bb633
    i32 100, label %sw.bb672
    i32 68, label %sw.bb705
    i32 112, label %sw.bb738
    i32 80, label %sw.bb738
    i32 110, label %defchar
    i32 114, label %defchar
    i32 116, label %defchar
    i32 102, label %defchar
    i32 101, label %defchar
    i32 97, label %defchar
    i32 120, label %defchar
    i32 99, label %defchar
    i32 48, label %defchar
    i32 49, label %sw.bb867
    i32 50, label %sw.bb867
    i32 51, label %sw.bb867
    i32 52, label %sw.bb867
    i32 53, label %sw.bb867
    i32 54, label %sw.bb867
    i32 55, label %sw.bb867
    i32 56, label %sw.bb867
    i32 57, label %sw.bb867
    i32 0, label %sw.bb1001
  ]

sw.bb253:                                         ; preds = %sw.bb249
  %seen_zerolen254 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %56 = load i32* %seen_zerolen254, align 4, !tbaa !3
  %inc255 = add nsw i32 %56, 1
  store i32 %inc255, i32* %seen_zerolen254, align 4, !tbaa !3
  %call256 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 4) #9
  %57 = load i32* %flagp, align 4, !tbaa !3
  %or257 = or i32 %57, 2
  store i32 %or257, i32* %flagp, align 4, !tbaa !3
  %call258 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit259 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %58 = load %struct.regnode** %emit259, align 8, !tbaa !0
  %cmp260 = icmp eq %struct.regnode* %58, @PL_regdummy
  br i1 %cmp260, label %sw.epilog1537, label %if.then262

if.then262:                                       ; preds = %sw.bb253
  %emit_start263 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %59 = load %struct.regnode** %emit_start263, align 8, !tbaa !0
  %sub.ptr.lhs.cast264 = ptrtoint %struct.regnode* %call256 to i64
  %sub.ptr.rhs.cast265 = ptrtoint %struct.regnode* %59 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %cmp268 = icmp slt i64 %sub.ptr.sub266, 0
  br i1 %cmp268, label %if.then270, label %if.else276

if.then270:                                       ; preds = %if.then262
  %sub.ptr.div267 = ashr exact i64 %sub.ptr.sub266, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div267) #8
  br label %sw.epilog1537

if.else276:                                       ; preds = %if.then262
  %mul282 = ashr exact i64 %sub.ptr.sub266, 1
  %rx283 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %60 = load %struct.regexp** %rx283, align 8, !tbaa !0
  %offsets284 = getelementptr inbounds %struct.regexp* %60, i64 0, i32 7
  %61 = load i32** %offsets284, align 8, !tbaa !0
  %arrayidx285 = getelementptr inbounds i32* %61, i64 %mul282
  store i32 2, i32* %arrayidx285, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb288:                                         ; preds = %sw.bb249
  %call289 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 13) #9
  %seen = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %62 = load i32* %seen, align 4, !tbaa !3
  %or290 = or i32 %62, 4
  store i32 %or290, i32* %seen, align 4, !tbaa !3
  %63 = load i32* %flagp, align 4, !tbaa !3
  %or291 = or i32 %63, 2
  store i32 %or291, i32* %flagp, align 4, !tbaa !3
  %call292 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit293 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %64 = load %struct.regnode** %emit293, align 8, !tbaa !0
  %cmp294 = icmp eq %struct.regnode* %64, @PL_regdummy
  br i1 %cmp294, label %sw.epilog1537, label %if.then296

if.then296:                                       ; preds = %sw.bb288
  %emit_start297 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %65 = load %struct.regnode** %emit_start297, align 8, !tbaa !0
  %sub.ptr.lhs.cast298 = ptrtoint %struct.regnode* %call289 to i64
  %sub.ptr.rhs.cast299 = ptrtoint %struct.regnode* %65 to i64
  %sub.ptr.sub300 = sub i64 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %cmp302 = icmp slt i64 %sub.ptr.sub300, 0
  br i1 %cmp302, label %if.then304, label %if.else310

if.then304:                                       ; preds = %if.then296
  %sub.ptr.div301 = ashr exact i64 %sub.ptr.sub300, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div301) #8
  br label %sw.epilog1537

if.else310:                                       ; preds = %if.then296
  %mul316 = ashr exact i64 %sub.ptr.sub300, 1
  %rx317 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %66 = load %struct.regexp** %rx317, align 8, !tbaa !0
  %offsets318 = getelementptr inbounds %struct.regexp* %66, i64 0, i32 7
  %67 = load i32** %offsets318, align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds i32* %67, i64 %mul316
  store i32 2, i32* %arrayidx319, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb322:                                         ; preds = %sw.bb249
  %call323 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 8) #9
  %68 = load i32* %flagp, align 4, !tbaa !3
  %or324 = or i32 %68, 2
  store i32 %or324, i32* %flagp, align 4, !tbaa !3
  %seen_zerolen325 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %69 = load i32* %seen_zerolen325, align 4, !tbaa !3
  %inc326 = add nsw i32 %69, 1
  store i32 %inc326, i32* %seen_zerolen325, align 4, !tbaa !3
  %call327 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  br label %sw.epilog1537

sw.bb328:                                         ; preds = %sw.bb249
  %call329 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 5) #9
  %70 = load i32* %flagp, align 4, !tbaa !3
  %or330 = or i32 %70, 2
  store i32 %or330, i32* %flagp, align 4, !tbaa !3
  %seen_zerolen331 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %71 = load i32* %seen_zerolen331, align 4, !tbaa !3
  %inc332 = add nsw i32 %71, 1
  store i32 %inc332, i32* %seen_zerolen331, align 4, !tbaa !3
  %call333 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit334 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %72 = load %struct.regnode** %emit334, align 8, !tbaa !0
  %cmp335 = icmp eq %struct.regnode* %72, @PL_regdummy
  br i1 %cmp335, label %sw.epilog1537, label %if.then337

if.then337:                                       ; preds = %sw.bb328
  %emit_start338 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %73 = load %struct.regnode** %emit_start338, align 8, !tbaa !0
  %sub.ptr.lhs.cast339 = ptrtoint %struct.regnode* %call329 to i64
  %sub.ptr.rhs.cast340 = ptrtoint %struct.regnode* %73 to i64
  %sub.ptr.sub341 = sub i64 %sub.ptr.lhs.cast339, %sub.ptr.rhs.cast340
  %cmp343 = icmp slt i64 %sub.ptr.sub341, 0
  br i1 %cmp343, label %if.then345, label %if.else351

if.then345:                                       ; preds = %if.then337
  %sub.ptr.div342 = ashr exact i64 %sub.ptr.sub341, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div342) #8
  br label %sw.epilog1537

if.else351:                                       ; preds = %if.then337
  %mul357 = ashr exact i64 %sub.ptr.sub341, 1
  %rx358 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %74 = load %struct.regexp** %rx358, align 8, !tbaa !0
  %offsets359 = getelementptr inbounds %struct.regexp* %74, i64 0, i32 7
  %75 = load i32** %offsets359, align 8, !tbaa !0
  %arrayidx360 = getelementptr inbounds i32* %75, i64 %mul357
  store i32 2, i32* %arrayidx360, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb363:                                         ; preds = %sw.bb249
  %call364 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 16) #9
  %seen365 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %76 = load i32* %seen365, align 4, !tbaa !3
  %or366 = or i32 %76, 16
  store i32 %or366, i32* %seen365, align 4, !tbaa !3
  %77 = load i32* %flagp, align 4, !tbaa !3
  %or367 = or i32 %77, 3
  store i32 %or367, i32* %flagp, align 4, !tbaa !3
  %call368 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit369 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %78 = load %struct.regnode** %emit369, align 8, !tbaa !0
  %cmp370 = icmp eq %struct.regnode* %78, @PL_regdummy
  br i1 %cmp370, label %sw.epilog1537, label %if.then372

if.then372:                                       ; preds = %sw.bb363
  %emit_start373 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %79 = load %struct.regnode** %emit_start373, align 8, !tbaa !0
  %sub.ptr.lhs.cast374 = ptrtoint %struct.regnode* %call364 to i64
  %sub.ptr.rhs.cast375 = ptrtoint %struct.regnode* %79 to i64
  %sub.ptr.sub376 = sub i64 %sub.ptr.lhs.cast374, %sub.ptr.rhs.cast375
  %cmp378 = icmp slt i64 %sub.ptr.sub376, 0
  br i1 %cmp378, label %if.then380, label %if.else386

if.then380:                                       ; preds = %if.then372
  %sub.ptr.div377 = ashr exact i64 %sub.ptr.sub376, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div377) #8
  br label %sw.epilog1537

if.else386:                                       ; preds = %if.then372
  %mul392 = ashr exact i64 %sub.ptr.sub376, 1
  %rx393 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %80 = load %struct.regexp** %rx393, align 8, !tbaa !0
  %offsets394 = getelementptr inbounds %struct.regexp* %80, i64 0, i32 7
  %81 = load i32** %offsets394, align 8, !tbaa !0
  %arrayidx395 = getelementptr inbounds i32* %81, i64 %mul392
  store i32 2, i32* %arrayidx395, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb398:                                         ; preds = %sw.bb249
  %call399 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 30) #9
  %82 = load i32* %flagp, align 4, !tbaa !3
  %or400 = or i32 %82, 1
  store i32 %or400, i32* %flagp, align 4, !tbaa !3
  %call401 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit402 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %83 = load %struct.regnode** %emit402, align 8, !tbaa !0
  %cmp403 = icmp eq %struct.regnode* %83, @PL_regdummy
  br i1 %cmp403, label %sw.epilog1537, label %if.then405

if.then405:                                       ; preds = %sw.bb398
  %emit_start406 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %84 = load %struct.regnode** %emit_start406, align 8, !tbaa !0
  %sub.ptr.lhs.cast407 = ptrtoint %struct.regnode* %call399 to i64
  %sub.ptr.rhs.cast408 = ptrtoint %struct.regnode* %84 to i64
  %sub.ptr.sub409 = sub i64 %sub.ptr.lhs.cast407, %sub.ptr.rhs.cast408
  %cmp411 = icmp slt i64 %sub.ptr.sub409, 0
  br i1 %cmp411, label %if.then413, label %if.else419

if.then413:                                       ; preds = %if.then405
  %sub.ptr.div410 = ashr exact i64 %sub.ptr.sub409, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div410) #8
  br label %sw.epilog1537

if.else419:                                       ; preds = %if.then405
  %mul425 = ashr exact i64 %sub.ptr.sub409, 1
  %rx426 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %85 = load %struct.regexp** %rx426, align 8, !tbaa !0
  %offsets427 = getelementptr inbounds %struct.regexp* %85, i64 0, i32 7
  %86 = load i32** %offsets427, align 8, !tbaa !0
  %arrayidx428 = getelementptr inbounds i32* %86, i64 %mul425
  store i32 2, i32* %arrayidx428, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb431:                                         ; preds = %sw.bb249
  %87 = load i32* %flags1027, align 4, !tbaa !3
  %and433 = lshr i32 %87, 11
  %88 = and i32 %and433, 1
  %89 = or i32 %88, 18
  %conv436 = trunc i32 %89 to i8
  %call437 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv436) #9
  %90 = load i32* %flagp, align 4, !tbaa !3
  %or438 = or i32 %90, 3
  store i32 %or438, i32* %flagp, align 4, !tbaa !3
  %call439 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit440 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %91 = load %struct.regnode** %emit440, align 8, !tbaa !0
  %cmp441 = icmp eq %struct.regnode* %91, @PL_regdummy
  br i1 %cmp441, label %sw.epilog1537, label %if.then443

if.then443:                                       ; preds = %sw.bb431
  %emit_start444 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %92 = load %struct.regnode** %emit_start444, align 8, !tbaa !0
  %sub.ptr.lhs.cast445 = ptrtoint %struct.regnode* %call437 to i64
  %sub.ptr.rhs.cast446 = ptrtoint %struct.regnode* %92 to i64
  %sub.ptr.sub447 = sub i64 %sub.ptr.lhs.cast445, %sub.ptr.rhs.cast446
  %cmp449 = icmp slt i64 %sub.ptr.sub447, 0
  br i1 %cmp449, label %if.then451, label %if.else457

if.then451:                                       ; preds = %if.then443
  %sub.ptr.div448 = ashr exact i64 %sub.ptr.sub447, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div448) #8
  br label %sw.epilog1537

if.else457:                                       ; preds = %if.then443
  %mul463 = ashr exact i64 %sub.ptr.sub447, 1
  %rx464 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %93 = load %struct.regexp** %rx464, align 8, !tbaa !0
  %offsets465 = getelementptr inbounds %struct.regexp* %93, i64 0, i32 7
  %94 = load i32** %offsets465, align 8, !tbaa !0
  %arrayidx466 = getelementptr inbounds i32* %94, i64 %mul463
  store i32 2, i32* %arrayidx466, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb469:                                         ; preds = %sw.bb249
  %95 = load i32* %flags1027, align 4, !tbaa !3
  %and471 = lshr i32 %95, 11
  %96 = and i32 %and471, 1
  %97 = or i32 %96, 20
  %conv475 = trunc i32 %97 to i8
  %call476 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv475) #9
  %98 = load i32* %flagp, align 4, !tbaa !3
  %or477 = or i32 %98, 3
  store i32 %or477, i32* %flagp, align 4, !tbaa !3
  %call478 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit479 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %99 = load %struct.regnode** %emit479, align 8, !tbaa !0
  %cmp480 = icmp eq %struct.regnode* %99, @PL_regdummy
  br i1 %cmp480, label %sw.epilog1537, label %if.then482

if.then482:                                       ; preds = %sw.bb469
  %emit_start483 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %100 = load %struct.regnode** %emit_start483, align 8, !tbaa !0
  %sub.ptr.lhs.cast484 = ptrtoint %struct.regnode* %call476 to i64
  %sub.ptr.rhs.cast485 = ptrtoint %struct.regnode* %100 to i64
  %sub.ptr.sub486 = sub i64 %sub.ptr.lhs.cast484, %sub.ptr.rhs.cast485
  %cmp488 = icmp slt i64 %sub.ptr.sub486, 0
  br i1 %cmp488, label %if.then490, label %if.else496

if.then490:                                       ; preds = %if.then482
  %sub.ptr.div487 = ashr exact i64 %sub.ptr.sub486, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div487) #8
  br label %sw.epilog1537

if.else496:                                       ; preds = %if.then482
  %mul502 = ashr exact i64 %sub.ptr.sub486, 1
  %rx503 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %101 = load %struct.regexp** %rx503, align 8, !tbaa !0
  %offsets504 = getelementptr inbounds %struct.regexp* %101, i64 0, i32 7
  %102 = load i32** %offsets504, align 8, !tbaa !0
  %arrayidx505 = getelementptr inbounds i32* %102, i64 %mul502
  store i32 2, i32* %arrayidx505, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb508:                                         ; preds = %sw.bb249
  %seen_zerolen509 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %103 = load i32* %seen_zerolen509, align 4, !tbaa !3
  %inc510 = add nsw i32 %103, 1
  store i32 %inc510, i32* %seen_zerolen509, align 4, !tbaa !3
  %seen511 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %104 = load i32* %seen511, align 4, !tbaa !3
  %or512 = or i32 %104, 2
  store i32 %or512, i32* %seen511, align 4, !tbaa !3
  %105 = load i32* %flags1027, align 4, !tbaa !3
  %and514 = lshr i32 %105, 11
  %106 = and i32 %and514, 1
  %107 = add i32 %106, 9
  %conv518 = trunc i32 %107 to i8
  %call519 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv518) #9
  %108 = load i32* %flagp, align 4, !tbaa !3
  %or520 = or i32 %108, 2
  store i32 %or520, i32* %flagp, align 4, !tbaa !3
  %call521 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit522 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %109 = load %struct.regnode** %emit522, align 8, !tbaa !0
  %cmp523 = icmp eq %struct.regnode* %109, @PL_regdummy
  br i1 %cmp523, label %sw.epilog1537, label %if.then525

if.then525:                                       ; preds = %sw.bb508
  %emit_start526 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %110 = load %struct.regnode** %emit_start526, align 8, !tbaa !0
  %sub.ptr.lhs.cast527 = ptrtoint %struct.regnode* %call519 to i64
  %sub.ptr.rhs.cast528 = ptrtoint %struct.regnode* %110 to i64
  %sub.ptr.sub529 = sub i64 %sub.ptr.lhs.cast527, %sub.ptr.rhs.cast528
  %cmp531 = icmp slt i64 %sub.ptr.sub529, 0
  br i1 %cmp531, label %if.then533, label %if.else539

if.then533:                                       ; preds = %if.then525
  %sub.ptr.div530 = ashr exact i64 %sub.ptr.sub529, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div530) #8
  br label %sw.epilog1537

if.else539:                                       ; preds = %if.then525
  %mul545 = ashr exact i64 %sub.ptr.sub529, 1
  %rx546 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %111 = load %struct.regexp** %rx546, align 8, !tbaa !0
  %offsets547 = getelementptr inbounds %struct.regexp* %111, i64 0, i32 7
  %112 = load i32** %offsets547, align 8, !tbaa !0
  %arrayidx548 = getelementptr inbounds i32* %112, i64 %mul545
  store i32 2, i32* %arrayidx548, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb551:                                         ; preds = %sw.bb249
  %seen_zerolen552 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 15
  %113 = load i32* %seen_zerolen552, align 4, !tbaa !3
  %inc553 = add nsw i32 %113, 1
  store i32 %inc553, i32* %seen_zerolen552, align 4, !tbaa !3
  %seen554 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 11
  %114 = load i32* %seen554, align 4, !tbaa !3
  %or555 = or i32 %114, 2
  store i32 %or555, i32* %seen554, align 4, !tbaa !3
  %115 = load i32* %flags1027, align 4, !tbaa !3
  %and557 = lshr i32 %115, 11
  %116 = and i32 %and557, 1
  %117 = add i32 %116, 11
  %conv561 = trunc i32 %117 to i8
  %call562 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv561) #9
  %118 = load i32* %flagp, align 4, !tbaa !3
  %or563 = or i32 %118, 2
  store i32 %or563, i32* %flagp, align 4, !tbaa !3
  %call564 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit565 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %119 = load %struct.regnode** %emit565, align 8, !tbaa !0
  %cmp566 = icmp eq %struct.regnode* %119, @PL_regdummy
  br i1 %cmp566, label %sw.epilog1537, label %if.then568

if.then568:                                       ; preds = %sw.bb551
  %emit_start569 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %120 = load %struct.regnode** %emit_start569, align 8, !tbaa !0
  %sub.ptr.lhs.cast570 = ptrtoint %struct.regnode* %call562 to i64
  %sub.ptr.rhs.cast571 = ptrtoint %struct.regnode* %120 to i64
  %sub.ptr.sub572 = sub i64 %sub.ptr.lhs.cast570, %sub.ptr.rhs.cast571
  %cmp574 = icmp slt i64 %sub.ptr.sub572, 0
  br i1 %cmp574, label %if.then576, label %if.else582

if.then576:                                       ; preds = %if.then568
  %sub.ptr.div573 = ashr exact i64 %sub.ptr.sub572, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div573) #8
  br label %sw.epilog1537

if.else582:                                       ; preds = %if.then568
  %mul588 = ashr exact i64 %sub.ptr.sub572, 1
  %rx589 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %121 = load %struct.regexp** %rx589, align 8, !tbaa !0
  %offsets590 = getelementptr inbounds %struct.regexp* %121, i64 0, i32 7
  %122 = load i32** %offsets590, align 8, !tbaa !0
  %arrayidx591 = getelementptr inbounds i32* %122, i64 %mul588
  store i32 2, i32* %arrayidx591, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb594:                                         ; preds = %sw.bb249
  %123 = load i32* %flags1027, align 4, !tbaa !3
  %and596 = lshr i32 %123, 11
  %124 = and i32 %and596, 1
  %125 = or i32 %124, 22
  %conv600 = trunc i32 %125 to i8
  %call601 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv600) #9
  %126 = load i32* %flagp, align 4, !tbaa !3
  %or602 = or i32 %126, 3
  store i32 %or602, i32* %flagp, align 4, !tbaa !3
  %call603 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit604 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %127 = load %struct.regnode** %emit604, align 8, !tbaa !0
  %cmp605 = icmp eq %struct.regnode* %127, @PL_regdummy
  br i1 %cmp605, label %sw.epilog1537, label %if.then607

if.then607:                                       ; preds = %sw.bb594
  %emit_start608 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %128 = load %struct.regnode** %emit_start608, align 8, !tbaa !0
  %sub.ptr.lhs.cast609 = ptrtoint %struct.regnode* %call601 to i64
  %sub.ptr.rhs.cast610 = ptrtoint %struct.regnode* %128 to i64
  %sub.ptr.sub611 = sub i64 %sub.ptr.lhs.cast609, %sub.ptr.rhs.cast610
  %cmp613 = icmp slt i64 %sub.ptr.sub611, 0
  br i1 %cmp613, label %if.then615, label %if.else621

if.then615:                                       ; preds = %if.then607
  %sub.ptr.div612 = ashr exact i64 %sub.ptr.sub611, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div612) #8
  br label %sw.epilog1537

if.else621:                                       ; preds = %if.then607
  %mul627 = ashr exact i64 %sub.ptr.sub611, 1
  %rx628 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %129 = load %struct.regexp** %rx628, align 8, !tbaa !0
  %offsets629 = getelementptr inbounds %struct.regexp* %129, i64 0, i32 7
  %130 = load i32** %offsets629, align 8, !tbaa !0
  %arrayidx630 = getelementptr inbounds i32* %130, i64 %mul627
  store i32 2, i32* %arrayidx630, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb633:                                         ; preds = %sw.bb249
  %131 = load i32* %flags1027, align 4, !tbaa !3
  %and635 = lshr i32 %131, 11
  %132 = and i32 %and635, 1
  %133 = or i32 %132, 24
  %conv639 = trunc i32 %133 to i8
  %call640 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %conv639) #9
  %134 = load i32* %flagp, align 4, !tbaa !3
  %or641 = or i32 %134, 3
  store i32 %or641, i32* %flagp, align 4, !tbaa !3
  %call642 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit643 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %135 = load %struct.regnode** %emit643, align 8, !tbaa !0
  %cmp644 = icmp eq %struct.regnode* %135, @PL_regdummy
  br i1 %cmp644, label %sw.epilog1537, label %if.then646

if.then646:                                       ; preds = %sw.bb633
  %emit_start647 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %136 = load %struct.regnode** %emit_start647, align 8, !tbaa !0
  %sub.ptr.lhs.cast648 = ptrtoint %struct.regnode* %call640 to i64
  %sub.ptr.rhs.cast649 = ptrtoint %struct.regnode* %136 to i64
  %sub.ptr.sub650 = sub i64 %sub.ptr.lhs.cast648, %sub.ptr.rhs.cast649
  %cmp652 = icmp slt i64 %sub.ptr.sub650, 0
  br i1 %cmp652, label %if.then654, label %if.else660

if.then654:                                       ; preds = %if.then646
  %sub.ptr.div651 = ashr exact i64 %sub.ptr.sub650, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div651) #8
  br label %sw.epilog1537

if.else660:                                       ; preds = %if.then646
  %mul666 = ashr exact i64 %sub.ptr.sub650, 1
  %rx667 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %137 = load %struct.regexp** %rx667, align 8, !tbaa !0
  %offsets668 = getelementptr inbounds %struct.regexp* %137, i64 0, i32 7
  %138 = load i32** %offsets668, align 8, !tbaa !0
  %arrayidx669 = getelementptr inbounds i32* %138, i64 %mul666
  store i32 2, i32* %arrayidx669, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb672:                                         ; preds = %sw.bb249
  %call673 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 26) #9
  %139 = load i32* %flagp, align 4, !tbaa !3
  %or674 = or i32 %139, 3
  store i32 %or674, i32* %flagp, align 4, !tbaa !3
  %call675 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit676 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %140 = load %struct.regnode** %emit676, align 8, !tbaa !0
  %cmp677 = icmp eq %struct.regnode* %140, @PL_regdummy
  br i1 %cmp677, label %sw.epilog1537, label %if.then679

if.then679:                                       ; preds = %sw.bb672
  %emit_start680 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %141 = load %struct.regnode** %emit_start680, align 8, !tbaa !0
  %sub.ptr.lhs.cast681 = ptrtoint %struct.regnode* %call673 to i64
  %sub.ptr.rhs.cast682 = ptrtoint %struct.regnode* %141 to i64
  %sub.ptr.sub683 = sub i64 %sub.ptr.lhs.cast681, %sub.ptr.rhs.cast682
  %cmp685 = icmp slt i64 %sub.ptr.sub683, 0
  br i1 %cmp685, label %if.then687, label %if.else693

if.then687:                                       ; preds = %if.then679
  %sub.ptr.div684 = ashr exact i64 %sub.ptr.sub683, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div684) #8
  br label %sw.epilog1537

if.else693:                                       ; preds = %if.then679
  %mul699 = ashr exact i64 %sub.ptr.sub683, 1
  %rx700 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %142 = load %struct.regexp** %rx700, align 8, !tbaa !0
  %offsets701 = getelementptr inbounds %struct.regexp* %142, i64 0, i32 7
  %143 = load i32** %offsets701, align 8, !tbaa !0
  %arrayidx702 = getelementptr inbounds i32* %143, i64 %mul699
  store i32 2, i32* %arrayidx702, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb705:                                         ; preds = %sw.bb249
  %call706 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext 28) #9
  %144 = load i32* %flagp, align 4, !tbaa !3
  %or707 = or i32 %144, 3
  store i32 %or707, i32* %flagp, align 4, !tbaa !3
  %call708 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %emit709 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %145 = load %struct.regnode** %emit709, align 8, !tbaa !0
  %cmp710 = icmp eq %struct.regnode* %145, @PL_regdummy
  br i1 %cmp710, label %sw.epilog1537, label %if.then712

if.then712:                                       ; preds = %sw.bb705
  %emit_start713 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %146 = load %struct.regnode** %emit_start713, align 8, !tbaa !0
  %sub.ptr.lhs.cast714 = ptrtoint %struct.regnode* %call706 to i64
  %sub.ptr.rhs.cast715 = ptrtoint %struct.regnode* %146 to i64
  %sub.ptr.sub716 = sub i64 %sub.ptr.lhs.cast714, %sub.ptr.rhs.cast715
  %cmp718 = icmp slt i64 %sub.ptr.sub716, 0
  br i1 %cmp718, label %if.then720, label %if.else726

if.then720:                                       ; preds = %if.then712
  %sub.ptr.div717 = ashr exact i64 %sub.ptr.sub716, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div717) #8
  br label %sw.epilog1537

if.else726:                                       ; preds = %if.then712
  %mul732 = ashr exact i64 %sub.ptr.sub716, 1
  %rx733 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %147 = load %struct.regexp** %rx733, align 8, !tbaa !0
  %offsets734 = getelementptr inbounds %struct.regexp* %147, i64 0, i32 7
  %148 = load i32** %offsets734, align 8, !tbaa !0
  %arrayidx735 = getelementptr inbounds i32* %148, i64 %mul732
  store i32 2, i32* %arrayidx735, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb738:                                         ; preds = %sw.bb249, %sw.bb249
  %149 = load i8** %end1033, align 8, !tbaa !0
  %add.ptr742 = getelementptr inbounds i8* %3, i64 -1
  %arrayidx744 = getelementptr inbounds i8* %3, i64 2
  %150 = load i8* %arrayidx744, align 1, !tbaa !1
  %cmp746 = icmp eq i8 %150, 123
  br i1 %cmp746, label %if.then748, label %if.else779

if.then748:                                       ; preds = %sw.bb738
  %call750 = call i8* @strchr(i8* %incdec.ptr251, i32 125) #8
  store i8* %call750, i8** %end1033, align 8, !tbaa !0
  %tobool753 = icmp eq i8* %call750, null
  br i1 %tobool753, label %if.then754, label %if.end776

if.then754:                                       ; preds = %if.then748
  %151 = load i8* %incdec.ptr251, align 1, !tbaa !1
  %add.ptr757 = getelementptr inbounds i8* %3, i64 3
  store i8* %add.ptr757, i8** %parse, align 8, !tbaa !0
  store i8* %149, i8** %end1033, align 8, !tbaa !0
  %emit759 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %152 = load %struct.regnode** %emit759, align 8, !tbaa !0
  %cmp760 = icmp eq %struct.regnode* %152, @PL_regdummy
  br i1 %cmp760, label %if.end764, label %if.then762

if.then762:                                       ; preds = %if.then754
  %rx763 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %153 = load %struct.regexp** %rx763, align 8, !tbaa !0
  %154 = bitcast %struct.regexp* %153 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %154) #8
  %.pre2239 = load i8** %parse, align 8, !tbaa !0
  br label %if.end764

if.end764:                                        ; preds = %if.then762, %if.then754
  %155 = phi i8* [ %.pre2239, %if.then762 ], [ %add.ptr757, %if.then754 ]
  %precomp767 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %156 = load i8** %precomp767, align 8, !tbaa !0
  %sub.ptr.lhs.cast768 = ptrtoint i8* %155 to i64
  %sub.ptr.rhs.cast769 = ptrtoint i8* %156 to i64
  %sub.ptr.sub770 = sub i64 %sub.ptr.lhs.cast768, %sub.ptr.rhs.cast769
  %conv771 = zext i8 %151 to i32
  %conv772 = trunc i64 %sub.ptr.sub770 to i32
  %add.ptr775 = getelementptr inbounds i8* %156, i64 %sub.ptr.sub770
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([29 x i8]* @.str43, i64 0, i64 0), i32 %conv771, i32 %conv772, i8* %156, i8* %add.ptr775) #9
  %.pre2240 = load i8** %end1033, align 8, !tbaa !0
  %.pre2241.pre = load i8** %parse, align 8, !tbaa !0
  br label %if.end776

if.end776:                                        ; preds = %if.then748, %if.end764
  %.pre2241 = phi i8* [ %incdec.ptr251, %if.then748 ], [ %.pre2241.pre, %if.end764 ]
  %157 = phi i8* [ %call750, %if.then748 ], [ %.pre2240, %if.end764 ]
  %incdec.ptr778 = getelementptr inbounds i8* %157, i64 1
  br label %if.end789

if.else779:                                       ; preds = %sw.bb738
  %add.ptr781 = getelementptr inbounds i8* %3, i64 3
  %cmp784 = icmp ugt i8* %add.ptr781, %149
  %.add.ptr781 = select i1 %cmp784, i8* %149, i8* %add.ptr781
  br label %if.end789

if.end789:                                        ; preds = %if.else779, %if.end776
  %158 = phi i8* [ %incdec.ptr251, %if.else779 ], [ %.pre2241, %if.end776 ]
  %storemerge = phi i8* [ %.add.ptr781, %if.else779 ], [ %incdec.ptr778, %if.end776 ]
  store i8* %storemerge, i8** %end1033, align 8, !tbaa !0
  %incdec.ptr791 = getelementptr inbounds i8* %158, i64 -1
  store i8* %incdec.ptr791, i8** %parse, align 8, !tbaa !0
  %call792 = call fastcc %struct.regnode* @S_regclass(%struct.RExC_state_t* %pRExC_state) #9
  store i8* %149, i8** %end1033, align 8, !tbaa !0
  %159 = load i8** %parse, align 8, !tbaa !0
  %incdec.ptr795 = getelementptr inbounds i8* %159, i64 -1
  store i8* %incdec.ptr795, i8** %parse, align 8, !tbaa !0
  %emit796 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %160 = load %struct.regnode** %emit796, align 8, !tbaa !0
  %cmp797 = icmp eq %struct.regnode* %160, @PL_regdummy
  br i1 %cmp797, label %if.end863, label %if.then799

if.then799:                                       ; preds = %if.end789
  %emit_start800 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %161 = load %struct.regnode** %emit_start800, align 8, !tbaa !0
  %sub.ptr.lhs.cast801 = ptrtoint %struct.regnode* %call792 to i64
  %sub.ptr.rhs.cast802 = ptrtoint %struct.regnode* %161 to i64
  %sub.ptr.sub803 = sub i64 %sub.ptr.lhs.cast801, %sub.ptr.rhs.cast802
  %cmp805 = icmp slt i64 %sub.ptr.sub803, 0
  br i1 %cmp805, label %if.then807, label %if.else813

if.then807:                                       ; preds = %if.then799
  %sub.ptr.div804 = ashr exact i64 %sub.ptr.sub803, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div804) #8
  %.pr.pre = load %struct.regnode** %emit796, align 8, !tbaa !0
  br label %if.end829

if.else813:                                       ; preds = %if.then799
  %start = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %162 = load i8** %start, align 8, !tbaa !0
  %sub.ptr.lhs.cast815 = ptrtoint i8* %incdec.ptr251 to i64
  %sub.ptr.rhs.cast816 = ptrtoint i8* %162 to i64
  %sub.ptr.sub817 = sub i64 %sub.ptr.lhs.cast815, %sub.ptr.rhs.cast816
  %conv818 = trunc i64 %sub.ptr.sub817 to i32
  %mul824 = ashr exact i64 %sub.ptr.sub803, 1
  %sub = add nsw i64 %mul824, -1
  %rx825 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %163 = load %struct.regexp** %rx825, align 8, !tbaa !0
  %offsets826 = getelementptr inbounds %struct.regexp* %163, i64 0, i32 7
  %164 = load i32** %offsets826, align 8, !tbaa !0
  %arrayidx827 = getelementptr inbounds i32* %164, i64 %sub
  store i32 %conv818, i32* %arrayidx827, align 4, !tbaa !3
  br label %if.end829

if.end829:                                        ; preds = %if.then807, %if.else813
  %.pr = phi %struct.regnode* [ %.pr.pre, %if.then807 ], [ %160, %if.else813 ]
  %cmp831 = icmp eq %struct.regnode* %.pr, @PL_regdummy
  br i1 %cmp831, label %if.end863, label %if.then833

if.then833:                                       ; preds = %if.end829
  %165 = load %struct.regnode** %emit_start800, align 8, !tbaa !0
  %sub.ptr.rhs.cast836 = ptrtoint %struct.regnode* %165 to i64
  %sub.ptr.sub837 = sub i64 %sub.ptr.lhs.cast801, %sub.ptr.rhs.cast836
  %cmp839 = icmp slt i64 %sub.ptr.sub837, 0
  br i1 %cmp839, label %if.then841, label %if.else847

if.then841:                                       ; preds = %if.then833
  %sub.ptr.div838 = ashr exact i64 %sub.ptr.sub837, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div838) #8
  br label %if.end863

if.else847:                                       ; preds = %if.then833
  %166 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast849 = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast850 = ptrtoint i8* %add.ptr742 to i64
  %sub.ptr.sub851 = sub i64 %sub.ptr.lhs.cast849, %sub.ptr.rhs.cast850
  %conv852 = trunc i64 %sub.ptr.sub851 to i32
  %mul858 = ashr exact i64 %sub.ptr.sub837, 1
  %rx859 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %167 = load %struct.regexp** %rx859, align 8, !tbaa !0
  %offsets860 = getelementptr inbounds %struct.regexp* %167, i64 0, i32 7
  %168 = load i32** %offsets860, align 8, !tbaa !0
  %arrayidx861 = getelementptr inbounds i32* %168, i64 %mul858
  store i32 %conv852, i32* %arrayidx861, align 4, !tbaa !3
  br label %if.end863

if.end863:                                        ; preds = %if.end789, %if.then841, %if.else847, %if.end829
  %call864 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %169 = load i32* %flagp, align 4, !tbaa !3
  %or865 = or i32 %169, 3
  store i32 %or865, i32* %flagp, align 4, !tbaa !3
  br label %sw.epilog1537

sw.bb867:                                         ; preds = %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249
  %call869 = call i32 @atoi(i8* %incdec.ptr251) #8
  %cmp870 = icmp sgt i32 %call869, 9
  br i1 %cmp870, label %land.lhs.true, label %if.else875

land.lhs.true:                                    ; preds = %sw.bb867
  %npar = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 13
  %170 = load i32* %npar, align 4, !tbaa !3
  %cmp872 = icmp slt i32 %call869, %170
  br i1 %cmp872, label %if.else875, label %defchar

if.else875:                                       ; preds = %land.lhs.true, %sw.bb867
  %.off21462170 = add i8 %55, -48
  %171 = icmp ult i8 %.off21462170, 10
  br i1 %171, label %while.body, label %while.end

while.body:                                       ; preds = %if.else875, %while.body
  %172 = phi i8* [ %incdec.ptr888, %while.body ], [ %incdec.ptr251, %if.else875 ]
  %incdec.ptr888 = getelementptr inbounds i8* %172, i64 1
  store i8* %incdec.ptr888, i8** %parse, align 8, !tbaa !0
  %173 = load i8* %incdec.ptr888, align 1, !tbaa !1
  %.off2146 = add i8 %173, -48
  %174 = icmp ult i8 %.off2146, 10
  br i1 %174, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.else875
  %emit889 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %175 = load %struct.regnode** %emit889, align 8, !tbaa !0
  %cmp890 = icmp eq %struct.regnode* %175, @PL_regdummy
  br i1 %cmp890, label %if.end913, label %land.lhs.true892

land.lhs.true892:                                 ; preds = %while.end
  %rx893 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %176 = load %struct.regexp** %rx893, align 8, !tbaa !0
  %nparens = getelementptr inbounds %struct.regexp* %176, i64 0, i32 12
  %177 = load i32* %nparens, align 4, !tbaa !3
  %cmp894 = icmp sgt i32 %call869, %177
  br i1 %cmp894, label %if.end902, label %if.end913

if.end902:                                        ; preds = %land.lhs.true892
  %178 = bitcast %struct.regexp* %176 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %178) #8
  %179 = load i8** %parse, align 8, !tbaa !0
  %precomp905 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %180 = load i8** %precomp905, align 8, !tbaa !0
  %sub.ptr.lhs.cast906 = ptrtoint i8* %179 to i64
  %sub.ptr.rhs.cast907 = ptrtoint i8* %180 to i64
  %sub.ptr.sub908 = sub i64 %sub.ptr.lhs.cast906, %sub.ptr.rhs.cast907
  %conv909 = trunc i64 %sub.ptr.sub908 to i32
  %add.ptr912 = getelementptr inbounds i8* %180, i64 %sub.ptr.sub908
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0), i32 %conv909, i8* %180, i8* %add.ptr912) #8
  br label %if.end913

if.end913:                                        ; preds = %land.lhs.true892, %while.end, %if.end902
  %sawback = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 10
  store i32 1, i32* %sawback, align 4, !tbaa !3
  %181 = load i32* %flags1027, align 4, !tbaa !3
  %and915 = and i32 %181, 16384
  %cmp916 = icmp eq i32 %and915, 0
  br i1 %cmp916, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end913
  %and919 = and i32 %181, 2048
  %cmp920 = icmp ne i32 %and919, 0
  %phitmp2110 = select i1 %cmp920, i8 49, i8 48
  br label %cond.end

cond.end:                                         ; preds = %if.end913, %cond.true
  %cond923 = phi i8 [ %phitmp2110, %cond.true ], [ 47, %if.end913 ]
  %call925 = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext %cond923, i32 %call869) #9
  %182 = load i32* %flagp, align 4, !tbaa !3
  %or926 = or i32 %182, 1
  store i32 %or926, i32* %flagp, align 4, !tbaa !3
  %183 = load %struct.regnode** %emit889, align 8, !tbaa !0
  %cmp928 = icmp eq %struct.regnode* %183, @PL_regdummy
  br i1 %cmp928, label %if.end996, label %if.then930

if.then930:                                       ; preds = %cond.end
  %emit_start931 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %184 = load %struct.regnode** %emit_start931, align 8, !tbaa !0
  %sub.ptr.lhs.cast932 = ptrtoint %struct.regnode* %call925 to i64
  %sub.ptr.rhs.cast933 = ptrtoint %struct.regnode* %184 to i64
  %sub.ptr.sub934 = sub i64 %sub.ptr.lhs.cast932, %sub.ptr.rhs.cast933
  %cmp936 = icmp slt i64 %sub.ptr.sub934, 0
  br i1 %cmp936, label %if.then938, label %if.else944

if.then938:                                       ; preds = %if.then930
  %sub.ptr.div935 = ashr exact i64 %sub.ptr.sub934, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i64 %sub.ptr.div935) #8
  %.pr2133.pre = load %struct.regnode** %emit889, align 8, !tbaa !0
  br label %if.end962

if.else944:                                       ; preds = %if.then930
  %start946 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 3
  %185 = load i8** %start946, align 8, !tbaa !0
  %sub.ptr.lhs.cast947 = ptrtoint i8* %incdec.ptr251 to i64
  %sub.ptr.rhs.cast948 = ptrtoint i8* %185 to i64
  %sub.ptr.sub949 = sub i64 %sub.ptr.lhs.cast947, %sub.ptr.rhs.cast948
  %conv950 = trunc i64 %sub.ptr.sub949 to i32
  %mul956 = ashr exact i64 %sub.ptr.sub934, 1
  %sub957 = add nsw i64 %mul956, -1
  %rx958 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %186 = load %struct.regexp** %rx958, align 8, !tbaa !0
  %offsets959 = getelementptr inbounds %struct.regexp* %186, i64 0, i32 7
  %187 = load i32** %offsets959, align 8, !tbaa !0
  %arrayidx960 = getelementptr inbounds i32* %187, i64 %sub957
  store i32 %conv950, i32* %arrayidx960, align 4, !tbaa !3
  br label %if.end962

if.end962:                                        ; preds = %if.then938, %if.else944
  %.pr2133 = phi %struct.regnode* [ %.pr2133.pre, %if.then938 ], [ %183, %if.else944 ]
  %cmp964 = icmp eq %struct.regnode* %.pr2133, @PL_regdummy
  br i1 %cmp964, label %if.end996, label %if.then966

if.then966:                                       ; preds = %if.end962
  %188 = load %struct.regnode** %emit_start931, align 8, !tbaa !0
  %sub.ptr.rhs.cast969 = ptrtoint %struct.regnode* %188 to i64
  %sub.ptr.sub970 = sub i64 %sub.ptr.lhs.cast932, %sub.ptr.rhs.cast969
  %cmp972 = icmp slt i64 %sub.ptr.sub970, 0
  br i1 %cmp972, label %if.then974, label %if.else980

if.then974:                                       ; preds = %if.then966
  %sub.ptr.div971 = ashr exact i64 %sub.ptr.sub970, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div971) #8
  br label %if.end996

if.else980:                                       ; preds = %if.then966
  %189 = load i8** %parse, align 8, !tbaa !0
  %sub.ptr.lhs.cast982 = ptrtoint i8* %189 to i64
  %sub.ptr.rhs.cast983 = ptrtoint i8* %3 to i64
  %sub.ptr.sub984 = sub i64 %sub.ptr.lhs.cast982, %sub.ptr.rhs.cast983
  %conv985 = trunc i64 %sub.ptr.sub984 to i32
  %mul991 = ashr exact i64 %sub.ptr.sub970, 1
  %rx992 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %190 = load %struct.regexp** %rx992, align 8, !tbaa !0
  %offsets993 = getelementptr inbounds %struct.regexp* %190, i64 0, i32 7
  %191 = load i32** %offsets993, align 8, !tbaa !0
  %arrayidx994 = getelementptr inbounds i32* %191, i64 %mul991
  store i32 %conv985, i32* %arrayidx994, align 4, !tbaa !3
  br label %if.end996

if.end996:                                        ; preds = %if.end962, %cond.end, %if.then974, %if.else980
  %192 = load i8** %parse, align 8, !tbaa !0
  %incdec.ptr998 = getelementptr inbounds i8* %192, i64 -1
  store i8* %incdec.ptr998, i8** %parse, align 8, !tbaa !0
  %call999 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  br label %sw.epilog1537

sw.bb1001:                                        ; preds = %sw.bb249
  %193 = load i8** %end1033, align 8, !tbaa !0
  %cmp1004 = icmp ult i8* %incdec.ptr251, %193
  br i1 %cmp1004, label %sw.default, label %if.then1006

if.then1006:                                      ; preds = %sw.bb1001
  %precomp1008 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %194 = load i8** %precomp1008, align 8, !tbaa !0
  %sub.ptr.lhs.cast1009 = ptrtoint i8* %193 to i64
  %sub.ptr.rhs.cast1010 = ptrtoint i8* %194 to i64
  %sub.ptr.sub1011 = sub i64 %sub.ptr.lhs.cast1009, %sub.ptr.rhs.cast1010
  %emit1012 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %195 = load %struct.regnode** %emit1012, align 8, !tbaa !0
  %cmp1013 = icmp eq %struct.regnode* %195, @PL_regdummy
  br i1 %cmp1013, label %if.end1017, label %if.then1015

if.then1015:                                      ; preds = %if.then1006
  %rx1016 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %196 = load %struct.regexp** %rx1016, align 8, !tbaa !0
  %197 = bitcast %struct.regexp* %196 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %197) #8
  %.pre2244 = load i8** %precomp1008, align 8, !tbaa !0
  br label %if.end1017

if.end1017:                                       ; preds = %if.then1015, %if.then1006
  %198 = phi i8* [ %.pre2244, %if.then1015 ], [ %194, %if.then1006 ]
  %cmp1018 = icmp sgt i64 %sub.ptr.sub1011, 127
  %. = select i1 %cmp1018, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %199 = trunc i64 %sub.ptr.sub1011 to i32
  %conv1022 = select i1 %cmp1018, i32 117, i32 %199
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i32 %conv1022, i8* %198, i8* %.) #8
  br label %sw.default

sw.default:                                       ; preds = %sw.bb1001, %if.end1017, %sw.bb249
  %incdec.ptr1025 = getelementptr inbounds i8* %0, i64 -1
  br label %defchar

sw.bb1026:                                        ; preds = %tryagain
  %200 = load i32* %flags1027, align 4, !tbaa !3
  %and1028 = and i32 %200, 32768
  %tobool1029 = icmp eq i32 %and1028, 0
  br i1 %tobool1029, label %sw.default1053, label %while.cond1031.preheader

while.cond1031.preheader:                         ; preds = %sw.bb1026
  %201 = load i8** %end1033, align 8, !tbaa !0
  %cmp10342173 = icmp ult i8* %3, %201
  br i1 %cmp10342173, label %land.end1041, label %while.end1045

land.end1041:                                     ; preds = %while.cond1031.preheader, %while.body1042.land.end1041_crit_edge
  %202 = phi i8 [ %.pre2246, %while.body1042.land.end1041_crit_edge ], [ %4, %while.cond1031.preheader ]
  %203 = phi i8* [ %incdec.ptr1044, %while.body1042.land.end1041_crit_edge ], [ %3, %while.cond1031.preheader ]
  %cmp1039 = icmp eq i8 %202, 10
  br i1 %cmp1039, label %while.end1045, label %while.body1042

while.body1042:                                   ; preds = %land.end1041
  %incdec.ptr1044 = getelementptr inbounds i8* %203, i64 1
  store i8* %incdec.ptr1044, i8** %parse, align 8, !tbaa !0
  %cmp1034 = icmp ult i8* %incdec.ptr1044, %201
  br i1 %cmp1034, label %while.body1042.land.end1041_crit_edge, label %while.end1045

while.body1042.land.end1041_crit_edge:            ; preds = %while.body1042
  %.pre2246 = load i8* %incdec.ptr1044, align 1, !tbaa !1
  br label %land.end1041

while.end1045:                                    ; preds = %land.end1041, %while.cond1031.preheader, %while.body1042
  %204 = phi i8* [ %3, %while.cond1031.preheader ], [ %incdec.ptr1044, %while.body1042 ], [ %203, %land.end1041 ]
  %cmp1048 = icmp ult i8* %204, %201
  br i1 %cmp1048, label %tryagain, label %sw.default1053

sw.default1053:                                   ; preds = %sw.bb1026, %while.end1045, %tryagain
  %205 = phi i8* [ %3, %sw.bb1026 ], [ %204, %while.end1045 ], [ %3, %tryagain ]
  %add.ptr1056 = getelementptr inbounds i8* %205, i64 -1
  %incdec.ptr1058 = getelementptr inbounds i8* %205, i64 1
  store i8* %incdec.ptr1058, i8** %parse, align 8, !tbaa !0
  br label %defchar

defchar:                                          ; preds = %land.lhs.true, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.bb249, %sw.default1053, %sw.default, %if.then226
  %parse_start.0 = phi i8* [ %add.ptr1056, %sw.default1053 ], [ %incdec.ptr1025, %sw.default ], [ %0, %if.then226 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %sw.bb249 ], [ %0, %land.lhs.true ]
  %206 = load i32* %flags1027, align 4, !tbaa !3
  %and1060 = and i32 %206, 16384
  %cmp1061 = icmp eq i32 %and1060, 0
  br i1 %cmp1061, label %cond.end1070, label %cond.true1063

cond.true1063:                                    ; preds = %defchar
  %and1065 = and i32 %206, 2048
  %cmp1066 = icmp ne i32 %and1065, 0
  %phitmp = select i1 %cmp1066, i8 35, i8 34
  br label %cond.end1070

cond.end1070:                                     ; preds = %defchar, %cond.true1063
  %cond1071 = phi i8 [ %phitmp, %cond.true1063 ], [ 33, %defchar ]
  %call1073 = call fastcc %struct.regnode* @S_reg_node(%struct.RExC_state_t* %pRExC_state, i8 zeroext %cond1071) #9
  %arraydecay = getelementptr inbounds %struct.regnode* %call1073, i64 1, i32 0
  %207 = load i8** %parse, align 8, !tbaa !0
  %add.ptr1075 = getelementptr inbounds i8* %207, i64 -1
  %utf81288 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 17
  %emit1432 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %arraydecay1403 = getelementptr inbounds [7 x i8]* %tmpbuf, i64 0, i64 0
  %precomp1268 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %rx1124 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %npar1185 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 13
  br label %land.rhs1078

land.rhs1078:                                     ; preds = %for.inc1442, %cond.end1070
  %len1054.02168 = phi i64 [ 0, %cond.end1070 ], [ %inc1443, %for.inc1442 ]
  %ender.02167 = phi i64 [ 0, %cond.end1070 ], [ %ender.6, %for.inc1442 ]
  %p.02166 = phi i8* [ %add.ptr1075, %cond.end1070 ], [ %p.4, %for.inc1442 ]
  %s.02165 = phi i8* [ %arraydecay, %cond.end1070 ], [ %s.4, %for.inc1442 ]
  %208 = load i8** %end1033, align 8, !tbaa !0
  %cmp1080 = icmp ult i8* %p.02166, %208
  br i1 %cmp1080, label %for.body, label %loopdone

for.body:                                         ; preds = %land.rhs1078
  %209 = load i32* %flags1027, align 4, !tbaa !3
  %and1084 = and i32 %209, 32768
  %tobool1085 = icmp eq i32 %and1084, 0
  br i1 %tobool1085, label %if.end1089, label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %for.body
  %p.addr.043.i = phi i8* [ %p.02166, %for.body ], [ %p.addr.0.be.i, %while.cond.backedge.i ]
  %210 = load i8* %p.addr.043.i, align 1, !tbaa !1
  switch i8 %210, label %if.end1089 [
    i8 32, label %if.then.i
    i8 9, label %if.then.i
    i8 10, label %if.then.i
    i8 13, label %if.then.i
    i8 12, label %if.then.i
    i8 35, label %do.body.i
  ]

if.then.i:                                        ; preds = %while.body.i, %while.body.i, %while.body.i, %while.body.i, %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.043.i, i64 1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %land.rhs.i, %do.body.i, %if.then.i
  %p.addr.0.be.i = phi i8* [ %incdec.ptr.i, %if.then.i ], [ %incdec.ptr22.i, %do.body.i ], [ %incdec.ptr22.i, %land.rhs.i ]
  %cmp.i = icmp ult i8* %p.addr.0.be.i, %208
  br i1 %cmp.i, label %while.body.i, label %if.end1089

do.body.i:                                        ; preds = %while.body.i, %land.rhs.i
  %p.addr.1.i = phi i8* [ %incdec.ptr22.i, %land.rhs.i ], [ %p.addr.043.i, %while.body.i ]
  %incdec.ptr22.i = getelementptr inbounds i8* %p.addr.1.i, i64 1
  %cmp23.i = icmp ult i8* %incdec.ptr22.i, %208
  br i1 %cmp23.i, label %land.rhs.i, label %while.cond.backedge.i

land.rhs.i:                                       ; preds = %do.body.i
  %211 = load i8* %incdec.ptr22.i, align 1, !tbaa !1
  %cmp26.i = icmp eq i8 %211, 10
  br i1 %cmp26.i, label %while.cond.backedge.i, label %do.body.i

if.end1089:                                       ; preds = %while.cond.backedge.i, %while.body.i, %for.body
  %p.1 = phi i8* [ %p.02166, %for.body ], [ %p.addr.0.be.i, %while.cond.backedge.i ], [ %p.addr.043.i, %while.body.i ]
  %212 = load i8* %p.1, align 1, !tbaa !1
  %conv1090 = sext i8 %212 to i32
  switch i32 %conv1090, label %normal_default [
    i32 94, label %loopdone
    i32 36, label %loopdone
    i32 46, label %loopdone
    i32 91, label %loopdone
    i32 40, label %loopdone
    i32 41, label %loopdone
    i32 124, label %loopdone
    i32 92, label %sw.bb1092
  ]

sw.bb1092:                                        ; preds = %if.end1089
  %incdec.ptr1093 = getelementptr inbounds i8* %p.1, i64 1
  %213 = load i8* %incdec.ptr1093, align 1, !tbaa !1
  %conv1094 = sext i8 %213 to i32
  switch i32 %conv1094, label %sw.default1220 [
    i32 65, label %loopdone
    i32 67, label %loopdone
    i32 88, label %loopdone
    i32 71, label %loopdone
    i32 90, label %loopdone
    i32 122, label %loopdone
    i32 119, label %loopdone
    i32 87, label %loopdone
    i32 98, label %loopdone
    i32 66, label %loopdone
    i32 115, label %loopdone
    i32 83, label %loopdone
    i32 100, label %loopdone
    i32 68, label %loopdone
    i32 112, label %loopdone
    i32 80, label %loopdone
    i32 110, label %sw.bb1097
    i32 114, label %sw.bb1099
    i32 116, label %sw.bb1101
    i32 102, label %sw.bb1103
    i32 101, label %sw.bb1105
    i32 97, label %sw.bb1107
    i32 120, label %sw.bb1109
    i32 99, label %sw.bb1155
    i32 48, label %sw.bb1170
    i32 49, label %sw.bb1170
    i32 50, label %sw.bb1170
    i32 51, label %sw.bb1170
    i32 52, label %sw.bb1170
    i32 53, label %sw.bb1170
    i32 54, label %sw.bb1170
    i32 55, label %sw.bb1170
    i32 56, label %sw.bb1170
    i32 57, label %sw.bb1170
    i32 0, label %sw.bb1195
  ]

sw.bb1097:                                        ; preds = %sw.bb1092
  %incdec.ptr1098 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1099:                                        ; preds = %sw.bb1092
  %incdec.ptr1100 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1101:                                        ; preds = %sw.bb1092
  %incdec.ptr1102 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1103:                                        ; preds = %sw.bb1092
  %incdec.ptr1104 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1105:                                        ; preds = %sw.bb1092
  %incdec.ptr1106 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1107:                                        ; preds = %sw.bb1092
  %incdec.ptr1108 = getelementptr inbounds i8* %p.1, i64 2
  br label %sw.epilog1302

sw.bb1109:                                        ; preds = %sw.bb1092
  %incdec.ptr1110 = getelementptr inbounds i8* %p.1, i64 2
  %214 = load i8* %incdec.ptr1110, align 1, !tbaa !1
  %cmp1112 = icmp eq i8 %214, 123
  br i1 %cmp1112, label %if.then1114, label %if.else1150

if.then1114:                                      ; preds = %sw.bb1109
  %call1115 = call i8* @strchr(i8* %incdec.ptr1110, i32 125) #8
  %tobool1116 = icmp eq i8* %call1115, null
  br i1 %tobool1116, label %if.then1117, label %if.else1136

if.then1117:                                      ; preds = %if.then1114
  %add.ptr1118 = getelementptr inbounds i8* %p.1, i64 3
  store i8* %add.ptr1118, i8** %parse, align 8, !tbaa !0
  %215 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1121 = icmp eq %struct.regnode* %215, @PL_regdummy
  br i1 %cmp1121, label %if.end1125, label %if.then1123

if.then1123:                                      ; preds = %if.then1117
  %216 = load %struct.regexp** %rx1124, align 8, !tbaa !0
  %217 = bitcast %struct.regexp* %216 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %217) #8
  %.pre = load i8** %parse, align 8, !tbaa !0
  br label %if.end1125

if.end1125:                                       ; preds = %if.then1123, %if.then1117
  %218 = phi i8* [ %.pre, %if.then1123 ], [ %add.ptr1118, %if.then1117 ]
  %219 = load i8** %precomp1268, align 8, !tbaa !0
  %sub.ptr.lhs.cast1129 = ptrtoint i8* %218 to i64
  %sub.ptr.rhs.cast1130 = ptrtoint i8* %219 to i64
  %sub.ptr.sub1131 = sub i64 %sub.ptr.lhs.cast1129, %sub.ptr.rhs.cast1130
  %conv1132 = trunc i64 %sub.ptr.sub1131 to i32
  %add.ptr1135 = getelementptr inbounds i8* %219, i64 %sub.ptr.sub1131
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str46, i64 0, i64 0), i32 %conv1132, i8* %219, i8* %add.ptr1135) #8
  br label %sw.epilog1302

if.else1136:                                      ; preds = %if.then1114
  store i32 3, i32* %flags1137, align 4, !tbaa !3
  %sub.ptr.lhs.cast1138 = ptrtoint i8* %call1115 to i64
  %sub.ptr.rhs.cast1139 = ptrtoint i8* %incdec.ptr1110 to i64
  %sub.ptr.sub1140 = xor i64 %sub.ptr.rhs.cast1139, -1
  %sub1141 = add i64 %sub.ptr.lhs.cast1138, %sub.ptr.sub1140
  store i64 %sub1141, i64* %numlen, align 8, !tbaa !5
  %add.ptr1142 = getelementptr inbounds i8* %p.1, i64 3
  %call1143 = call i64 @Perl_grok_hex(i8* %add.ptr1142, i64* %numlen, i32* %flags1137, double* null) #8
  %cmp1144 = icmp ugt i64 %call1143, 255
  br i1 %cmp1144, label %if.then1146, label %if.end1147

if.then1146:                                      ; preds = %if.else1136
  store i32 1, i32* %utf81288, align 4, !tbaa !3
  br label %if.end1147

if.end1147:                                       ; preds = %if.then1146, %if.else1136
  %add.ptr1148 = getelementptr inbounds i8* %call1115, i64 1
  br label %sw.epilog1302

if.else1150:                                      ; preds = %sw.bb1109
  store i32 2, i32* %flags1151, align 4, !tbaa !3
  store i64 2, i64* %numlen, align 8, !tbaa !5
  %call1152 = call i64 @Perl_grok_hex(i8* %incdec.ptr1110, i64* %numlen, i32* %flags1151, double* null) #8
  %220 = load i64* %numlen, align 8, !tbaa !5
  %incdec.ptr1110.sum = add i64 %220, 2
  %add.ptr1153 = getelementptr inbounds i8* %p.1, i64 %incdec.ptr1110.sum
  br label %sw.epilog1302

sw.bb1155:                                        ; preds = %sw.bb1092
  %incdec.ptr1156 = getelementptr inbounds i8* %p.1, i64 2
  %incdec.ptr1157 = getelementptr inbounds i8* %p.1, i64 3
  %221 = load i8* %incdec.ptr1156, align 1, !tbaa !1
  %conv1159 = zext i8 %221 to i64
  %.off = add i8 %221, -97
  %222 = icmp ult i8 %.off, 26
  %sub1166 = add i64 %conv1159, -32
  %cond1169 = select i1 %222, i64 %sub1166, i64 %conv1159
  %xor = xor i64 %cond1169, 64
  br label %sw.epilog1302

sw.bb1170:                                        ; preds = %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092
  %cmp1172 = icmp eq i8 %213, 48
  br i1 %cmp1172, label %if.then1188, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb1170
  %arrayidx1174 = getelementptr inbounds i8* %p.1, i64 2
  %223 = load i8* %arrayidx1174, align 1, !tbaa !1
  %.off2145 = add i8 %223, -48
  %224 = icmp ult i8 %.off2145, 10
  br i1 %224, label %land.lhs.true1183, label %loopdone

land.lhs.true1183:                                ; preds = %lor.lhs.false
  %call1184 = call i32 @atoi(i8* %incdec.ptr1093) #8
  %225 = load i32* %npar1185, align 4, !tbaa !3
  %cmp1186 = icmp slt i32 %call1184, %225
  br i1 %cmp1186, label %loopdone, label %if.then1188

if.then1188:                                      ; preds = %land.lhs.true1183, %sw.bb1170
  store i32 0, i32* %flags1189, align 4, !tbaa !3
  store i64 3, i64* %numlen, align 8, !tbaa !5
  %call1190 = call i64 @Perl_grok_oct(i8* %incdec.ptr1093, i64* %numlen, i32* %flags1189, double* null) #8
  %226 = load i64* %numlen, align 8, !tbaa !5
  %incdec.ptr1093.sum = add i64 %226, 1
  %add.ptr1191 = getelementptr inbounds i8* %p.1, i64 %incdec.ptr1093.sum
  br label %sw.epilog1302

sw.bb1195:                                        ; preds = %sw.bb1092
  %cmp1197 = icmp ult i8* %incdec.ptr1093, %208
  br i1 %cmp1197, label %sw.default1220, label %if.then1199

if.then1199:                                      ; preds = %sw.bb1195
  %227 = load i8** %precomp1268, align 8, !tbaa !0
  %sub.ptr.lhs.cast1204 = ptrtoint i8* %208 to i64
  %sub.ptr.rhs.cast1205 = ptrtoint i8* %227 to i64
  %sub.ptr.sub1206 = sub i64 %sub.ptr.lhs.cast1204, %sub.ptr.rhs.cast1205
  %228 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1208 = icmp eq %struct.regnode* %228, @PL_regdummy
  br i1 %cmp1208, label %if.end1212, label %if.then1210

if.then1210:                                      ; preds = %if.then1199
  %229 = load %struct.regexp** %rx1124, align 8, !tbaa !0
  %230 = bitcast %struct.regexp* %229 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %230) #8
  %.pre2235 = load i8** %precomp1268, align 8, !tbaa !0
  br label %if.end1212

if.end1212:                                       ; preds = %if.then1210, %if.then1199
  %231 = phi i8* [ %.pre2235, %if.then1210 ], [ %227, %if.then1199 ]
  %cmp1213 = icmp sgt i64 %sub.ptr.sub1206, 127
  %.2111 = select i1 %cmp1213, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %232 = trunc i64 %sub.ptr.sub1206 to i32
  %conv1217 = select i1 %cmp1213, i32 117, i32 %232
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i32 %conv1217, i8* %231, i8* %.2111) #8
  br label %sw.default1220

sw.default1220:                                   ; preds = %sw.bb1195, %sw.bb1092, %if.end1212
  %233 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1222 = icmp eq %struct.regnode* %233, @PL_regdummy
  br i1 %cmp1222, label %normal_default, label %land.lhs.true1224

land.lhs.true1224:                                ; preds = %sw.default1220
  %234 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %234, i64 0, i32 14
  %235 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp1225 = icmp eq %struct.sv* %235, null
  br i1 %cmp1225, label %lor.lhs.false1241, label %land.lhs.true1227

land.lhs.true1227:                                ; preds = %land.lhs.true1224
  %236 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1228 = getelementptr inbounds %struct.cop* %236, i64 0, i32 14
  %237 = load %struct.sv** %cop_warnings1228, align 8, !tbaa !0
  %cmp1229 = icmp eq %struct.sv* %237, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp1229, label %lor.lhs.false1241, label %land.lhs.true1231

land.lhs.true1231:                                ; preds = %land.lhs.true1227
  %238 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1232 = getelementptr inbounds %struct.cop* %238, i64 0, i32 14
  %239 = load %struct.sv** %cop_warnings1232, align 8, !tbaa !0
  %cmp1233 = icmp eq %struct.sv* %239, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp1233, label %land.lhs.true1249, label %lor.lhs.false1235

lor.lhs.false1235:                                ; preds = %land.lhs.true1231
  %240 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1236 = getelementptr inbounds %struct.cop* %240, i64 0, i32 14
  %241 = load %struct.sv** %cop_warnings1236, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %241, i64 0, i32 0
  %242 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %242 to i8**
  %243 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx1237 = getelementptr inbounds i8* %243, i64 5
  %244 = load i8* %arrayidx1237, align 1, !tbaa !1
  %and1239 = and i8 %244, 1
  %tobool1240 = icmp eq i8 %and1239, 0
  br i1 %tobool1240, label %lor.lhs.false1241, label %land.lhs.true1249

lor.lhs.false1241:                                ; preds = %lor.lhs.false1235, %land.lhs.true1227, %land.lhs.true1224
  %245 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings1242 = getelementptr inbounds %struct.cop* %245, i64 0, i32 14
  %246 = load %struct.sv** %cop_warnings1242, align 8, !tbaa !0
  %cmp1243 = icmp eq %struct.sv* %246, null
  br i1 %cmp1243, label %land.lhs.true1245, label %normal_default

land.lhs.true1245:                                ; preds = %lor.lhs.false1241
  %247 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and1247 = and i8 %247, 1
  %tobool1248 = icmp eq i8 %and1247, 0
  br i1 %tobool1248, label %normal_default, label %land.lhs.true1249

land.lhs.true1249:                                ; preds = %lor.lhs.false1235, %land.lhs.true1245, %land.lhs.true1231
  %248 = load i8* %incdec.ptr1093, align 1, !tbaa !1
  %.off2142 = add i8 %248, -65
  %249 = icmp ult i8 %.off2142, 26
  %.off2143 = add i8 %248, -97
  %250 = icmp ult i8 %.off2143, 26
  %or.cond = or i1 %249, %250
  br i1 %or.cond, label %if.then1265, label %normal_default

if.then1265:                                      ; preds = %land.lhs.true1249
  %add.ptr1267 = getelementptr inbounds i8* %p.1, i64 2
  %251 = load i8** %precomp1268, align 8, !tbaa !0
  %sub.ptr.lhs.cast1269 = ptrtoint i8* %add.ptr1267 to i64
  %sub.ptr.rhs.cast1270 = ptrtoint i8* %251 to i64
  %sub.ptr.sub1271 = sub i64 %sub.ptr.lhs.cast1269, %sub.ptr.rhs.cast1270
  %conv1272 = zext i8 %248 to i32
  %conv1273 = trunc i64 %sub.ptr.sub1271 to i32
  %add.ptr1276 = getelementptr inbounds i8* %251, i64 %sub.ptr.sub1271
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([91 x i8]* @.str47, i64 0, i64 0), i32 %conv1272, i32 %conv1273, i8* %251, i8* %add.ptr1276) #8
  br label %normal_default

normal_default:                                   ; preds = %land.lhs.true1245, %lor.lhs.false1241, %sw.default1220, %land.lhs.true1249, %if.end1089, %if.then1265
  %p.2 = phi i8* [ %p.1, %if.end1089 ], [ %incdec.ptr1093, %if.then1265 ], [ %incdec.ptr1093, %land.lhs.true1249 ], [ %incdec.ptr1093, %sw.default1220 ], [ %incdec.ptr1093, %lor.lhs.false1241 ], [ %incdec.ptr1093, %land.lhs.true1245 ]
  %252 = load i8* %p.2, align 1, !tbaa !1
  %.off2144 = add i8 %252, 64
  %253 = icmp ult i8 %.off2144, 62
  br i1 %253, label %land.lhs.true1287, label %if.else1298

land.lhs.true1287:                                ; preds = %normal_default
  %254 = load i32* %utf81288, align 4, !tbaa !3
  %cmp1289 = icmp eq i32 %254, 0
  br i1 %cmp1289, label %if.else1298, label %if.then1291

if.then1291:                                      ; preds = %land.lhs.true1287
  %255 = load i8** %end1033, align 8, !tbaa !0
  %sub.ptr.lhs.cast1293 = ptrtoint i8* %255 to i64
  %sub.ptr.rhs.cast1294 = ptrtoint i8* %p.2 to i64
  %sub.ptr.sub1295 = sub i64 %sub.ptr.lhs.cast1293, %sub.ptr.rhs.cast1294
  %call1296 = call i64 @Perl_utf8n_to_uvuni(i8* %p.2, i64 %sub.ptr.sub1295, i64* %numlen, i32 0) #8
  %256 = load i64* %numlen, align 8, !tbaa !5
  %add.ptr1297 = getelementptr inbounds i8* %p.2, i64 %256
  br label %sw.epilog1302

if.else1298:                                      ; preds = %land.lhs.true1287, %normal_default
  %incdec.ptr1299 = getelementptr inbounds i8* %p.2, i64 1
  %conv1300 = sext i8 %252 to i64
  br label %sw.epilog1302

sw.epilog1302:                                    ; preds = %if.then1291, %if.else1298, %sw.bb1097, %sw.bb1099, %sw.bb1101, %sw.bb1103, %sw.bb1105, %sw.bb1107, %sw.bb1155, %if.then1188, %if.end1125, %if.end1147, %if.else1150
  %p.3 = phi i8* [ %add.ptr1297, %if.then1291 ], [ %incdec.ptr1299, %if.else1298 ], [ %add.ptr1191, %if.then1188 ], [ %incdec.ptr1157, %sw.bb1155 ], [ %add.ptr1148, %if.end1147 ], [ %incdec.ptr1110, %if.end1125 ], [ %add.ptr1153, %if.else1150 ], [ %incdec.ptr1108, %sw.bb1107 ], [ %incdec.ptr1106, %sw.bb1105 ], [ %incdec.ptr1104, %sw.bb1103 ], [ %incdec.ptr1102, %sw.bb1101 ], [ %incdec.ptr1100, %sw.bb1099 ], [ %incdec.ptr1098, %sw.bb1097 ]
  %ender.1 = phi i64 [ %call1296, %if.then1291 ], [ %conv1300, %if.else1298 ], [ %call1190, %if.then1188 ], [ %xor, %sw.bb1155 ], [ %call1143, %if.end1147 ], [ %ender.02167, %if.end1125 ], [ %call1152, %if.else1150 ], [ 7, %sw.bb1107 ], [ 27, %sw.bb1105 ], [ 12, %sw.bb1103 ], [ 9, %sw.bb1101 ], [ 13, %sw.bb1099 ], [ 10, %sw.bb1097 ]
  %257 = load i32* %flags1027, align 4, !tbaa !3
  %and1304 = and i32 %257, 32768
  %tobool1305 = icmp eq i32 %and1304, 0
  br i1 %tobool1305, label %if.end1309, label %if.then1306

if.then1306:                                      ; preds = %sw.epilog1302
  %258 = load i8** %end1033, align 8, !tbaa !0
  %cmp42.i2116 = icmp ult i8* %p.3, %258
  br i1 %cmp42.i2116, label %while.body.i2118, label %if.end1309

while.body.i2118:                                 ; preds = %while.cond.backedge.i2123, %if.then1306
  %p.addr.043.i2117 = phi i8* [ %p.3, %if.then1306 ], [ %p.addr.0.be.i2121, %while.cond.backedge.i2123 ]
  %259 = load i8* %p.addr.043.i2117, align 1, !tbaa !1
  switch i8 %259, label %if.end1309 [
    i8 32, label %if.then.i2120
    i8 9, label %if.then.i2120
    i8 10, label %if.then.i2120
    i8 13, label %if.then.i2120
    i8 12, label %if.then.i2120
    i8 35, label %do.body.i2127
  ]

if.then.i2120:                                    ; preds = %while.body.i2118, %while.body.i2118, %while.body.i2118, %while.body.i2118, %while.body.i2118
  %incdec.ptr.i2119 = getelementptr inbounds i8* %p.addr.043.i2117, i64 1
  br label %while.cond.backedge.i2123

while.cond.backedge.i2123:                        ; preds = %land.rhs.i2129, %do.body.i2127, %if.then.i2120
  %p.addr.0.be.i2121 = phi i8* [ %incdec.ptr.i2119, %if.then.i2120 ], [ %incdec.ptr22.i2125, %do.body.i2127 ], [ %incdec.ptr22.i2125, %land.rhs.i2129 ]
  %cmp.i2122 = icmp ult i8* %p.addr.0.be.i2121, %258
  br i1 %cmp.i2122, label %while.body.i2118, label %if.end1309

do.body.i2127:                                    ; preds = %while.body.i2118, %land.rhs.i2129
  %p.addr.1.i2124 = phi i8* [ %incdec.ptr22.i2125, %land.rhs.i2129 ], [ %p.addr.043.i2117, %while.body.i2118 ]
  %incdec.ptr22.i2125 = getelementptr inbounds i8* %p.addr.1.i2124, i64 1
  %cmp23.i2126 = icmp ult i8* %incdec.ptr22.i2125, %258
  br i1 %cmp23.i2126, label %land.rhs.i2129, label %while.cond.backedge.i2123

land.rhs.i2129:                                   ; preds = %do.body.i2127
  %260 = load i8* %incdec.ptr22.i2125, align 1, !tbaa !1
  %cmp26.i2128 = icmp eq i8 %260, 10
  br i1 %cmp26.i2128, label %while.cond.backedge.i2123, label %do.body.i2127

if.end1309:                                       ; preds = %while.cond.backedge.i2123, %while.body.i2118, %if.then1306, %sw.epilog1302
  %p.4 = phi i8* [ %p.3, %sw.epilog1302 ], [ %p.3, %if.then1306 ], [ %p.addr.0.be.i2121, %while.cond.backedge.i2123 ], [ %p.addr.043.i2117, %while.body.i2118 ]
  %261 = load i32* %utf81288, align 4, !tbaa !3
  %cmp1311 = icmp eq i32 %261, 0
  br i1 %cmp1311, label %if.end1321, label %land.lhs.true1313

land.lhs.true1313:                                ; preds = %if.end1309
  %and1315 = and i32 %257, 16384
  %cmp1316 = icmp eq i32 %and1315, 0
  br i1 %cmp1316, label %if.end1321, label %if.then1318

if.then1318:                                      ; preds = %land.lhs.true1313
  %call1320 = call i64 @Perl_to_uni_fold(i64 %ender.1, i8* %arraydecay1403, i64* %foldlen) #8
  br label %if.end1321

if.end1321:                                       ; preds = %land.lhs.true1313, %if.end1309, %if.then1318
  %ender.2 = phi i64 [ %call1320, %if.then1318 ], [ %ender.1, %if.end1309 ], [ %ender.1, %land.lhs.true1313 ]
  %262 = load i8* %p.4, align 1, !tbaa !1
  switch i8 %262, label %if.end1392 [
    i8 42, label %if.then1340
    i8 43, label %if.then1340
    i8 63, label %if.then1340
    i8 123, label %land.lhs.true1337
  ]

land.lhs.true1337:                                ; preds = %if.end1321
  %call1338 = call fastcc i32 @S_regcurly(i8* %p.4) #9
  %tobool1339 = icmp eq i32 %call1338, 0
  br i1 %tobool1339, label %if.end1392, label %if.then1340

if.then1340:                                      ; preds = %if.end1321, %if.end1321, %if.end1321, %land.lhs.true1337
  %tobool1341 = icmp eq i64 %len1054.02168, 0
  br i1 %tobool1341, label %if.else1343, label %loopdone

if.else1343:                                      ; preds = %if.then1340
  %263 = load i32* %utf81288, align 4, !tbaa !3
  %cmp1345 = icmp eq i32 %263, 0
  br i1 %cmp1345, label %if.else1379, label %if.then1347

if.then1347:                                      ; preds = %if.else1343
  %264 = load i32* %flags1027, align 4, !tbaa !3
  %and1349 = and i32 %264, 16384
  %cmp1350 = icmp eq i32 %and1349, 0
  br i1 %cmp1350, label %if.else1371, label %if.then1352

if.then1352:                                      ; preds = %if.then1347
  %.pr2135 = load i64* %foldlen, align 8, !tbaa !5
  %tobool13552148 = icmp eq i64 %.pr2135, 0
  br i1 %tobool13552148, label %loopdone, label %for.body1356

for.body1356:                                     ; preds = %if.then1352, %for.inc
  %len1054.12151 = phi i64 [ %add1362, %for.inc ], [ 0, %if.then1352 ]
  %s.12150 = phi i8* [ %add.ptr1361, %for.inc ], [ %s.02165, %if.then1352 ]
  %foldbuf.02149 = phi i8* [ %add.ptr1363, %for.inc ], [ %arraydecay1403, %if.then1352 ]
  %call1357 = call i64 @Perl_utf8_to_uvchr(i8* %foldbuf.02149, i64* %numlen) #8
  %265 = load i64* %numlen, align 8, !tbaa !5
  %cmp1358 = icmp eq i64 %265, 0
  br i1 %cmp1358, label %loopdone, label %if.then1360

if.then1360:                                      ; preds = %for.body1356
  call fastcc void @S_reguni(%struct.RExC_state_t* %pRExC_state, i64 %call1357, i8* %s.12150, i64* %unilen) #9
  %266 = load i64* %unilen, align 8, !tbaa !5
  %add1362 = add i64 %266, %len1054.12151
  %267 = load i64* %numlen, align 8, !tbaa !5
  %268 = load i64* %foldlen, align 8, !tbaa !5
  %cmp1364 = icmp ult i64 %267, %268
  br i1 %cmp1364, label %for.inc, label %loopdone

for.inc:                                          ; preds = %if.then1360
  %add.ptr1363 = getelementptr inbounds i8* %foldbuf.02149, i64 %267
  %add.ptr1361 = getelementptr inbounds i8* %s.12150, i64 %266
  %sub1370 = sub i64 %268, %267
  store i64 %sub1370, i64* %foldlen, align 8, !tbaa !5
  %tobool1355 = icmp eq i64 %268, %267
  br i1 %tobool1355, label %loopdone, label %for.body1356

if.else1371:                                      ; preds = %if.then1347
  call fastcc void @S_reguni(%struct.RExC_state_t* %pRExC_state, i64 %ender.2, i8* %s.02165, i64* %unilen) #9
  %269 = load i64* %unilen, align 8, !tbaa !5
  br label %loopdone

if.else1379:                                      ; preds = %if.else1343
  %270 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1382 = icmp eq %struct.regnode* %270, @PL_regdummy
  br i1 %cmp1382, label %loopdone, label %if.then1384

if.then1384:                                      ; preds = %if.else1379
  %conv1385 = trunc i64 %ender.2 to i8
  store i8 %conv1385, i8* %s.02165, align 1, !tbaa !1
  br label %loopdone

if.end1392:                                       ; preds = %land.lhs.true1337, %if.end1321
  %271 = load i32* %utf81288, align 4, !tbaa !3
  %cmp1394 = icmp eq i32 %271, 0
  br i1 %cmp1394, label %if.else1431, label %if.then1396

if.then1396:                                      ; preds = %if.end1392
  %272 = load i32* %flags1027, align 4, !tbaa !3
  %and1399 = and i32 %272, 16384
  %cmp1400 = icmp eq i32 %and1399, 0
  br i1 %cmp1400, label %if.else1423, label %if.then1402

if.then1402:                                      ; preds = %if.then1396
  %.pr2136 = load i64* %foldlen, align 8, !tbaa !5
  %tobool14052153 = icmp eq i64 %.pr2136, 0
  br i1 %tobool14052153, label %if.end1430, label %for.body1406

for.body1406:                                     ; preds = %if.then1402, %for.inc1420
  %len1054.22156 = phi i64 [ %add1411, %for.inc1420 ], [ %len1054.02168, %if.then1402 ]
  %s.22155 = phi i8* [ %add.ptr1412, %for.inc1420 ], [ %s.02165, %if.then1402 ]
  %foldbuf.12154 = phi i8* [ %add.ptr1413, %for.inc1420 ], [ %arraydecay1403, %if.then1402 ]
  %call1407 = call i64 @Perl_utf8_to_uvchr(i8* %foldbuf.12154, i64* %numlen) #8
  %273 = load i64* %numlen, align 8, !tbaa !5
  %cmp1408 = icmp eq i64 %273, 0
  br i1 %cmp1408, label %if.end1430, label %if.then1410

if.then1410:                                      ; preds = %for.body1406
  call fastcc void @S_reguni(%struct.RExC_state_t* %pRExC_state, i64 %call1407, i8* %s.22155, i64* %unilen1397) #9
  %274 = load i64* %unilen1397, align 8, !tbaa !5
  %add1411 = add i64 %274, %len1054.22156
  %add.ptr1412 = getelementptr inbounds i8* %s.22155, i64 %274
  %275 = load i64* %numlen, align 8, !tbaa !5
  %276 = load i64* %foldlen, align 8, !tbaa !5
  %cmp1414 = icmp ult i64 %275, %276
  br i1 %cmp1414, label %for.inc1420, label %if.end1430

for.inc1420:                                      ; preds = %if.then1410
  %add.ptr1413 = getelementptr inbounds i8* %foldbuf.12154, i64 %275
  %sub1421 = sub i64 %276, %275
  store i64 %sub1421, i64* %foldlen, align 8, !tbaa !5
  %tobool1405 = icmp eq i64 %276, %275
  br i1 %tobool1405, label %if.end1430, label %for.body1406

if.else1423:                                      ; preds = %if.then1396
  call fastcc void @S_reguni(%struct.RExC_state_t* %pRExC_state, i64 %ender.2, i8* %s.02165, i64* %unilen1397) #9
  %277 = load i64* %unilen1397, align 8, !tbaa !5
  %cmp1424 = icmp eq i64 %277, 0
  br i1 %cmp1424, label %if.end1430, label %if.then1426

if.then1426:                                      ; preds = %if.else1423
  %add.ptr1427 = getelementptr inbounds i8* %s.02165, i64 %277
  %add1428 = add i64 %277, %len1054.02168
  br label %if.end1430

if.end1430:                                       ; preds = %if.then1402, %if.then1410, %for.body1406, %for.inc1420, %if.else1423, %if.then1426
  %s.3 = phi i8* [ %add.ptr1427, %if.then1426 ], [ %s.02165, %if.else1423 ], [ %s.02165, %if.then1402 ], [ %s.22155, %for.body1406 ], [ %add.ptr1412, %if.then1410 ], [ %add.ptr1412, %for.inc1420 ]
  %ender.5 = phi i64 [ %ender.2, %if.then1426 ], [ %ender.2, %if.else1423 ], [ %ender.2, %if.then1402 ], [ %call1407, %for.body1406 ], [ %call1407, %if.then1410 ], [ %call1407, %for.inc1420 ]
  %len1054.3 = phi i64 [ %add1428, %if.then1426 ], [ %len1054.02168, %if.else1423 ], [ %len1054.02168, %if.then1402 ], [ %len1054.22156, %for.body1406 ], [ %add1411, %if.then1410 ], [ %add1411, %for.inc1420 ]
  %dec = add i64 %len1054.3, -1
  br label %for.inc1442

if.else1431:                                      ; preds = %if.end1392
  %278 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1433 = icmp eq %struct.regnode* %278, @PL_regdummy
  br i1 %cmp1433, label %if.else1438, label %if.then1435

if.then1435:                                      ; preds = %if.else1431
  %conv1436 = trunc i64 %ender.2 to i8
  %incdec.ptr1437 = getelementptr inbounds i8* %s.02165, i64 1
  store i8 %conv1436, i8* %s.02165, align 1, !tbaa !1
  br label %for.inc1442

if.else1438:                                      ; preds = %if.else1431
  %incdec.ptr1439 = getelementptr inbounds i8* %s.02165, i64 1
  br label %for.inc1442

for.inc1442:                                      ; preds = %if.end1430, %if.else1438, %if.then1435
  %s.4 = phi i8* [ %s.3, %if.end1430 ], [ %incdec.ptr1439, %if.else1438 ], [ %incdec.ptr1437, %if.then1435 ]
  %ender.6 = phi i64 [ %ender.5, %if.end1430 ], [ %ender.2, %if.else1438 ], [ %ender.2, %if.then1435 ]
  %len1054.4 = phi i64 [ %dec, %if.end1430 ], [ %len1054.02168, %if.else1438 ], [ %len1054.02168, %if.then1435 ]
  %inc1443 = add i64 %len1054.4, 1
  %cmp1076 = icmp ult i64 %inc1443, 127
  br i1 %cmp1076, label %land.rhs1078, label %loopdone

loopdone:                                         ; preds = %lor.lhs.false, %land.lhs.true1183, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %sw.bb1092, %land.rhs1078, %for.inc1442, %if.end1089, %if.end1089, %if.end1089, %if.end1089, %if.end1089, %if.end1089, %if.end1089, %if.then1352, %if.then1360, %for.body1356, %for.inc, %if.then1340, %if.else1371, %if.else1379, %if.then1384
  %p.5 = phi i8* [ %p.4, %if.then1384 ], [ %p.4, %if.else1371 ], [ %p.4, %if.else1379 ], [ %p.02166, %if.then1340 ], [ %p.4, %for.inc ], [ %p.4, %for.body1356 ], [ %p.4, %if.then1360 ], [ %p.4, %if.then1352 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.1, %if.end1089 ], [ %p.4, %for.inc1442 ], [ %p.02166, %land.rhs1078 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %sw.bb1092 ], [ %p.1, %land.lhs.true1183 ], [ %p.1, %lor.lhs.false ]
  %ender.7 = phi i64 [ %ender.2, %if.then1384 ], [ %ender.2, %if.else1371 ], [ %ender.2, %if.else1379 ], [ %ender.2, %if.then1340 ], [ %call1357, %for.inc ], [ %call1357, %for.body1356 ], [ %call1357, %if.then1360 ], [ %ender.2, %if.then1352 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.02167, %if.end1089 ], [ %ender.6, %for.inc1442 ], [ %ender.02167, %land.rhs1078 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %sw.bb1092 ], [ %ender.02167, %land.lhs.true1183 ], [ %ender.02167, %lor.lhs.false ]
  %len1054.5 = phi i64 [ 1, %if.then1384 ], [ %269, %if.else1371 ], [ 1, %if.else1379 ], [ %len1054.02168, %if.then1340 ], [ %add1362, %for.inc ], [ %len1054.12151, %for.body1356 ], [ %add1362, %if.then1360 ], [ 0, %if.then1352 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %len1054.02168, %if.end1089 ], [ %inc1443, %for.inc1442 ], [ %len1054.02168, %land.rhs1078 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %sw.bb1092 ], [ %len1054.02168, %land.lhs.true1183 ], [ %len1054.02168, %lor.lhs.false ]
  %add.ptr1445 = getelementptr inbounds i8* %p.5, i64 -1
  store i8* %add.ptr1445, i8** %parse, align 8, !tbaa !0
  %279 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1448 = icmp eq %struct.regnode* %279, @PL_regdummy
  br i1 %cmp1448, label %if.end1480, label %if.then1450

if.then1450:                                      ; preds = %loopdone
  %emit_start1451 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 7
  %280 = load %struct.regnode** %emit_start1451, align 8, !tbaa !0
  %sub.ptr.lhs.cast1452 = ptrtoint %struct.regnode* %call1073 to i64
  %sub.ptr.rhs.cast1453 = ptrtoint %struct.regnode* %280 to i64
  %sub.ptr.sub1454 = sub i64 %sub.ptr.lhs.cast1452, %sub.ptr.rhs.cast1453
  %cmp1456 = icmp slt i64 %sub.ptr.sub1454, 0
  br i1 %cmp1456, label %if.then1458, label %if.else1464

if.then1458:                                      ; preds = %if.then1450
  %sub.ptr.div1455 = ashr exact i64 %sub.ptr.sub1454, 2
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str20, i64 0, i64 0), i64 %sub.ptr.div1455) #8
  br label %if.end1480

if.else1464:                                      ; preds = %if.then1450
  %sub.ptr.lhs.cast1466 = ptrtoint i8* %add.ptr1445 to i64
  %sub.ptr.rhs.cast1467 = ptrtoint i8* %parse_start.0 to i64
  %sub.ptr.sub1468 = sub i64 %sub.ptr.lhs.cast1466, %sub.ptr.rhs.cast1467
  %conv1469 = trunc i64 %sub.ptr.sub1468 to i32
  %mul1475 = ashr exact i64 %sub.ptr.sub1454, 1
  %281 = load %struct.regexp** %rx1124, align 8, !tbaa !0
  %offsets1477 = getelementptr inbounds %struct.regexp* %281, i64 0, i32 7
  %282 = load i32** %offsets1477, align 8, !tbaa !0
  %arrayidx1478 = getelementptr inbounds i32* %282, i64 %mul1475
  store i32 %conv1469, i32* %arrayidx1478, align 4, !tbaa !3
  br label %if.end1480

if.end1480:                                       ; preds = %if.then1458, %if.else1464, %loopdone
  %call1481 = call fastcc i8* @S_nextchar(%struct.RExC_state_t* %pRExC_state) #9
  %cmp1482 = icmp slt i64 %len1054.5, 0
  br i1 %cmp1482, label %if.then1484, label %if.end1501

if.then1484:                                      ; preds = %if.end1480
  %283 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1486 = icmp eq %struct.regnode* %283, @PL_regdummy
  br i1 %cmp1486, label %if.end1490, label %if.then1488

if.then1488:                                      ; preds = %if.then1484
  %284 = load %struct.regexp** %rx1124, align 8, !tbaa !0
  %285 = bitcast %struct.regexp* %284 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %285) #8
  br label %if.end1490

if.end1490:                                       ; preds = %if.then1488, %if.then1484
  %286 = load i8** %parse, align 8, !tbaa !0
  %287 = load i8** %precomp1268, align 8, !tbaa !0
  %sub.ptr.lhs.cast1494 = ptrtoint i8* %286 to i64
  %sub.ptr.rhs.cast1495 = ptrtoint i8* %287 to i64
  %sub.ptr.sub1496 = sub i64 %sub.ptr.lhs.cast1494, %sub.ptr.rhs.cast1495
  %conv1497 = trunc i64 %sub.ptr.sub1496 to i32
  %add.ptr1500 = getelementptr inbounds i8* %287, i64 %sub.ptr.sub1496
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str48, i64 0, i64 0), i32 %conv1497, i8* %287, i8* %add.ptr1500) #8
  br label %if.end1501

if.end1501:                                       ; preds = %if.end1490, %if.end1480
  %cond = icmp eq i64 %len1054.5, 0
  br i1 %cond, label %if.end1514, label %if.then1504

if.then1504:                                      ; preds = %if.end1501
  %288 = load i32* %flagp, align 4, !tbaa !3
  %or1505 = or i32 %288, 1
  store i32 %or1505, i32* %flagp, align 4, !tbaa !3
  %cmp1507 = icmp eq i64 %len1054.5, 1
  %cmp1510 = icmp ult i64 %ender.7, 128
  %or.cond2115 = and i1 %cmp1507, %cmp1510
  br i1 %or.cond2115, label %if.then1512, label %if.end1514

if.then1512:                                      ; preds = %if.then1504
  %or1513 = or i32 %288, 3
  store i32 %or1513, i32* %flagp, align 4, !tbaa !3
  br label %if.end1514

if.end1514:                                       ; preds = %if.end1501, %if.then1512, %if.then1504
  %289 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1516 = icmp eq %struct.regnode* %289, @PL_regdummy
  br i1 %cmp1516, label %if.end1520.thread, label %if.end1520

if.end1520.thread:                                ; preds = %if.end1514
  %sub15262139 = add i64 %len1054.5, 3
  %div2140 = lshr i64 %sub15262139, 2
  br label %if.then1524

if.end1520:                                       ; preds = %if.end1514
  %conv1519 = trunc i64 %len1054.5 to i8
  %str_len = getelementptr inbounds %struct.regnode* %call1073, i64 0, i32 0
  store i8 %conv1519, i8* %str_len, align 1, !tbaa !1
  %.pr2137 = load %struct.regnode** %emit1432, align 8, !tbaa !0
  %cmp1522 = icmp eq %struct.regnode* %.pr2137, @PL_regdummy
  %sub1526 = add i64 %len1054.5, 3
  %div = lshr i64 %sub1526, 2
  br i1 %cmp1522, label %if.then1524, label %if.else1530

if.then1524:                                      ; preds = %if.end1520.thread, %if.end1520
  %div2141 = phi i64 [ %div2140, %if.end1520.thread ], [ %div, %if.end1520 ]
  %size = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %290 = load i32* %size, align 4, !tbaa !3
  %conv15272108 = zext i32 %290 to i64
  %add1528 = add i64 %conv15272108, %div2141
  %conv1529 = trunc i64 %add1528 to i32
  store i32 %conv1529, i32* %size, align 4, !tbaa !3
  br label %sw.epilog1537

if.else1530:                                      ; preds = %if.end1520
  %add.ptr1535 = getelementptr inbounds %struct.regnode* %.pr2137, i64 %div
  store %struct.regnode* %add.ptr1535, %struct.regnode** %emit1432, align 8, !tbaa !0
  br label %sw.epilog1537

sw.epilog1537:                                    ; preds = %if.then1524, %if.else1530, %sw.bb322, %if.end863, %if.end996, %if.then270, %if.else276, %sw.bb253, %if.then304, %if.else310, %sw.bb288, %if.then345, %if.else351, %sw.bb328, %if.then380, %if.else386, %sw.bb363, %if.then413, %if.else419, %sw.bb398, %if.then451, %if.else457, %sw.bb431, %if.then490, %if.else496, %sw.bb469, %if.then533, %if.else539, %sw.bb508, %if.then576, %if.else582, %sw.bb551, %if.then615, %if.else621, %sw.bb594, %if.then654, %if.else660, %sw.bb633, %if.then687, %if.else693, %sw.bb672, %if.then720, %if.else726, %sw.bb705, %if.end144, %if.else164, %if.then158, %if.end91, %if.else110, %if.then104, %if.end52, %if.else70, %if.then64, %if.end11, %if.else22, %if.then16, %if.end238, %if.end211, %if.end197
  %ret.4 = phi %struct.regnode* [ %call1073, %if.then1524 ], [ %call1073, %if.else1530 ], [ %call925, %if.end996 ], [ %call792, %if.end863 ], [ %call706, %sw.bb705 ], [ %call706, %if.then720 ], [ %call706, %if.else726 ], [ %call673, %sw.bb672 ], [ %call673, %if.then687 ], [ %call673, %if.else693 ], [ %call640, %sw.bb633 ], [ %call640, %if.then654 ], [ %call640, %if.else660 ], [ %call601, %sw.bb594 ], [ %call601, %if.then615 ], [ %call601, %if.else621 ], [ %call562, %sw.bb551 ], [ %call562, %if.then576 ], [ %call562, %if.else582 ], [ %call519, %sw.bb508 ], [ %call519, %if.then533 ], [ %call519, %if.else539 ], [ %call476, %sw.bb469 ], [ %call476, %if.then490 ], [ %call476, %if.else496 ], [ %call437, %sw.bb431 ], [ %call437, %if.then451 ], [ %call437, %if.else457 ], [ %call399, %sw.bb398 ], [ %call399, %if.then413 ], [ %call399, %if.else419 ], [ %call364, %sw.bb363 ], [ %call364, %if.then380 ], [ %call364, %if.else386 ], [ %call329, %sw.bb328 ], [ %call329, %if.then345 ], [ %call329, %if.else351 ], [ %call323, %sw.bb322 ], [ %call289, %sw.bb288 ], [ %call289, %if.then304 ], [ %call289, %if.else310 ], [ %call256, %sw.bb253 ], [ %call256, %if.then270 ], [ %call256, %if.else276 ], [ null, %if.end238 ], [ null, %if.end211 ], [ %call183, %if.end197 ], [ %call124, %if.end144 ], [ %call124, %if.then158 ], [ %call124, %if.else164 ], [ %ret.3, %if.end91 ], [ %ret.3, %if.then104 ], [ %ret.3, %if.else110 ], [ %ret.2, %if.end52 ], [ %ret.2, %if.then64 ], [ %ret.2, %if.else70 ], [ %ret.1, %if.end11 ], [ %ret.1, %if.then16 ], [ %ret.1, %if.else22 ]
  %291 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %tobool1538 = icmp eq %struct.sv* %291, null
  br i1 %tobool1538, label %return, label %land.lhs.true1539

land.lhs.true1539:                                ; preds = %sw.epilog1537
  %type = getelementptr inbounds %struct.regnode* %ret.4, i64 0, i32 1
  %292 = load i8* %type, align 1, !tbaa !1
  %idxprom = zext i8 %292 to i64
  %293 = add i64 %idxprom, -33
  %cmp1542 = icmp ult i64 %293, 3
  br i1 %cmp1542, label %if.then1544, label %return

if.then1544:                                      ; preds = %land.lhs.true1539
  %str_len1545 = getelementptr inbounds %struct.regnode* %ret.4, i64 0, i32 0
  %294 = load i8* %str_len1545, align 1, !tbaa !1
  %conv1546 = zext i8 %294 to i64
  %arraydecay1548 = getelementptr inbounds %struct.regnode* %ret.4, i64 1, i32 0
  %call1549 = call %struct.sv* @Perl_newSVpvn(i8* %arraydecay1548, i64 %conv1546) #8
  %call1550 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1549) #8
  %utf81551 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 17
  %295 = load i32* %utf81551, align 4, !tbaa !3
  %tobool1552 = icmp eq i32 %295, 0
  br i1 %tobool1552, label %if.end1555, label %if.then1553

if.then1553:                                      ; preds = %if.then1544
  %sv_flags = getelementptr inbounds %struct.sv* %call1550, i64 0, i32 2
  %296 = load i32* %sv_flags, align 4, !tbaa !3
  %or1554 = or i32 %296, 536870912
  store i32 %or1554, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end1555

if.end1555:                                       ; preds = %if.then1544, %if.then1553
  %call1556 = call signext i8 @Perl_sv_utf8_downgrade(%struct.sv* %call1550, i8 signext 1) #8
  %tobool1557 = icmp eq i8 %call1556, 0
  br i1 %tobool1557, label %return, label %if.then1558

if.then1558:                                      ; preds = %if.end1555
  %297 = load %struct.sv** @PL_encoding, align 8, !tbaa !0
  %call1560 = call i8* @Perl_sv_recode_to_utf8(%struct.sv* %call1550, %struct.sv* %297) #8
  %sv_any1561 = getelementptr inbounds %struct.sv* %call1550, i64 0, i32 0
  %298 = load i8** %sv_any1561, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %298, i64 8
  %299 = bitcast i8* %xpv_cur to i64*
  %300 = load i64* %299, align 8, !tbaa !5
  %sv_flags1562 = getelementptr inbounds %struct.sv* %call1550, i64 0, i32 2
  %301 = load i32* %sv_flags1562, align 4, !tbaa !3
  %and1563 = and i32 %301, 536870912
  %tobool1564 = icmp eq i32 %and1563, 0
  br i1 %tobool1564, label %if.end1567, label %if.then1565

if.then1565:                                      ; preds = %if.then1558
  store i32 1, i32* %utf81551, align 4, !tbaa !3
  br label %if.end1567

if.end1567:                                       ; preds = %if.then1558, %if.then1565
  %emit1568 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %302 = load %struct.regnode** %emit1568, align 8, !tbaa !0
  %cmp1569 = icmp eq %struct.regnode* %302, @PL_regdummy
  br i1 %cmp1569, label %if.else1589, label %if.then1571

if.then1571:                                      ; preds = %if.end1567
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay1548, i8* %call1560, i64 %300, i32 1, i1 false)
  %sub1575 = sub i64 %300, %conv1546
  %303 = load i8* %str_len1545, align 1, !tbaa !1
  %conv1577 = zext i8 %303 to i64
  %add1578 = add i64 %sub1575, %conv1577
  %conv1579 = trunc i64 %add1578 to i8
  store i8 %conv1579, i8* %str_len1545, align 1, !tbaa !1
  %sub1581 = add i64 %300, 3
  %div1582 = lshr i64 %sub1581, 2
  %sub1584 = add i64 %conv1546, 3
  %div1585 = lshr i64 %sub1584, 2
  %sub1586 = sub i64 %div1582, %div1585
  %304 = load %struct.regnode** %emit1568, align 8, !tbaa !0
  %add.ptr1588 = getelementptr inbounds %struct.regnode* %304, i64 %sub1586
  store %struct.regnode* %add.ptr1588, %struct.regnode** %emit1568, align 8, !tbaa !0
  br label %return

if.else1589:                                      ; preds = %if.end1567
  %sub1591 = add i64 %300, 3
  %div1592 = lshr i64 %sub1591, 2
  %sub1594 = add i64 %conv1546, 3
  %div1595 = lshr i64 %sub1594, 2
  %sub1596 = sub i64 %div1592, %div1595
  %size1597 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %305 = load i32* %size1597, align 4, !tbaa !3
  %conv15982107 = zext i32 %305 to i64
  %add1599 = add i64 %sub1596, %conv15982107
  %conv1600 = trunc i64 %add1599 to i32
  store i32 %conv1600, i32* %size1597, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then186, %land.lhs.true1539, %if.then1571, %if.else1589, %sw.epilog1537, %if.end1555, %if.then203, %if.then193
  %retval.0 = phi %struct.regnode* [ null, %if.then203 ], [ null, %if.then193 ], [ %ret.4, %if.end1555 ], [ %ret.4, %sw.epilog1537 ], [ %ret.4, %if.else1589 ], [ %ret.4, %if.then1571 ], [ %ret.4, %land.lhs.true1539 ], [ null, %if.then186 ]
  ret %struct.regnode* %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @S_regcurly(i8* nocapture %s) #4 {
entry:
  %incdec.ptr = getelementptr inbounds i8* %s, i64 1
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 123
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i8* %incdec.ptr, align 1, !tbaa !1
  %.off = add i8 %1, -48
  %2 = icmp ult i8 %.off, 10
  br i1 %2, label %while.cond, label %return

while.cond:                                       ; preds = %if.end, %while.cond.while.cond_crit_edge
  %3 = phi i8 [ %.pre, %while.cond.while.cond_crit_edge ], [ %1, %if.end ]
  %s.addr.0 = phi i8* [ %incdec.ptr16, %while.cond.while.cond_crit_edge ], [ %incdec.ptr, %if.end ]
  %.off49 = add i8 %3, -48
  %4 = icmp ult i8 %.off49, 10
  %incdec.ptr16 = getelementptr inbounds i8* %s.addr.0, i64 1
  br i1 %4, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  %.pre = load i8* %incdec.ptr16, align 1, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp18 = icmp eq i8 %3, 44
  %incdec.ptr21.s.addr.0 = select i1 %cmp18, i8* %incdec.ptr16, i8* %s.addr.0
  br label %while.cond23

while.cond23:                                     ; preds = %while.cond23, %while.end
  %s.addr.1 = phi i8* [ %incdec.ptr33, %while.cond23 ], [ %incdec.ptr21.s.addr.0, %while.end ]
  %5 = load i8* %s.addr.1, align 1, !tbaa !1
  %.off50 = add i8 %5, -48
  %6 = icmp ult i8 %.off50, 10
  %incdec.ptr33 = getelementptr inbounds i8* %s.addr.1, i64 1
  br i1 %6, label %while.cond23, label %while.end34

while.end34:                                      ; preds = %while.cond23
  %cmp36 = icmp eq i8 %5, 125
  %. = zext i1 %cmp36 to i32
  br label %return

return:                                           ; preds = %while.end34, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %while.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.regnode* @S_regclass(%struct.RExC_state_t* %pRExC_state) #0 {
entry:
  %numlen = alloca i64, align 8
  %flags369 = alloca i32, align 4
  %flags401 = alloca i32, align 4
  %flags422 = alloca i32, align 4
  %foldbuf = alloca [7 x i8], align 1
  %foldlen = alloca i64, align 8
  %call = call fastcc %struct.regnode* @S_reganode(%struct.RExC_state_t* %pRExC_state, i8 zeroext 17, i32 0) #9
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  store i8 0, i8* %flags, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %parse = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 5
  %1 = load i8** %parse, align 8, !tbaa !0
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %2, 94
  br i1 %cmp1, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %naughty = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 9
  %3 = load i32* %naughty, align 4, !tbaa !3
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %naughty, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %parse, align 8, !tbaa !0
  %4 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp6 = icmp eq %struct.regnode* %4, @PL_regdummy
  br i1 %cmp6, label %if.then17, label %if.then8

if.then8:                                         ; preds = %if.then3
  %flags9 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %5 = load i8* %flags9, align 1, !tbaa !1
  %or = or i8 %5, 4
  store i8 %or, i8* %flags9, align 1, !tbaa !1
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %.pr = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp15 = icmp eq %struct.regnode* %.pr, @PL_regdummy
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then3, %if.end13
  %size = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %6 = load i32* %size, align 4, !tbaa !3
  %add = add i32 %6, 9
  store i32 %add, i32* %size, align 4, !tbaa !3
  br label %if.end41

if.else:                                          ; preds = %if.end13
  %add.ptr = getelementptr inbounds %struct.regnode* %.pr, i64 9
  store %struct.regnode* %add.ptr, %struct.regnode** %emit, align 8, !tbaa !0
  %flags21 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %7 = load i32* %flags21, align 4, !tbaa !3
  %and = and i32 %7, 16384
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.else
  %flags25 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %8 = load i8* %flags25, align 1, !tbaa !1
  %or27 = or i8 %8, 2
  store i8 %or27, i8* %flags25, align 1, !tbaa !1
  %.pre3363 = load i32* %flags21, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  %9 = phi i32 [ %7, %if.else ], [ %.pre3363, %if.then24 ]
  %and31 = and i32 %9, 2048
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end29
  %flags35 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %10 = load i8* %flags35, align 1, !tbaa !1
  %or37 = or i8 %10, 1
  store i8 %or37, i8* %flags35, align 1, !tbaa !1
  br label %if.end39

if.end39:                                         ; preds = %if.end29, %if.then34
  %arraydecay = getelementptr inbounds %struct.regnode* %call, i64 2, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 32, i32 1, i1 false)
  %call40 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8]* @.str49, i64 0, i64 0), i64 10) #8
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.then17
  %listsv.0 = phi %struct.sv* [ null, %if.then17 ], [ %call40, %if.end39 ]
  %11 = load i8** %parse, align 8, !tbaa !0
  %end = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 4
  %12 = load i8** %end, align 8, !tbaa !0
  %cmp43 = icmp ult i8* %11, %12
  br i1 %cmp43, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end41
  %13 = load i8* %11, align 1, !tbaa !1
  %phitmp = zext i8 %13 to i64
  br label %cond.end

cond.end:                                         ; preds = %if.end41, %cond.true
  %cond = phi i64 [ %phitmp, %cond.true ], [ 0, %if.end41 ]
  %14 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp49 = icmp eq %struct.regnode* %14, @PL_regdummy
  br i1 %cmp49, label %if.end59, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  switch i64 %cond, label %if.end59 [
    i64 61, label %land.lhs.true.i
    i64 58, label %land.lhs.true.i
    i64 46, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %15 = load i8* %11, align 1, !tbaa !1
  switch i8 %15, label %if.end59 [
    i8 58, label %if.then.i
    i8 61, label %if.then.i
    i8 46, label %if.then.i
  ]

if.then.i:                                        ; preds = %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i
  %s.0164.i = getelementptr inbounds i8* %11, i64 1
  %16 = load i8* %s.0164.i, align 1, !tbaa !1
  %tobool165.i = icmp eq i8 %16, 0
  br i1 %tobool165.i, label %if.end59, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then.i, %while.cond.backedge.i
  %.pr.i = phi i8 [ %19, %while.cond.backedge.i ], [ %16, %if.then.i ]
  %s.0167.i = phi i8* [ %s.0.i, %while.cond.backedge.i ], [ %s.0164.i, %if.then.i ]
  %.pn166.i = phi i8* [ %s.0167.i, %while.cond.backedge.i ], [ %11, %if.then.i ]
  %.off.i = add i8 %.pr.i, -65
  %17 = icmp ult i8 %.off.i, 26
  %.off159.i = add i8 %.pr.i, -97
  %18 = icmp ult i8 %.off159.i, 26
  %or.cond.i = or i1 %17, %18
  br i1 %or.cond.i, label %while.cond.backedge.i, label %lor.lhs.false29.i

while.cond.backedge.i:                            ; preds = %lor.lhs.false29.i, %land.rhs.i
  %s.0.i = getelementptr inbounds i8* %s.0167.i, i64 1
  %19 = load i8* %s.0.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %19, 0
  br i1 %tobool.i, label %if.end59, label %land.rhs.i

lor.lhs.false29.i:                                ; preds = %land.rhs.i
  %.off160.i = add i8 %.pr.i, -48
  %20 = icmp ult i8 %.off160.i, 10
  %cmp38.i = icmp eq i8 %.pr.i, 95
  %or.cond158.i = or i1 %20, %cmp38.i
  br i1 %or.cond158.i, label %while.cond.backedge.i, label %land.lhs.true43.i

land.lhs.true43.i:                                ; preds = %lor.lhs.false29.i
  %conv44.i = sext i8 %15 to i32
  %cmp46.i = icmp eq i8 %15, %.pr.i
  br i1 %cmp46.i, label %land.lhs.true48.i, label %if.end59

land.lhs.true48.i:                                ; preds = %land.lhs.true43.i
  %arrayidx.i = getelementptr inbounds i8* %.pn166.i, i64 2
  %21 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp50.i = icmp eq i8 %21, 93
  br i1 %cmp50.i, label %if.then52.i, label %if.end59

if.then52.i:                                      ; preds = %land.lhs.true48.i
  %22 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings.i = getelementptr inbounds %struct.cop* %22, i64 0, i32 14
  %23 = load %struct.sv** %cop_warnings.i, align 8, !tbaa !0
  %cmp53.i = icmp eq %struct.sv* %23, null
  br i1 %cmp53.i, label %lor.lhs.false68.i, label %land.lhs.true55.i

land.lhs.true55.i:                                ; preds = %if.then52.i
  %24 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings56.i = getelementptr inbounds %struct.cop* %24, i64 0, i32 14
  %25 = load %struct.sv** %cop_warnings56.i, align 8, !tbaa !0
  %cmp57.i = icmp eq %struct.sv* %25, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp57.i, label %lor.lhs.false68.i, label %land.lhs.true59.i

land.lhs.true59.i:                                ; preds = %land.lhs.true55.i
  %26 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings60.i = getelementptr inbounds %struct.cop* %26, i64 0, i32 14
  %27 = load %struct.sv** %cop_warnings60.i, align 8, !tbaa !0
  %cmp61.i = icmp eq %struct.sv* %27, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp61.i, label %if.then76.i, label %lor.lhs.false63.i

lor.lhs.false63.i:                                ; preds = %land.lhs.true59.i
  %28 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings64.i = getelementptr inbounds %struct.cop* %28, i64 0, i32 14
  %29 = load %struct.sv** %cop_warnings64.i, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.sv* %29, i64 0, i32 0
  %30 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_pv.i = bitcast i8* %30 to i8**
  %31 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %arrayidx65.i = getelementptr inbounds i8* %31, i64 5
  %32 = load i8* %arrayidx65.i, align 1, !tbaa !1
  %and.i = and i8 %32, 1
  %tobool67.i = icmp eq i8 %and.i, 0
  br i1 %tobool67.i, label %lor.lhs.false68.i, label %if.then76.i

lor.lhs.false68.i:                                ; preds = %lor.lhs.false63.i, %land.lhs.true55.i, %if.then52.i
  %33 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings69.i = getelementptr inbounds %struct.cop* %33, i64 0, i32 14
  %34 = load %struct.sv** %cop_warnings69.i, align 8, !tbaa !0
  %cmp70.i = icmp eq %struct.sv* %34, null
  br i1 %cmp70.i, label %land.lhs.true72.i, label %if.end.i

land.lhs.true72.i:                                ; preds = %lor.lhs.false68.i
  %35 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and74.i = and i8 %35, 1
  %tobool75.i = icmp eq i8 %and74.i, 0
  br i1 %tobool75.i, label %if.end.i, label %if.then76.i

if.then76.i:                                      ; preds = %land.lhs.true72.i, %lor.lhs.false63.i, %land.lhs.true59.i
  %add.ptr.i = getelementptr inbounds i8* %.pn166.i, i64 3
  %precomp.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %36 = load i8** %precomp.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %add.ptr.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %36 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv79.i = trunc i64 %sub.ptr.sub.i to i32
  %add.ptr82.i = getelementptr inbounds i8* %36, i64 %sub.ptr.sub.i
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([106 x i8]* @.str93, i64 0, i64 0), i32 %conv44.i, i32 %conv44.i, i32 %conv79.i, i8* %36, i8* %add.ptr82.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then76.i, %land.lhs.true72.i, %lor.lhs.false68.i
  switch i8 %15, label %if.end59 [
    i8 61, label %while.cond91.preheader.i
    i8 46, label %while.cond91.preheader.i
  ]

while.cond91.preheader.i:                         ; preds = %if.end.i, %if.end.i
  %.pre.i = load i8** %parse, align 8, !tbaa !0
  br label %while.cond91.i

while.cond91.i:                                   ; preds = %land.rhs95.i, %while.cond91.preheader.i
  %37 = phi i8* [ %.pre.i, %while.cond91.preheader.i ], [ %incdec.ptr97.i, %land.rhs95.i ]
  %38 = load i8* %37, align 1, !tbaa !1
  %tobool94.i = icmp eq i8 %38, 0
  br i1 %tobool94.i, label %while.end103.i, label %land.rhs95.i

land.rhs95.i:                                     ; preds = %while.cond91.i
  %incdec.ptr97.i = getelementptr inbounds i8* %37, i64 1
  store i8* %incdec.ptr97.i, i8** %parse, align 8, !tbaa !0
  %39 = load i8* %37, align 1, !tbaa !1
  %cmp99.i = icmp eq i8 %39, 93
  br i1 %cmp99.i, label %while.end103.i, label %while.cond91.i

while.end103.i:                                   ; preds = %land.rhs95.i, %while.cond91.i
  %40 = phi i8* [ %incdec.ptr97.i, %land.rhs95.i ], [ %37, %while.cond91.i ]
  %precomp106.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %41 = load i8** %precomp106.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast107.i = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast108.i = ptrtoint i8* %41 to i64
  %sub.ptr.sub109.i = sub i64 %sub.ptr.lhs.cast107.i, %sub.ptr.rhs.cast108.i
  %conv112.i = trunc i64 %sub.ptr.sub109.i to i32
  %add.ptr115.i = getelementptr inbounds i8* %41, i64 %sub.ptr.sub109.i
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([55 x i8]* @.str92, i64 0, i64 0), i32 %conv44.i, i32 %conv44.i, i32 %conv112.i, i8* %41, i8* %add.ptr115.i) #8
  br label %if.end59

if.end59:                                         ; preds = %while.cond.backedge.i, %if.end.i, %while.end103.i, %land.lhs.true48.i, %land.lhs.true43.i, %if.then.i, %land.lhs.true.i, %land.lhs.true, %cond.end
  %42 = load i8** %parse, align 8, !tbaa !0
  %43 = load i8* %42, align 1, !tbaa !1
  %cmp62 = icmp eq i8 %43, 93
  br i1 %cmp62, label %charclassloop, label %while.cond

while.cond:                                       ; preds = %if.end2178, %if.then2115, %if.else2112, %lor.lhs.false2100, %if.end2066, %if.end2052, %if.end1946, %if.end59, %if.then2111, %if.then2185, %if.then2181, %if.then2000, %if.then2056, %if.then1951
  %unicode_alternate.0 = phi %struct.av* [ %unicode_alternate.1, %if.then2056 ], [ %unicode_alternate.1, %if.then1951 ], [ %unicode_alternate.1, %if.then2000 ], [ %unicode_alternate.1, %if.then2111 ], [ %unicode_alternate.3, %if.then2181 ], [ %unicode_alternate.3, %if.then2185 ], [ null, %if.end59 ], [ %unicode_alternate.1, %if.end1946 ], [ %unicode_alternate.1, %if.end2052 ], [ %unicode_alternate.1, %if.end2066 ], [ %unicode_alternate.1, %lor.lhs.false2100 ], [ %unicode_alternate.1, %if.else2112 ], [ %unicode_alternate.1, %if.then2115 ], [ %unicode_alternate.3, %if.end2178 ]
  %optimize_invert.0 = phi i8 [ %optimize_invert.1, %if.then2056 ], [ 0, %if.then1951 ], [ %optimize_invert.1, %if.then2000 ], [ %optimize_invert.1, %if.then2111 ], [ %optimize_invert.1, %if.then2181 ], [ %optimize_invert.1, %if.then2185 ], [ 1, %if.end59 ], [ 0, %if.end1946 ], [ %optimize_invert.1, %if.end2052 ], [ %optimize_invert.1, %if.end2066 ], [ %optimize_invert.1, %lor.lhs.false2100 ], [ %optimize_invert.1, %if.else2112 ], [ %optimize_invert.1, %if.then2115 ], [ %optimize_invert.1, %if.end2178 ]
  %need_class.0 = phi i8 [ %need_class.23241, %if.then2056 ], [ 1, %if.then1951 ], [ %need_class.23241, %if.then2000 ], [ %need_class.23242, %if.then2111 ], [ %need_class.23242, %if.then2181 ], [ %need_class.23242, %if.then2185 ], [ 0, %if.end59 ], [ 1, %if.end1946 ], [ %need_class.23241, %if.end2052 ], [ %need_class.23242, %if.end2066 ], [ %need_class.23242, %lor.lhs.false2100 ], [ %need_class.23242, %if.else2112 ], [ %need_class.23242, %if.then2115 ], [ %need_class.23242, %if.end2178 ]
  %rangebegin.0 = phi i8* [ %rangebegin.1., %if.then2056 ], [ %rangebegin.1., %if.then1951 ], [ %rangebegin.1., %if.then2000 ], [ %rangebegin.1., %if.then2111 ], [ %rangebegin.1., %if.then2181 ], [ %rangebegin.1., %if.then2185 ], [ null, %if.end59 ], [ %rangebegin.1., %if.end1946 ], [ %rangebegin.1., %if.end2052 ], [ %rangebegin.1., %if.end2066 ], [ %rangebegin.1., %lor.lhs.false2100 ], [ %rangebegin.1., %if.else2112 ], [ %rangebegin.1., %if.then2115 ], [ %rangebegin.1., %if.end2178 ]
  %range.0 = phi i64 [ 0, %if.then2056 ], [ 0, %if.then1951 ], [ 1, %if.then2000 ], [ 0, %if.then2111 ], [ 0, %if.then2181 ], [ 0, %if.then2185 ], [ 0, %if.end59 ], [ 0, %if.end1946 ], [ 0, %if.end2052 ], [ 0, %if.end2066 ], [ 0, %lor.lhs.false2100 ], [ 0, %if.else2112 ], [ 0, %if.then2115 ], [ 0, %if.end2178 ]
  %prevvalue.0 = phi i64 [ %value.432203240, %if.then2056 ], [ %prevvalue.1, %if.then1951 ], [ %value.432203240, %if.then2000 ], [ %prevvalue.2, %if.then2111 ], [ 962, %if.then2181 ], [ 931, %if.then2185 ], [ 12345678, %if.end59 ], [ %prevvalue.1, %if.end1946 ], [ %value.432203240, %if.end2052 ], [ %prevvalue.2, %if.end2066 ], [ %prevvalue.2, %lor.lhs.false2100 ], [ %prevvalue.2, %if.else2112 ], [ %value.432203239, %if.then2115 ], [ %value.432203239, %if.end2178 ]
  %44 = load i8** %parse, align 8, !tbaa !0
  %45 = load i8** %end, align 8, !tbaa !0
  %cmp68 = icmp ult i8* %44, %45
  br i1 %cmp68, label %land.rhs, label %while.end2193

land.rhs:                                         ; preds = %while.cond
  %46 = load i8* %44, align 1, !tbaa !1
  %cmp72 = icmp eq i8 %46, 93
  br i1 %cmp72, label %while.end2193, label %charclassloop

charclassloop:                                    ; preds = %land.rhs, %if.end59
  %47 = phi i8* [ %42, %if.end59 ], [ %44, %land.rhs ]
  %unicode_alternate.1 = phi %struct.av* [ null, %if.end59 ], [ %unicode_alternate.0, %land.rhs ]
  %optimize_invert.1 = phi i8 [ 1, %if.end59 ], [ %optimize_invert.0, %land.rhs ]
  %need_class.1 = phi i8 [ 0, %if.end59 ], [ %need_class.0, %land.rhs ]
  %rangebegin.1 = phi i8* [ null, %if.end59 ], [ %rangebegin.0, %land.rhs ]
  %range.1 = phi i64 [ 0, %if.end59 ], [ %range.0, %land.rhs ]
  %prevvalue.1 = phi i64 [ 12345678, %if.end59 ], [ %prevvalue.0, %land.rhs ]
  %tobool = icmp ne i64 %range.1, 0
  %rangebegin.1. = select i1 %tobool, i8* %rangebegin.1, i8* %47
  %utf8 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 17
  %48 = load i32* %utf8, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %48, 0
  br i1 %cmp77, label %if.else86, label %if.then79

if.then79:                                        ; preds = %charclassloop
  %49 = load i8** %end, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call83 = call i64 @Perl_utf8n_to_uvuni(i8* %47, i64 %sub.ptr.sub, i64* %numlen, i32 0) #8
  %50 = load i64* %numlen, align 8, !tbaa !5
  %51 = load i8** %parse, align 8, !tbaa !0
  %add.ptr85 = getelementptr inbounds i8* %51, i64 %50
  store i8* %add.ptr85, i8** %parse, align 8, !tbaa !0
  br label %if.end91

if.else86:                                        ; preds = %charclassloop
  %incdec.ptr88 = getelementptr inbounds i8* %47, i64 1
  store i8* %incdec.ptr88, i8** %parse, align 8, !tbaa !0
  %52 = load i8* %47, align 1, !tbaa !1
  %conv90 = zext i8 %52 to i64
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %if.then79
  %53 = phi i8* [ %add.ptr85, %if.then79 ], [ %incdec.ptr88, %if.else86 ]
  %value.0 = phi i64 [ %call83, %if.then79 ], [ %conv90, %if.else86 ]
  %54 = load i8** %end, align 8, !tbaa !0
  %cmp94 = icmp ult i8* %53, %54
  br i1 %cmp94, label %cond.true96, label %cond.end100

cond.true96:                                      ; preds = %if.end91
  %55 = load i8* %53, align 1, !tbaa !1
  %phitmp3041 = zext i8 %55 to i64
  br label %cond.end100

cond.end100:                                      ; preds = %if.end91, %cond.true96
  %cond101 = phi i64 [ %phitmp3041, %cond.true96 ], [ 0, %if.end91 ]
  switch i64 %value.0, label %if.end1958 [
    i64 91, label %land.lhs.true105
    i64 92, label %if.then121
  ]

land.lhs.true105:                                 ; preds = %cond.end100
  switch i64 %cond101, label %if.end1958 [
    i64 61, label %land.lhs.true.i3209
    i64 58, label %land.lhs.true.i3209
    i64 46, label %land.lhs.true.i3209
  ]

land.lhs.true.i3209:                              ; preds = %land.lhs.true105, %land.lhs.true105, %land.lhs.true105
  %add.ptr.i3208 = getelementptr inbounds i8* %53, i64 1
  %cmp1.i = icmp ult i8* %add.ptr.i3208, %54
  br i1 %cmp1.i, label %land.lhs.true2.i, label %if.end1958

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i3209
  %56 = load i8* %53, align 1, !tbaa !1
  switch i8 %56, label %if.end1958 [
    i8 58, label %if.then.i3210
    i8 61, label %if.then.i3210
    i8 46, label %if.then.i3210
  ]

if.then.i3210:                                    ; preds = %land.lhs.true2.i, %land.lhs.true2.i, %land.lhs.true2.i
  %conv25.i = sext i8 %56 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.end.i, %if.then.i3210
  %.pn.i = phi i8* [ %53, %if.then.i3210 ], [ %storemerge.i, %land.end.i ]
  %storemerge.i = getelementptr inbounds i8* %.pn.i, i64 1
  store i8* %storemerge.i, i8** %parse, align 8, !tbaa !0
  %cmp21.i = icmp ult i8* %storemerge.i, %54
  br i1 %cmp21.i, label %land.end.i, label %while.end.i

land.end.i:                                       ; preds = %while.cond.i
  %57 = load i8* %storemerge.i, align 1, !tbaa !1
  %conv24.i = zext i8 %57 to i32
  %cmp26.i = icmp eq i32 %conv24.i, %conv25.i
  br i1 %cmp26.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %land.end.i, %while.cond.i
  %cmp32.i = icmp eq i8* %storemerge.i, %54
  br i1 %cmp32.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %while.end.i
  store i8* %53, i8** %parse, align 8, !tbaa !0
  br label %if.end1958

if.else.i:                                        ; preds = %while.end.i
  %incdec.ptr37.i = getelementptr inbounds i8* %.pn.i, i64 2
  store i8* %incdec.ptr37.i, i8** %parse, align 8, !tbaa !0
  %58 = load i8* %incdec.ptr37.i, align 1, !tbaa !1
  %cmp40.i = icmp eq i8 %58, 93
  br i1 %cmp40.i, label %if.then42.i, label %if.else198.i

if.then42.i:                                      ; preds = %if.else.i
  %incdec.ptr44.i = getelementptr inbounds i8* %.pn.i, i64 3
  store i8* %incdec.ptr44.i, i8** %parse, align 8, !tbaa !0
  %59 = load i8* %53, align 1, !tbaa !1
  %cmp47.i = icmp eq i8 %59, 58
  br i1 %cmp47.i, label %if.then49.i, label %if.else166.i

if.then49.i:                                      ; preds = %if.then42.i
  %60 = load i8* %add.ptr.i3208, align 1, !tbaa !1
  %cmp51.i = icmp eq i8 %60, 94
  %incdec.ptr53.i = getelementptr inbounds i8* %53, i64 2
  %incdec.ptr53.add.ptr.i = select i1 %cmp51.i, i8* %incdec.ptr53.i, i8* %add.ptr.i3208
  %sub.ptr.lhs.cast.i3211 = ptrtoint i8* %storemerge.i to i64
  %sub.ptr.rhs.cast.i3212 = ptrtoint i8* %incdec.ptr53.add.ptr.i to i64
  %sub.ptr.sub.i3213 = sub i64 %sub.ptr.lhs.cast.i3211, %sub.ptr.rhs.cast.i3212
  %conv55.i = trunc i64 %sub.ptr.sub.i3213 to i32
  switch i32 %conv55.i, label %if.then152.i [
    i32 4, label %sw.bb.i
    i32 5, label %sw.bb59.i
    i32 6, label %sw.bb142.i
  ]

sw.bb.i:                                          ; preds = %if.then49.i
  %call.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str77, i64 0, i64 0), i64 4) #8
  %tobool.i3214 = icmp eq i32 %call.i, 0
  br i1 %tobool.i3214, label %if.then56.i, label %if.then152.i

if.then56.i:                                      ; preds = %sw.bb.i
  %cond58.i = zext i1 %cmp51.i to i32
  br label %if.then484

sw.bb59.i:                                        ; preds = %if.then49.i
  %arrayidx.i3215 = getelementptr inbounds i8* %incdec.ptr53.add.ptr.i, i64 4
  %61 = load i8* %arrayidx.i3215, align 1, !tbaa !1
  %conv60.i = sext i8 %61 to i32
  switch i32 %conv60.i, label %if.then152.i [
    i32 97, label %sw.bb61.i
    i32 101, label %sw.bb68.i
    i32 104, label %sw.bb75.i
    i32 105, label %sw.bb82.i
    i32 107, label %sw.bb89.i
    i32 108, label %sw.bb96.i
    i32 109, label %sw.bb103.i
    i32 114, label %sw.bb110.i
    i32 116, label %sw.bb123.i
  ]

sw.bb61.i:                                        ; preds = %sw.bb59.i
  %call62.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str78, i64 0, i64 0), i64 4) #8
  %tobool63.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.i, label %if.then64.i, label %if.then152.i

if.then64.i:                                      ; preds = %sw.bb61.i
  %cond66.i = select i1 %cmp51.i, i32 9, i32 8
  br label %if.then484

sw.bb68.i:                                        ; preds = %sw.bb59.i
  %call69.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i64 4) #8
  %tobool70.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.i, label %if.then71.i, label %if.then152.i

if.then71.i:                                      ; preds = %sw.bb68.i
  %cond73.i = select i1 %cmp51.i, i32 27, i32 26
  br label %if.then484

sw.bb75.i:                                        ; preds = %sw.bb59.i
  %call76.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0), i64 4) #8
  %tobool77.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.i, label %if.then78.i, label %if.then152.i

if.then78.i:                                      ; preds = %sw.bb75.i
  %cond80.i = select i1 %cmp51.i, i32 15, i32 14
  br label %if.then484

sw.bb82.i:                                        ; preds = %sw.bb59.i
  %call83.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0), i64 4) #8
  %tobool84.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.i, label %if.then85.i, label %if.then152.i

if.then85.i:                                      ; preds = %sw.bb82.i
  %cond87.i = select i1 %cmp51.i, i32 11, i32 10
  br label %if.then484

sw.bb89.i:                                        ; preds = %sw.bb59.i
  %call90.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str82, i64 0, i64 0), i64 4) #8
  %tobool91.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.i, label %if.then92.i, label %if.then152.i

if.then92.i:                                      ; preds = %sw.bb89.i
  %cond94.i = select i1 %cmp51.i, i32 29, i32 28
  br label %if.then484

sw.bb96.i:                                        ; preds = %sw.bb59.i
  %call97.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str83, i64 0, i64 0), i64 4) #8
  %tobool98.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.i, label %if.then99.i, label %if.then152.i

if.then99.i:                                      ; preds = %sw.bb96.i
  %cond101.i = select i1 %cmp51.i, i32 13, i32 12
  br label %if.then484

sw.bb103.i:                                       ; preds = %sw.bb59.i
  %call104.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str84, i64 0, i64 0), i64 4) #8
  %tobool105.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.i, label %if.then106.i, label %if.then152.i

if.then106.i:                                     ; preds = %sw.bb103.i
  %cond108.i = select i1 %cmp51.i, i32 7, i32 6
  br label %if.then484

sw.bb110.i:                                       ; preds = %sw.bb59.i
  %call111.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str85, i64 0, i64 0), i64 4) #8
  %tobool112.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.i, label %if.then113.i, label %if.end116.i

if.then113.i:                                     ; preds = %sw.bb110.i
  %cond115.i = select i1 %cmp51.i, i32 17, i32 16
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then113.i, %sw.bb110.i
  %namedclass.0.i = phi i32 [ -1, %sw.bb110.i ], [ %cond115.i, %if.then113.i ]
  %call117.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str86, i64 0, i64 0), i64 4) #8
  %tobool118.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.i, label %if.then119.i, label %sw.epilog149.i

if.then119.i:                                     ; preds = %if.end116.i
  %cond121.i = select i1 %cmp51.i, i32 23, i32 22
  br label %if.then484

sw.bb123.i:                                       ; preds = %sw.bb59.i
  %call124.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str87, i64 0, i64 0), i64 4) #8
  %tobool125.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.i, label %if.then126.i, label %if.end129.i

if.then126.i:                                     ; preds = %sw.bb123.i
  %cond128.i = select i1 %cmp51.i, i32 5, i32 4
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then126.i, %sw.bb123.i
  %namedclass.1.i = phi i32 [ -1, %sw.bb123.i ], [ %cond128.i, %if.then126.i ]
  %call130.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str88, i64 0, i64 0), i64 4) #8
  %tobool131.i = icmp eq i32 %call130.i, 0
  br i1 %tobool131.i, label %if.then132.i, label %if.end135.i

if.then132.i:                                     ; preds = %if.end129.i
  %cond134.i = select i1 %cmp51.i, i32 19, i32 18
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then132.i, %if.end129.i
  %namedclass.2.i = phi i32 [ %namedclass.1.i, %if.end129.i ], [ %cond134.i, %if.then132.i ]
  %call136.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str89, i64 0, i64 0), i64 4) #8
  %tobool137.i = icmp eq i32 %call136.i, 0
  br i1 %tobool137.i, label %if.then138.i, label %sw.epilog149.i

if.then138.i:                                     ; preds = %if.end135.i
  %cond140.i = select i1 %cmp51.i, i32 21, i32 20
  br label %if.then484

sw.bb142.i:                                       ; preds = %if.then49.i
  %call143.i = call i32 @memcmp(i8* %incdec.ptr53.add.ptr.i, i8* getelementptr inbounds ([7 x i8]* @.str90, i64 0, i64 0), i64 6) #8
  %tobool144.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.i, label %if.then145.i, label %if.then152.i

if.then145.i:                                     ; preds = %sw.bb142.i
  %cond147.i = select i1 %cmp51.i, i32 25, i32 24
  br label %if.then484

sw.epilog149.i:                                   ; preds = %if.end135.i, %if.end116.i
  %namedclass.3.i = phi i32 [ %namedclass.2.i, %if.end135.i ], [ %namedclass.0.i, %if.end116.i ]
  %cmp150.i = icmp eq i32 %namedclass.3.i, -1
  br i1 %cmp150.i, label %if.then152.i, label %if.end481

if.then152.i:                                     ; preds = %sw.epilog149.i, %sw.bb142.i, %sw.bb103.i, %sw.bb96.i, %sw.bb89.i, %sw.bb82.i, %sw.bb75.i, %sw.bb68.i, %sw.bb61.i, %sw.bb59.i, %sw.bb.i, %if.then49.i
  %precomp.i3216 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %62 = load i8** %precomp.i3216, align 8, !tbaa !0
  %sub.ptr.lhs.cast154.i = ptrtoint i8* %incdec.ptr44.i to i64
  %sub.ptr.rhs.cast155.i = ptrtoint i8* %62 to i64
  %sub.ptr.sub156.i = sub i64 %sub.ptr.lhs.cast154.i, %sub.ptr.rhs.cast155.i
  %sub.ptr.rhs.cast158.i = ptrtoint i8* %53 to i64
  %sub.ptr.sub159.i = xor i64 %sub.ptr.rhs.cast158.i, -1
  %sub.i = add i64 %sub.ptr.lhs.cast.i3211, %sub.ptr.sub159.i
  %conv161.i = trunc i64 %sub.ptr.sub156.i to i32
  %add.ptr164.i = getelementptr inbounds i8* %62, i64 %sub.ptr.sub156.i
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([29 x i8]* @.str91, i64 0, i64 0), i64 %sub.i, i8* %add.ptr.i3208, i32 %conv161.i, i8* %62, i8* %add.ptr164.i) #8
  br label %if.end1958

if.else166.i:                                     ; preds = %if.then42.i
  %63 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp167.i = icmp eq %struct.regnode* %63, @PL_regdummy
  br i1 %cmp167.i, label %if.end1958, label %while.cond170.i

while.cond170.i:                                  ; preds = %if.else166.i, %while.body180.i
  %64 = phi i8* [ %incdec.ptr182.i, %while.body180.i ], [ %incdec.ptr44.i, %if.else166.i ]
  %65 = load i8* %64, align 1, !tbaa !1
  switch i8 %65, label %while.body180.i [
    i8 93, label %while.end183.i
    i8 0, label %while.end183.i
  ]

while.body180.i:                                  ; preds = %while.cond170.i
  %incdec.ptr182.i = getelementptr inbounds i8* %64, i64 1
  store i8* %incdec.ptr182.i, i8** %parse, align 8, !tbaa !0
  br label %while.cond170.i

while.end183.i:                                   ; preds = %while.cond170.i, %while.cond170.i
  %precomp186.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %66 = load i8** %precomp186.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast187.i = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast188.i = ptrtoint i8* %66 to i64
  %sub.ptr.sub189.i = sub i64 %sub.ptr.lhs.cast187.i, %sub.ptr.rhs.cast188.i
  %conv192.i = trunc i64 %sub.ptr.sub189.i to i32
  %add.ptr195.i = getelementptr inbounds i8* %66, i64 %sub.ptr.sub189.i
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([55 x i8]* @.str92, i64 0, i64 0), i32 %conv25.i, i32 %conv25.i, i32 %conv192.i, i8* %66, i8* %add.ptr195.i) #8
  br label %if.end1958

if.else198.i:                                     ; preds = %if.else.i
  store i8* %53, i8** %parse, align 8, !tbaa !0
  br label %if.end1958

if.then121:                                       ; preds = %cond.end100
  %67 = load i32* %utf8, align 4, !tbaa !3
  %cmp123 = icmp eq i32 %67, 0
  br i1 %cmp123, label %if.else135, label %if.then125

if.then125:                                       ; preds = %if.then121
  %sub.ptr.lhs.cast129 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast130 = ptrtoint i8* %53 to i64
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130
  %call132 = call i64 @Perl_utf8n_to_uvuni(i8* %53, i64 %sub.ptr.sub131, i64* %numlen, i32 0) #8
  %68 = load i64* %numlen, align 8, !tbaa !5
  %69 = load i8** %parse, align 8, !tbaa !0
  %add.ptr134 = getelementptr inbounds i8* %69, i64 %68
  store i8* %add.ptr134, i8** %parse, align 8, !tbaa !0
  br label %if.end140

if.else135:                                       ; preds = %if.then121
  %incdec.ptr137 = getelementptr inbounds i8* %53, i64 1
  store i8* %incdec.ptr137, i8** %parse, align 8, !tbaa !0
  %70 = load i8* %53, align 1, !tbaa !1
  %conv139 = zext i8 %70 to i64
  br label %if.end140

if.end140:                                        ; preds = %if.else135, %if.then125
  %71 = phi i8* [ %add.ptr134, %if.then125 ], [ %incdec.ptr137, %if.else135 ]
  %value.1 = phi i64 [ %call132, %if.then125 ], [ %conv139, %if.else135 ]
  %conv141 = trunc i64 %value.1 to i32
  switch i32 %conv141, label %sw.default [
    i32 119, label %if.then484
    i32 87, label %sw.bb142
    i32 115, label %sw.bb143
    i32 83, label %sw.bb144
    i32 100, label %sw.bb145
    i32 68, label %sw.bb146
    i32 112, label %sw.bb147
    i32 80, label %sw.bb147
    i32 110, label %if.end1958
    i32 114, label %sw.bb357
    i32 116, label %sw.bb358
    i32 102, label %sw.bb359
    i32 98, label %sw.bb360
    i32 101, label %sw.bb361
    i32 97, label %sw.bb362
    i32 120, label %sw.bb363
    i32 99, label %sw.bb407
    i32 48, label %sw.bb421
    i32 49, label %sw.bb421
    i32 50, label %sw.bb421
    i32 51, label %sw.bb421
    i32 52, label %sw.bb421
    i32 53, label %sw.bb421
    i32 54, label %sw.bb421
    i32 55, label %sw.bb421
    i32 56, label %sw.bb421
    i32 57, label %sw.bb421
  ]

sw.bb142:                                         ; preds = %if.end140
  br label %if.then484

sw.bb143:                                         ; preds = %if.end140
  br label %if.then484

sw.bb144:                                         ; preds = %if.end140
  br label %if.then484

sw.bb145:                                         ; preds = %if.end140
  br label %if.then484

sw.bb146:                                         ; preds = %if.end140
  br label %if.then484

sw.bb147:                                         ; preds = %if.end140, %if.end140
  %72 = load i8** %end, align 8, !tbaa !0
  %cmp150 = icmp ult i8* %71, %72
  br i1 %cmp150, label %if.end168, label %if.then152

if.then152:                                       ; preds = %sw.bb147
  %73 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp154 = icmp eq %struct.regnode* %73, @PL_regdummy
  br i1 %cmp154, label %if.end157, label %if.then156

if.then156:                                       ; preds = %if.then152
  %rx = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %74 = load %struct.regexp** %rx, align 8, !tbaa !0
  %75 = bitcast %struct.regexp* %74 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %75) #8
  %.pre3358 = load i8** %parse, align 8, !tbaa !0
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.then152
  %76 = phi i8* [ %.pre3358, %if.then156 ], [ %71, %if.then152 ]
  %precomp = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %77 = load i8** %precomp, align 8, !tbaa !0
  %sub.ptr.lhs.cast159 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast160 = ptrtoint i8* %77 to i64
  %sub.ptr.sub161 = sub i64 %sub.ptr.lhs.cast159, %sub.ptr.rhs.cast160
  %conv163 = and i32 %conv141, 255
  %conv164 = trunc i64 %sub.ptr.sub161 to i32
  %add.ptr167 = getelementptr inbounds i8* %77, i64 %sub.ptr.sub161
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([12 x i8]* @.str50, i64 0, i64 0), i32 %conv163, i32 %conv164, i8* %77, i8* %add.ptr167) #9
  %.pre3353 = load i8** %parse, align 8, !tbaa !0
  br label %if.end168

if.end168:                                        ; preds = %sw.bb147, %if.end157
  %78 = phi i8* [ %71, %sw.bb147 ], [ %.pre3353, %if.end157 ]
  %79 = load i8* %78, align 1, !tbaa !1
  %cmp171 = icmp eq i8 %79, 123
  br i1 %cmp171, label %if.then173, label %if.end291

if.then173:                                       ; preds = %if.end168
  %incdec.ptr176 = getelementptr inbounds i8* %78, i64 1
  store i8* %incdec.ptr176, i8** %parse, align 8, !tbaa !0
  %call177 = call i8* @strchr(i8* %78, i32 125) #8
  %tobool178 = icmp eq i8* %call177, null
  br i1 %tobool178, label %if.then179, label %while.cond198

if.then179:                                       ; preds = %if.then173
  %80 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp181 = icmp eq %struct.regnode* %80, @PL_regdummy
  br i1 %cmp181, label %if.end185, label %if.then183

if.then183:                                       ; preds = %if.then179
  %rx184 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %81 = load %struct.regexp** %rx184, align 8, !tbaa !0
  %82 = bitcast %struct.regexp* %81 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %82) #8
  %.pre3354 = load i8** %parse, align 8, !tbaa !0
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.then179
  %83 = phi i8* [ %.pre3354, %if.then183 ], [ %incdec.ptr176, %if.then179 ]
  %precomp188 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %84 = load i8** %precomp188, align 8, !tbaa !0
  %sub.ptr.lhs.cast189 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast190 = ptrtoint i8* %84 to i64
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190
  %conv192 = and i32 %conv141, 255
  %conv193 = trunc i64 %sub.ptr.sub191 to i32
  %add.ptr196 = getelementptr inbounds i8* %84, i64 %sub.ptr.sub191
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([29 x i8]* @.str43, i64 0, i64 0), i32 %conv192, i32 %conv193, i8* %84, i8* %add.ptr196) #9
  %.pre3355.pre = load i8** %parse, align 8, !tbaa !0
  br label %while.cond198

while.cond198:                                    ; preds = %if.then173, %if.end185, %while.body222
  %85 = phi i8* [ %incdec.ptr224, %while.body222 ], [ %.pre3355.pre, %if.end185 ], [ %incdec.ptr176, %if.then173 ]
  %86 = load i8* %85, align 1, !tbaa !1
  switch i8 %86, label %while.end [
    i8 32, label %while.body222
    i8 9, label %while.body222
    i8 10, label %while.body222
    i8 13, label %while.body222
    i8 12, label %while.body222
  ]

while.body222:                                    ; preds = %while.cond198, %while.cond198, %while.cond198, %while.cond198, %while.cond198
  %incdec.ptr224 = getelementptr inbounds i8* %85, i64 1
  store i8* %incdec.ptr224, i8** %parse, align 8, !tbaa !0
  br label %while.cond198

while.end:                                        ; preds = %while.cond198
  %cmp226 = icmp eq i8* %call177, %85
  br i1 %cmp226, label %if.then228, label %if.end246

if.then228:                                       ; preds = %while.end
  %87 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp230 = icmp eq %struct.regnode* %87, @PL_regdummy
  br i1 %cmp230, label %if.end234, label %if.then232

if.then232:                                       ; preds = %if.then228
  %rx233 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %88 = load %struct.regexp** %rx233, align 8, !tbaa !0
  %89 = bitcast %struct.regexp* %88 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %89) #8
  %.pre3356 = load i8** %parse, align 8, !tbaa !0
  br label %if.end234

if.end234:                                        ; preds = %if.then232, %if.then228
  %90 = phi i8* [ %.pre3356, %if.then232 ], [ %call177, %if.then228 ]
  %precomp237 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %91 = load i8** %precomp237, align 8, !tbaa !0
  %sub.ptr.lhs.cast238 = ptrtoint i8* %90 to i64
  %sub.ptr.rhs.cast239 = ptrtoint i8* %91 to i64
  %sub.ptr.sub240 = sub i64 %sub.ptr.lhs.cast238, %sub.ptr.rhs.cast239
  %conv241 = and i32 %conv141, 255
  %conv242 = trunc i64 %sub.ptr.sub240 to i32
  %add.ptr245 = getelementptr inbounds i8* %91, i64 %sub.ptr.sub240
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([12 x i8]* @.str50, i64 0, i64 0), i32 %conv241, i32 %conv242, i8* %91, i8* %add.ptr245) #9
  %.pre3357 = load i8** %parse, align 8, !tbaa !0
  br label %if.end246

if.end246:                                        ; preds = %if.end234, %while.end
  %92 = phi i8* [ %.pre3357, %if.end234 ], [ %85, %while.end ]
  %sub.ptr.lhs.cast248 = ptrtoint i8* %call177 to i64
  %sub.ptr.rhs.cast249 = ptrtoint i8* %92 to i64
  %sub.ptr.sub250 = sub i64 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  br label %while.cond251

while.cond251:                                    ; preds = %while.cond251, %while.cond251, %while.cond251, %while.cond251, %while.cond251, %if.end246
  %n.0 = phi i64 [ %sub.ptr.sub250, %if.end246 ], [ %add.ptr253.sum, %while.cond251 ], [ %add.ptr253.sum, %while.cond251 ], [ %add.ptr253.sum, %while.cond251 ], [ %add.ptr253.sum, %while.cond251 ], [ %add.ptr253.sum, %while.cond251 ]
  %add.ptr253.sum = add i64 %n.0, -1
  %add.ptr254 = getelementptr inbounds i8* %92, i64 %add.ptr253.sum
  %93 = load i8* %add.ptr254, align 1, !tbaa !1
  switch i8 %93, label %if.end291 [
    i8 32, label %while.cond251
    i8 9, label %while.cond251
    i8 10, label %while.cond251
    i8 13, label %while.cond251
    i8 12, label %while.cond251
  ]

if.end291:                                        ; preds = %while.cond251, %if.end168
  %94 = phi i8* [ %78, %if.end168 ], [ %92, %while.cond251 ]
  %n.1 = phi i64 [ 1, %if.end168 ], [ %n.0, %while.cond251 ]
  %e.0 = phi i8* [ %78, %if.end168 ], [ %call177, %while.cond251 ]
  %95 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp293 = icmp eq %struct.regnode* %95, @PL_regdummy
  br i1 %cmp293, label %if.end349, label %if.then295

if.then295:                                       ; preds = %if.end291
  %96 = load i8* %94, align 1, !tbaa !1
  %cmp298 = icmp eq i8 %96, 94
  br i1 %cmp298, label %if.then300, label %if.end339

if.then300:                                       ; preds = %if.then295
  %incdec.ptr302 = getelementptr inbounds i8* %94, i64 1
  store i8* %incdec.ptr302, i8** %parse, align 8, !tbaa !0
  %cmp304 = icmp eq i64 %value.1, 112
  br label %while.cond308

while.cond308:                                    ; preds = %while.body334, %if.then300
  %97 = phi i8* [ %incdec.ptr302, %if.then300 ], [ %incdec.ptr336, %while.body334 ]
  %n.2.in = phi i64 [ %n.1, %if.then300 ], [ %n.2, %while.body334 ]
  %n.2 = add i64 %n.2.in, -1
  %98 = load i8* %97, align 1, !tbaa !1
  switch i8 %98, label %if.end339.loopexit [
    i8 32, label %while.body334
    i8 9, label %while.body334
    i8 10, label %while.body334
    i8 13, label %while.body334
    i8 12, label %while.body334
  ]

while.body334:                                    ; preds = %while.cond308, %while.cond308, %while.cond308, %while.cond308, %while.cond308
  %incdec.ptr336 = getelementptr inbounds i8* %97, i64 1
  store i8* %incdec.ptr336, i8** %parse, align 8, !tbaa !0
  br label %while.cond308

if.end339.loopexit:                               ; preds = %while.cond308
  %conv307 = select i1 %cmp304, i64 80, i64 112
  br label %if.end339

if.end339:                                        ; preds = %if.end339.loopexit, %if.then295
  %99 = phi i8* [ %94, %if.then295 ], [ %97, %if.end339.loopexit ]
  %n.3 = phi i64 [ %n.1, %if.then295 ], [ %n.2, %if.end339.loopexit ]
  %value.2 = phi i64 [ %value.1, %if.then295 ], [ %conv307, %if.end339.loopexit ]
  %cmp340 = icmp eq i64 %value.2, 112
  %conv343 = trunc i64 %n.3 to i32
  br i1 %cmp340, label %if.then342, label %if.else345

if.then342:                                       ; preds = %if.end339
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i32 %conv343, i8* %99) #8
  br label %if.end349

if.else345:                                       ; preds = %if.end339
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([13 x i8]* @.str52, i64 0, i64 0), i32 %conv343, i8* %99) #8
  br label %if.end349

if.end349:                                        ; preds = %if.then342, %if.else345, %if.end291
  %value.3 = phi i64 [ %value.1, %if.end291 ], [ 112, %if.then342 ], [ %value.2, %if.else345 ]
  %add.ptr350 = getelementptr inbounds i8* %e.0, i64 1
  store i8* %add.ptr350, i8** %parse, align 8, !tbaa !0
  %flags352 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %100 = load i8* %flags352, align 1, !tbaa !1
  %or354 = or i8 %100, 32
  store i8 %or354, i8* %flags352, align 1, !tbaa !1
  br label %if.then484

sw.bb357:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb358:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb359:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb360:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb361:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb362:                                         ; preds = %if.end140
  br label %if.end1958

sw.bb363:                                         ; preds = %if.end140
  %101 = load i8* %71, align 1, !tbaa !1
  %cmp366 = icmp eq i8 %101, 123
  br i1 %cmp366, label %if.then368, label %if.else400

if.then368:                                       ; preds = %sw.bb363
  store i32 3, i32* %flags369, align 4, !tbaa !3
  %incdec.ptr371 = getelementptr inbounds i8* %71, i64 1
  store i8* %incdec.ptr371, i8** %parse, align 8, !tbaa !0
  %call372 = call i8* @strchr(i8* %71, i32 125) #8
  %tobool373 = icmp eq i8* %call372, null
  br i1 %tobool373, label %if.then374, label %if.end391

if.then374:                                       ; preds = %if.then368
  %102 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp376 = icmp eq %struct.regnode* %102, @PL_regdummy
  br i1 %cmp376, label %if.end380, label %if.then378

if.then378:                                       ; preds = %if.then374
  %rx379 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %103 = load %struct.regexp** %rx379, align 8, !tbaa !0
  %104 = bitcast %struct.regexp* %103 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %104) #8
  %.pre3359 = load i8** %parse, align 8, !tbaa !0
  br label %if.end380

if.end380:                                        ; preds = %if.then378, %if.then374
  %105 = phi i8* [ %.pre3359, %if.then378 ], [ %incdec.ptr371, %if.then374 ]
  %precomp383 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %106 = load i8** %precomp383, align 8, !tbaa !0
  %sub.ptr.lhs.cast384 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast385 = ptrtoint i8* %106 to i64
  %sub.ptr.sub386 = sub i64 %sub.ptr.lhs.cast384, %sub.ptr.rhs.cast385
  %conv387 = trunc i64 %sub.ptr.sub386 to i32
  %add.ptr390 = getelementptr inbounds i8* %106, i64 %sub.ptr.sub386
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str46, i64 0, i64 0), i32 %conv387, i8* %106, i8* %add.ptr390) #8
  %.pre3360 = load i8** %parse, align 8, !tbaa !0
  br label %if.end391

if.end391:                                        ; preds = %if.then368, %if.end380
  %107 = phi i8* [ %incdec.ptr371, %if.then368 ], [ %.pre3360, %if.end380 ]
  %sub.ptr.lhs.cast393 = ptrtoint i8* %call372 to i64
  %sub.ptr.rhs.cast394 = ptrtoint i8* %107 to i64
  %sub.ptr.sub395 = sub i64 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast394
  store i64 %sub.ptr.sub395, i64* %numlen, align 8, !tbaa !5
  %call397 = call i64 @Perl_grok_hex(i8* %107, i64* %numlen, i32* %flags369, double* null) #8
  %add.ptr398 = getelementptr inbounds i8* %call372, i64 1
  store i8* %add.ptr398, i8** %parse, align 8, !tbaa !0
  br label %if.end1958

if.else400:                                       ; preds = %sw.bb363
  store i32 2, i32* %flags401, align 4, !tbaa !3
  store i64 2, i64* %numlen, align 8, !tbaa !5
  %call403 = call i64 @Perl_grok_hex(i8* %71, i64* %numlen, i32* %flags401, double* null) #8
  %108 = load i64* %numlen, align 8, !tbaa !5
  %109 = load i8** %parse, align 8, !tbaa !0
  %add.ptr405 = getelementptr inbounds i8* %109, i64 %108
  store i8* %add.ptr405, i8** %parse, align 8, !tbaa !0
  br label %if.end1958

sw.bb407:                                         ; preds = %if.end140
  %incdec.ptr409 = getelementptr inbounds i8* %71, i64 1
  store i8* %incdec.ptr409, i8** %parse, align 8, !tbaa !0
  %110 = load i8* %71, align 1, !tbaa !1
  %conv411 = zext i8 %110 to i64
  %.off = add i8 %110, -97
  %111 = icmp ult i8 %.off, 26
  %sub = add i64 %conv411, -32
  %cond420 = select i1 %111, i64 %sub, i64 %conv411
  %xor = xor i64 %cond420, 64
  br label %if.end1958

sw.bb421:                                         ; preds = %if.end140, %if.end140, %if.end140, %if.end140, %if.end140, %if.end140, %if.end140, %if.end140, %if.end140, %if.end140
  store i32 0, i32* %flags422, align 4, !tbaa !3
  store i64 3, i64* %numlen, align 8, !tbaa !5
  %incdec.ptr424 = getelementptr inbounds i8* %71, i64 -1
  store i8* %incdec.ptr424, i8** %parse, align 8, !tbaa !0
  %call425 = call i64 @Perl_grok_oct(i8* %incdec.ptr424, i64* %numlen, i32* %flags422, double* null) #8
  %112 = load i64* %numlen, align 8, !tbaa !5
  %113 = load i8** %parse, align 8, !tbaa !0
  %add.ptr427 = getelementptr inbounds i8* %113, i64 %112
  store i8* %add.ptr427, i8** %parse, align 8, !tbaa !0
  br label %if.end1958

sw.default:                                       ; preds = %if.end140
  %114 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp429 = icmp eq %struct.regnode* %114, @PL_regdummy
  br i1 %cmp429, label %if.end1958, label %land.lhs.true431

land.lhs.true431:                                 ; preds = %sw.default
  %115 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %115, i64 0, i32 14
  %116 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp432 = icmp eq %struct.sv* %116, null
  br i1 %cmp432, label %lor.lhs.false447, label %land.lhs.true434

land.lhs.true434:                                 ; preds = %land.lhs.true431
  %117 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings435 = getelementptr inbounds %struct.cop* %117, i64 0, i32 14
  %118 = load %struct.sv** %cop_warnings435, align 8, !tbaa !0
  %cmp436 = icmp eq %struct.sv* %118, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp436, label %lor.lhs.false447, label %land.lhs.true438

land.lhs.true438:                                 ; preds = %land.lhs.true434
  %119 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings439 = getelementptr inbounds %struct.cop* %119, i64 0, i32 14
  %120 = load %struct.sv** %cop_warnings439, align 8, !tbaa !0
  %cmp440 = icmp eq %struct.sv* %120, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp440, label %land.lhs.true455, label %lor.lhs.false442

lor.lhs.false442:                                 ; preds = %land.lhs.true438
  %121 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings443 = getelementptr inbounds %struct.cop* %121, i64 0, i32 14
  %122 = load %struct.sv** %cop_warnings443, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %122, i64 0, i32 0
  %123 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %123 to i8**
  %124 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %124, i64 5
  %125 = load i8* %arrayidx, align 1, !tbaa !1
  %and445 = and i8 %125, 1
  %tobool446 = icmp eq i8 %and445, 0
  br i1 %tobool446, label %lor.lhs.false447, label %land.lhs.true455

lor.lhs.false447:                                 ; preds = %lor.lhs.false442, %land.lhs.true434, %land.lhs.true431
  %126 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings448 = getelementptr inbounds %struct.cop* %126, i64 0, i32 14
  %127 = load %struct.sv** %cop_warnings448, align 8, !tbaa !0
  %cmp449 = icmp eq %struct.sv* %127, null
  br i1 %cmp449, label %land.lhs.true451, label %if.end1958

land.lhs.true451:                                 ; preds = %lor.lhs.false447
  %128 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and453 = and i8 %128, 1
  %tobool454 = icmp eq i8 %and453, 0
  br i1 %tobool454, label %if.end1958, label %land.lhs.true455

land.lhs.true455:                                 ; preds = %lor.lhs.false442, %land.lhs.true451, %land.lhs.true438
  %value.1.off = add i64 %value.1, -65
  %129 = icmp ult i64 %value.1.off, 26
  %value.1.off3144 = add i64 %value.1, -97
  %130 = icmp ult i64 %value.1.off3144, 26
  %or.cond = or i1 %129, %130
  br i1 %or.cond, label %if.then467, label %if.end1958

if.then467:                                       ; preds = %land.lhs.true455
  %131 = load i8** %parse, align 8, !tbaa !0
  %precomp470 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %132 = load i8** %precomp470, align 8, !tbaa !0
  %sub.ptr.lhs.cast471 = ptrtoint i8* %131 to i64
  %sub.ptr.rhs.cast472 = ptrtoint i8* %132 to i64
  %sub.ptr.sub473 = sub i64 %sub.ptr.lhs.cast471, %sub.ptr.rhs.cast472
  %conv475 = trunc i64 %sub.ptr.sub473 to i32
  %add.ptr478 = getelementptr inbounds i8* %132, i64 %sub.ptr.sub473
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([110 x i8]* @.str53, i64 0, i64 0), i32 %conv141, i32 %conv475, i8* %132, i8* %add.ptr478) #8
  br label %if.end1958

if.end481:                                        ; preds = %sw.epilog149.i
  %cmp482 = icmp sgt i32 %namedclass.3.i, -1
  br i1 %cmp482, label %if.then484, label %if.end1958

if.then484:                                       ; preds = %if.then56.i, %if.then64.i, %if.then71.i, %if.then78.i, %if.then85.i, %if.then92.i, %if.then99.i, %if.then106.i, %if.then119.i, %if.then138.i, %if.then145.i, %if.end481, %if.end140, %sw.bb142, %sw.bb143, %sw.bb144, %sw.bb145, %sw.bb146, %if.end349
  %value.43227 = phi i64 [ %value.3, %if.end349 ], [ %value.1, %sw.bb146 ], [ %value.1, %sw.bb145 ], [ %value.1, %sw.bb144 ], [ %value.1, %sw.bb143 ], [ %value.1, %sw.bb142 ], [ %value.1, %if.end140 ], [ 91, %if.end481 ], [ 91, %if.then145.i ], [ 91, %if.then138.i ], [ 91, %if.then119.i ], [ 91, %if.then106.i ], [ 91, %if.then99.i ], [ 91, %if.then92.i ], [ 91, %if.then85.i ], [ 91, %if.then78.i ], [ 91, %if.then71.i ], [ 91, %if.then64.i ], [ 91, %if.then56.i ]
  %namedclass.03226 = phi i32 [ 32, %if.end349 ], [ 5, %sw.bb146 ], [ 4, %sw.bb145 ], [ 3, %sw.bb144 ], [ 2, %sw.bb143 ], [ 1, %sw.bb142 ], [ 0, %if.end140 ], [ %namedclass.3.i, %if.end481 ], [ %cond147.i, %if.then145.i ], [ %cond140.i, %if.then138.i ], [ %cond121.i, %if.then119.i ], [ %cond108.i, %if.then106.i ], [ %cond101.i, %if.then99.i ], [ %cond94.i, %if.then92.i ], [ %cond87.i, %if.then85.i ], [ %cond80.i, %if.then78.i ], [ %cond73.i, %if.then71.i ], [ %cond66.i, %if.then64.i ], [ %cond58.i, %if.then56.i ]
  %133 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp486 = icmp ne %struct.regnode* %133, @PL_regdummy
  %tobool489 = icmp eq i8 %need_class.1, 0
  %or.cond3148 = and i1 %cmp486, %tobool489
  br i1 %or.cond3148, label %if.then490, label %if.end492

if.then490:                                       ; preds = %if.then484
  %arraydecay491 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %134 = bitcast i8* %arraydecay491 to i32*
  store i32 0, i32* %134, align 1
  br label %if.end492

if.end492:                                        ; preds = %if.then484, %if.then490
  br i1 %tobool, label %if.then494, label %if.end568

if.then494:                                       ; preds = %if.end492
  %135 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp496 = icmp eq %struct.regnode* %135, @PL_regdummy
  br i1 %cmp496, label %if.else1983, label %if.then498

if.then498:                                       ; preds = %if.then494
  %136 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings499 = getelementptr inbounds %struct.cop* %136, i64 0, i32 14
  %137 = load %struct.sv** %cop_warnings499, align 8, !tbaa !0
  %cmp500 = icmp eq %struct.sv* %137, null
  br i1 %cmp500, label %lor.lhs.false518, label %land.lhs.true502

land.lhs.true502:                                 ; preds = %if.then498
  %138 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings503 = getelementptr inbounds %struct.cop* %138, i64 0, i32 14
  %139 = load %struct.sv** %cop_warnings503, align 8, !tbaa !0
  %cmp504 = icmp eq %struct.sv* %139, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp504, label %lor.lhs.false518, label %land.lhs.true506

land.lhs.true506:                                 ; preds = %land.lhs.true502
  %140 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings507 = getelementptr inbounds %struct.cop* %140, i64 0, i32 14
  %141 = load %struct.sv** %cop_warnings507, align 8, !tbaa !0
  %cmp508 = icmp eq %struct.sv* %141, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp508, label %if.then526, label %lor.lhs.false510

lor.lhs.false510:                                 ; preds = %land.lhs.true506
  %142 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings511 = getelementptr inbounds %struct.cop* %142, i64 0, i32 14
  %143 = load %struct.sv** %cop_warnings511, align 8, !tbaa !0
  %sv_any512 = getelementptr inbounds %struct.sv* %143, i64 0, i32 0
  %144 = load i8** %sv_any512, align 8, !tbaa !0
  %xpv_pv513 = bitcast i8* %144 to i8**
  %145 = load i8** %xpv_pv513, align 8, !tbaa !0
  %arrayidx514 = getelementptr inbounds i8* %145, i64 5
  %146 = load i8* %arrayidx514, align 1, !tbaa !1
  %and516 = and i8 %146, 1
  %tobool517 = icmp eq i8 %and516, 0
  br i1 %tobool517, label %lor.lhs.false518, label %if.then526

lor.lhs.false518:                                 ; preds = %lor.lhs.false510, %land.lhs.true502, %if.then498
  %147 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings519 = getelementptr inbounds %struct.cop* %147, i64 0, i32 14
  %148 = load %struct.sv** %cop_warnings519, align 8, !tbaa !0
  %cmp520 = icmp eq %struct.sv* %148, null
  br i1 %cmp520, label %land.lhs.true522, label %if.end545

land.lhs.true522:                                 ; preds = %lor.lhs.false518
  %149 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and524 = and i8 %149, 1
  %tobool525 = icmp eq i8 %and524, 0
  br i1 %tobool525, label %if.end545, label %if.then526

if.then526:                                       ; preds = %lor.lhs.false510, %land.lhs.true522, %land.lhs.true506
  %150 = load i8** %parse, align 8, !tbaa !0
  %precomp529 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %151 = load i8** %precomp529, align 8, !tbaa !0
  %sub.ptr.lhs.cast530 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast531 = ptrtoint i8* %151 to i64
  %sub.ptr.sub532 = sub i64 %sub.ptr.lhs.cast530, %sub.ptr.rhs.cast531
  %sub.ptr.rhs.cast535 = ptrtoint i8* %rangebegin.1. to i64
  %sub.ptr.sub536 = sub i64 %sub.ptr.lhs.cast530, %sub.ptr.rhs.cast535
  %conv541 = trunc i64 %sub.ptr.sub532 to i32
  %add.ptr544 = getelementptr inbounds i8* %151, i64 %sub.ptr.sub532
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([75 x i8]* @.str54, i64 0, i64 0), i64 %sub.ptr.sub536, i64 %sub.ptr.sub536, i8* %rangebegin.1., i32 %conv541, i8* %151, i8* %add.ptr544) #8
  br label %if.end545

if.end545:                                        ; preds = %land.lhs.true522, %if.then526, %lor.lhs.false518
  %cmp546 = icmp slt i64 %prevvalue.1, 256
  br i1 %cmp546, label %if.then548, label %if.else561

if.then548:                                       ; preds = %if.end545
  %prevvalue.1.tr = trunc i64 %prevvalue.1 to i32
  %sh_prom = and i32 %prevvalue.1.tr, 7
  %shl = shl i32 1, %sh_prom
  %shr3140 = lshr i64 %prevvalue.1, 3
  %and550 = and i64 %shr3140, 31
  %bitmap551 = getelementptr inbounds %struct.regnode* %call, i64 2
  %152 = bitcast %struct.regnode* %bitmap551 to [32 x i8]*
  %arrayidx552 = getelementptr inbounds [32 x i8]* %152, i64 0, i64 %and550
  %153 = load i8* %arrayidx552, align 1, !tbaa !1
  %conv5533141 = zext i8 %153 to i32
  %or554 = or i32 %conv5533141, %shl
  %conv555 = trunc i32 %or554 to i8
  store i8 %conv555, i8* %arrayidx552, align 1, !tbaa !1
  %154 = getelementptr inbounds %struct.regnode* %call, i64 3, i32 1
  %155 = load i8* %154, align 1, !tbaa !1
  %or559 = or i8 %155, 32
  store i8 %or559, i8* %154, align 1, !tbaa !1
  br label %if.end568

if.else561:                                       ; preds = %if.end545
  %flags562 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %156 = load i8* %flags562, align 1, !tbaa !1
  %or564 = or i8 %156, 32
  store i8 %or564, i8* %flags562, align 1, !tbaa !1
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([13 x i8]* @.str55, i64 0, i64 0), i64 %prevvalue.1, i64 45) #8
  br label %if.end568

if.end568:                                        ; preds = %if.end492, %if.else561, %if.then548
  %.pr3229 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp570 = icmp eq %struct.regnode* %.pr3229, @PL_regdummy
  br i1 %cmp570, label %if.else1983, label %if.then572

if.then572:                                       ; preds = %if.end568
  switch i32 %namedclass.03226, label %if.end1931 [
    i32 0, label %sw.bb578
    i32 1, label %sw.bb626
    i32 6, label %sw.bb678
    i32 7, label %sw.bb727
    i32 8, label %sw.bb776
    i32 9, label %sw.bb819
    i32 10, label %sw.bb862
    i32 11, label %sw.bb892
    i32 28, label %sw.bb922
    i32 29, label %sw.bb959
    i32 12, label %sw.bb996
    i32 13, label %sw.bb1033
    i32 4, label %sw.bb1070
    i32 5, label %sw.bb1100
    i32 14, label %sw.bb1147
    i32 15, label %sw.bb1223
    i32 16, label %sw.bb1299
    i32 17, label %sw.bb1336
    i32 18, label %sw.bb1373
    i32 19, label %sw.bb1413
    i32 26, label %sw.bb1453
    i32 27, label %sw.bb1502
    i32 20, label %sw.bb1551
    i32 21, label %sw.bb1606
    i32 2, label %sw.bb1661
    i32 3, label %sw.bb1707
    i32 22, label %sw.bb1753
    i32 23, label %sw.bb1790
    i32 24, label %sw.bb1827
    i32 25, label %sw.bb1876
    i32 32, label %if.end1946
  ]

sw.bb578:                                         ; preds = %if.then572
  %flags579 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %157 = load i32* %flags579, align 4, !tbaa !3
  %and580 = and i32 %157, 2048
  %cmp581 = icmp eq i32 %and580, 0
  br i1 %cmp581, label %for.cond.preheader, label %if.then583

for.cond.preheader:                               ; preds = %sw.bb578
  %bitmap618 = getelementptr inbounds %struct.regnode* %call, i64 2
  %158 = bitcast %struct.regnode* %bitmap618 to [32 x i8]*
  br label %for.body

if.then583:                                       ; preds = %sw.bb578
  %arrayidx585 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %159 = load i8* %arrayidx585, align 1, !tbaa !1
  %or587 = or i8 %159, 1
  store i8 %or587, i8* %arrayidx585, align 1, !tbaa !1
  br label %if.then1944

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %value.53250 = phi i64 [ 0, %for.cond.preheader ], [ %inc624, %for.inc ]
  %value.5.off = add i64 %value.53250, -65
  %160 = icmp ult i64 %value.5.off, 26
  %value.5.off3136 = add i64 %value.53250, -97
  %161 = icmp ult i64 %value.5.off3136, 26
  %or.cond3150 = or i1 %160, %161
  br i1 %or.cond3150, label %if.then612, label %lor.lhs.false603

lor.lhs.false603:                                 ; preds = %for.body
  %value.5.off3137 = add i64 %value.53250, -48
  %162 = icmp ult i64 %value.5.off3137, 10
  %cmp610 = icmp eq i64 %value.53250, 95
  %or.cond2324 = or i1 %162, %cmp610
  br i1 %or.cond2324, label %if.then612, label %for.inc

if.then612:                                       ; preds = %lor.lhs.false603, %for.body
  %value.5.tr = trunc i64 %value.53250 to i32
  %sh_prom614 = and i32 %value.5.tr, 7
  %shl615 = shl i32 1, %sh_prom614
  %shr616 = lshr i64 %value.53250, 3
  %and617 = and i64 %shr616, 31
  %arrayidx619 = getelementptr inbounds [32 x i8]* %158, i64 0, i64 %and617
  %163 = load i8* %arrayidx619, align 1, !tbaa !1
  %conv6203138 = zext i8 %163 to i32
  %or621 = or i32 %conv6203138, %shl615
  %conv622 = trunc i32 %or621 to i8
  store i8 %conv622, i8* %arrayidx619, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.then612, %lor.lhs.false603
  %inc624 = add i64 %value.53250, 1
  %exitcond3319 = icmp eq i64 %inc624, 256
  br i1 %exitcond3319, label %if.then1944, label %for.body

sw.bb626:                                         ; preds = %if.then572
  %flags627 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %164 = load i32* %flags627, align 4, !tbaa !3
  %and628 = and i32 %164, 2048
  %cmp629 = icmp eq i32 %and628, 0
  br i1 %cmp629, label %for.cond638.preheader, label %if.then631

for.cond638.preheader:                            ; preds = %sw.bb626
  %bitmap668 = getelementptr inbounds %struct.regnode* %call, i64 2
  %165 = bitcast %struct.regnode* %bitmap668 to [32 x i8]*
  br label %for.body641

if.then631:                                       ; preds = %sw.bb626
  %arrayidx633 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %166 = load i8* %arrayidx633, align 1, !tbaa !1
  %or635 = or i8 %166, 2
  store i8 %or635, i8* %arrayidx633, align 1, !tbaa !1
  br label %if.then1944

for.body641:                                      ; preds = %for.inc674, %for.cond638.preheader
  %value.63253 = phi i64 [ 0, %for.cond638.preheader ], [ %inc675, %for.inc674 ]
  %value.6.off = add i64 %value.63253, -65
  %167 = icmp ult i64 %value.6.off, 26
  %value.6.off3132 = add i64 %value.63253, -97
  %168 = icmp ult i64 %value.6.off3132, 26
  %or.cond3152 = or i1 %167, %168
  br i1 %or.cond3152, label %for.inc674, label %lor.lhs.false653

lor.lhs.false653:                                 ; preds = %for.body641
  %value.6.off3133 = add i64 %value.63253, -48
  %169 = icmp ult i64 %value.6.off3133, 10
  %cmp660 = icmp eq i64 %value.63253, 95
  %or.cond2328 = or i1 %169, %cmp660
  br i1 %or.cond2328, label %for.inc674, label %if.then662

if.then662:                                       ; preds = %lor.lhs.false653
  %value.6.tr = trunc i64 %value.63253 to i32
  %sh_prom664 = and i32 %value.6.tr, 7
  %shl665 = shl i32 1, %sh_prom664
  %shr666 = lshr i64 %value.63253, 3
  %and667 = and i64 %shr666, 31
  %arrayidx669 = getelementptr inbounds [32 x i8]* %165, i64 0, i64 %and667
  %170 = load i8* %arrayidx669, align 1, !tbaa !1
  %conv6703134 = zext i8 %170 to i32
  %or671 = or i32 %conv6703134, %shl665
  %conv672 = trunc i32 %or671 to i8
  store i8 %conv672, i8* %arrayidx669, align 1, !tbaa !1
  br label %for.inc674

for.inc674:                                       ; preds = %if.then662, %for.body641, %lor.lhs.false653
  %inc675 = add i64 %value.63253, 1
  %exitcond3320 = icmp eq i64 %inc675, 256
  br i1 %exitcond3320, label %if.then1944, label %for.body641

sw.bb678:                                         ; preds = %if.then572
  %flags679 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %171 = load i32* %flags679, align 4, !tbaa !3
  %and680 = and i32 %171, 2048
  %cmp681 = icmp eq i32 %and680, 0
  br i1 %cmp681, label %for.cond690.preheader, label %if.then683

for.cond690.preheader:                            ; preds = %sw.bb678
  %bitmap717 = getelementptr inbounds %struct.regnode* %call, i64 2
  %172 = bitcast %struct.regnode* %bitmap717 to [32 x i8]*
  br label %for.body693

if.then683:                                       ; preds = %sw.bb678
  %arrayidx685 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %173 = load i8* %arrayidx685, align 1, !tbaa !1
  %or687 = or i8 %173, 64
  store i8 %or687, i8* %arrayidx685, align 1, !tbaa !1
  br label %if.then1944

for.body693:                                      ; preds = %for.inc723, %for.cond690.preheader
  %value.73255 = phi i64 [ 0, %for.cond690.preheader ], [ %inc724, %for.inc723 ]
  %value.7.off = add i64 %value.73255, -65
  %174 = icmp ult i64 %value.7.off, 26
  %value.7.off3128 = add i64 %value.73255, -97
  %175 = icmp ult i64 %value.7.off3128, 26
  %or.cond3154 = or i1 %174, %175
  %value.7.off3129 = add i64 %value.73255, -48
  %176 = icmp ult i64 %value.7.off3129, 10
  %or.cond3156 = or i1 %or.cond3154, %176
  br i1 %or.cond3156, label %if.then711, label %for.inc723

if.then711:                                       ; preds = %for.body693
  %value.7.tr = trunc i64 %value.73255 to i32
  %sh_prom713 = and i32 %value.7.tr, 7
  %shl714 = shl i32 1, %sh_prom713
  %shr715 = lshr i64 %value.73255, 3
  %and716 = and i64 %shr715, 31
  %arrayidx718 = getelementptr inbounds [32 x i8]* %172, i64 0, i64 %and716
  %177 = load i8* %arrayidx718, align 1, !tbaa !1
  %conv7193130 = zext i8 %177 to i32
  %or720 = or i32 %conv7193130, %shl714
  %conv721 = trunc i32 %or720 to i8
  store i8 %conv721, i8* %arrayidx718, align 1, !tbaa !1
  br label %for.inc723

for.inc723:                                       ; preds = %for.body693, %if.then711
  %inc724 = add i64 %value.73255, 1
  %exitcond3321 = icmp eq i64 %inc724, 256
  br i1 %exitcond3321, label %if.then1944, label %for.body693

sw.bb727:                                         ; preds = %if.then572
  %flags728 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %178 = load i32* %flags728, align 4, !tbaa !3
  %and729 = and i32 %178, 2048
  %cmp730 = icmp eq i32 %and729, 0
  br i1 %cmp730, label %for.cond739.preheader, label %if.then732

for.cond739.preheader:                            ; preds = %sw.bb727
  %bitmap766 = getelementptr inbounds %struct.regnode* %call, i64 2
  %179 = bitcast %struct.regnode* %bitmap766 to [32 x i8]*
  br label %for.body742

if.then732:                                       ; preds = %sw.bb727
  %arrayidx734 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %180 = load i8* %arrayidx734, align 1, !tbaa !1
  %or736 = or i8 %180, -128
  store i8 %or736, i8* %arrayidx734, align 1, !tbaa !1
  br label %if.then1944

for.body742:                                      ; preds = %for.inc772, %for.cond739.preheader
  %value.83257 = phi i64 [ 0, %for.cond739.preheader ], [ %inc773, %for.inc772 ]
  %value.8.off = add i64 %value.83257, -65
  %181 = icmp ult i64 %value.8.off, 26
  %value.8.off3124 = add i64 %value.83257, -97
  %182 = icmp ult i64 %value.8.off3124, 26
  %or.cond3158 = or i1 %181, %182
  %value.8.off3125 = add i64 %value.83257, -48
  %183 = icmp ult i64 %value.8.off3125, 10
  %or.cond3160 = or i1 %or.cond3158, %183
  br i1 %or.cond3160, label %for.inc772, label %if.then760

if.then760:                                       ; preds = %for.body742
  %value.8.tr = trunc i64 %value.83257 to i32
  %sh_prom762 = and i32 %value.8.tr, 7
  %shl763 = shl i32 1, %sh_prom762
  %shr764 = lshr i64 %value.83257, 3
  %and765 = and i64 %shr764, 31
  %arrayidx767 = getelementptr inbounds [32 x i8]* %179, i64 0, i64 %and765
  %184 = load i8* %arrayidx767, align 1, !tbaa !1
  %conv7683126 = zext i8 %184 to i32
  %or769 = or i32 %conv7683126, %shl763
  %conv770 = trunc i32 %or769 to i8
  store i8 %conv770, i8* %arrayidx767, align 1, !tbaa !1
  br label %for.inc772

for.inc772:                                       ; preds = %if.then760, %for.body742
  %inc773 = add i64 %value.83257, 1
  %exitcond3322 = icmp eq i64 %inc773, 256
  br i1 %exitcond3322, label %if.then1944, label %for.body742

sw.bb776:                                         ; preds = %if.then572
  %flags777 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %185 = load i32* %flags777, align 4, !tbaa !3
  %and778 = and i32 %185, 2048
  %cmp779 = icmp eq i32 %and778, 0
  br i1 %cmp779, label %for.cond788.preheader, label %if.then781

for.cond788.preheader:                            ; preds = %sw.bb776
  %bitmap809 = getelementptr inbounds %struct.regnode* %call, i64 2
  %186 = bitcast %struct.regnode* %bitmap809 to [32 x i8]*
  br label %for.body791

if.then781:                                       ; preds = %sw.bb776
  %187 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %188 = load i8* %187, align 1, !tbaa !1
  %or785 = or i8 %188, 1
  store i8 %or785, i8* %187, align 1, !tbaa !1
  br label %if.then1944

for.body791:                                      ; preds = %for.inc815, %for.cond788.preheader
  %value.93259 = phi i64 [ 0, %for.cond788.preheader ], [ %inc816, %for.inc815 ]
  %value.9.off = add i64 %value.93259, -65
  %189 = icmp ult i64 %value.9.off, 26
  %value.9.off3121 = add i64 %value.93259, -97
  %190 = icmp ult i64 %value.9.off3121, 26
  %or.cond3162 = or i1 %189, %190
  br i1 %or.cond3162, label %if.then803, label %for.inc815

if.then803:                                       ; preds = %for.body791
  %value.9.tr = trunc i64 %value.93259 to i32
  %sh_prom805 = and i32 %value.9.tr, 7
  %shl806 = shl i32 1, %sh_prom805
  %shr807 = lshr i64 %value.93259, 3
  %and808 = and i64 %shr807, 31
  %arrayidx810 = getelementptr inbounds [32 x i8]* %186, i64 0, i64 %and808
  %191 = load i8* %arrayidx810, align 1, !tbaa !1
  %conv8113122 = zext i8 %191 to i32
  %or812 = or i32 %conv8113122, %shl806
  %conv813 = trunc i32 %or812 to i8
  store i8 %conv813, i8* %arrayidx810, align 1, !tbaa !1
  br label %for.inc815

for.inc815:                                       ; preds = %for.body791, %if.then803
  %inc816 = add i64 %value.93259, 1
  %exitcond3323 = icmp eq i64 %inc816, 256
  br i1 %exitcond3323, label %if.then1944, label %for.body791

sw.bb819:                                         ; preds = %if.then572
  %flags820 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %192 = load i32* %flags820, align 4, !tbaa !3
  %and821 = and i32 %192, 2048
  %cmp822 = icmp eq i32 %and821, 0
  br i1 %cmp822, label %for.cond831.preheader, label %if.then824

for.cond831.preheader:                            ; preds = %sw.bb819
  %bitmap852 = getelementptr inbounds %struct.regnode* %call, i64 2
  %193 = bitcast %struct.regnode* %bitmap852 to [32 x i8]*
  br label %for.body834

if.then824:                                       ; preds = %sw.bb819
  %194 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %195 = load i8* %194, align 1, !tbaa !1
  %or828 = or i8 %195, 2
  store i8 %or828, i8* %194, align 1, !tbaa !1
  br label %if.then1944

for.body834:                                      ; preds = %for.inc858, %for.cond831.preheader
  %value.103261 = phi i64 [ 0, %for.cond831.preheader ], [ %inc859, %for.inc858 ]
  %value.10.off = add i64 %value.103261, -65
  %196 = icmp ult i64 %value.10.off, 26
  %value.10.off3118 = add i64 %value.103261, -97
  %197 = icmp ult i64 %value.10.off3118, 26
  %or.cond3164 = or i1 %196, %197
  br i1 %or.cond3164, label %for.inc858, label %if.then846

if.then846:                                       ; preds = %for.body834
  %value.10.tr = trunc i64 %value.103261 to i32
  %sh_prom848 = and i32 %value.10.tr, 7
  %shl849 = shl i32 1, %sh_prom848
  %shr850 = lshr i64 %value.103261, 3
  %and851 = and i64 %shr850, 31
  %arrayidx853 = getelementptr inbounds [32 x i8]* %193, i64 0, i64 %and851
  %198 = load i8* %arrayidx853, align 1, !tbaa !1
  %conv8543119 = zext i8 %198 to i32
  %or855 = or i32 %conv8543119, %shl849
  %conv856 = trunc i32 %or855 to i8
  store i8 %conv856, i8* %arrayidx853, align 1, !tbaa !1
  br label %for.inc858

for.inc858:                                       ; preds = %if.then846, %for.body834
  %inc859 = add i64 %value.103261, 1
  %exitcond3324 = icmp eq i64 %inc859, 256
  br i1 %exitcond3324, label %if.then1944, label %for.body834

sw.bb862:                                         ; preds = %if.then572
  %flags863 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %199 = load i32* %flags863, align 4, !tbaa !3
  %and864 = and i32 %199, 2048
  %cmp865 = icmp eq i32 %and864, 0
  br i1 %cmp865, label %for.cond874.preheader, label %if.then867

for.cond874.preheader:                            ; preds = %sw.bb862
  %bitmap883 = getelementptr inbounds %struct.regnode* %call, i64 2
  %200 = bitcast %struct.regnode* %bitmap883 to [32 x i8]*
  br label %for.body877

if.then867:                                       ; preds = %sw.bb862
  %201 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %202 = load i8* %201, align 1, !tbaa !1
  %or871 = or i8 %202, 4
  store i8 %or871, i8* %201, align 1, !tbaa !1
  br label %if.then1944

for.body877:                                      ; preds = %for.body877, %for.cond874.preheader
  %value.113263 = phi i64 [ 0, %for.cond874.preheader ], [ %inc889, %for.body877 ]
  %value.11.tr = trunc i64 %value.113263 to i32
  %sh_prom879 = and i32 %value.11.tr, 7
  %shl880 = shl i32 1, %sh_prom879
  %shr881 = lshr i64 %value.113263, 3
  %and882 = and i64 %shr881, 31
  %arrayidx884 = getelementptr inbounds [32 x i8]* %200, i64 0, i64 %and882
  %203 = load i8* %arrayidx884, align 1, !tbaa !1
  %conv8853116 = zext i8 %203 to i32
  %or886 = or i32 %conv8853116, %shl880
  %conv887 = trunc i32 %or886 to i8
  store i8 %conv887, i8* %arrayidx884, align 1, !tbaa !1
  %inc889 = add i64 %value.113263, 1
  %exitcond3325 = icmp eq i64 %inc889, 128
  br i1 %exitcond3325, label %if.then1944, label %for.body877

sw.bb892:                                         ; preds = %if.then572
  %flags893 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %204 = load i32* %flags893, align 4, !tbaa !3
  %and894 = and i32 %204, 2048
  %cmp895 = icmp eq i32 %and894, 0
  br i1 %cmp895, label %for.cond904.preheader, label %if.then897

for.cond904.preheader:                            ; preds = %sw.bb892
  %bitmap913 = getelementptr inbounds %struct.regnode* %call, i64 2
  %205 = bitcast %struct.regnode* %bitmap913 to [32 x i8]*
  br label %for.body907

if.then897:                                       ; preds = %sw.bb892
  %206 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %207 = load i8* %206, align 1, !tbaa !1
  %or901 = or i8 %207, 8
  store i8 %or901, i8* %206, align 1, !tbaa !1
  br label %if.then1944

for.body907:                                      ; preds = %for.body907, %for.cond904.preheader
  %value.123265 = phi i64 [ 128, %for.cond904.preheader ], [ %inc919, %for.body907 ]
  %value.12.tr = trunc i64 %value.123265 to i32
  %sh_prom909 = and i32 %value.12.tr, 7
  %shl910 = shl i32 1, %sh_prom909
  %shr911 = lshr i64 %value.123265, 3
  %and912 = and i64 %shr911, 31
  %arrayidx914 = getelementptr inbounds [32 x i8]* %205, i64 0, i64 %and912
  %208 = load i8* %arrayidx914, align 1, !tbaa !1
  %conv9153114 = zext i8 %208 to i32
  %or916 = or i32 %conv9153114, %shl910
  %conv917 = trunc i32 %or916 to i8
  store i8 %conv917, i8* %arrayidx914, align 1, !tbaa !1
  %inc919 = add i64 %value.123265, 1
  %exitcond3326 = icmp eq i64 %inc919, 256
  br i1 %exitcond3326, label %if.then1944, label %for.body907

sw.bb922:                                         ; preds = %if.then572
  %flags923 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %209 = load i32* %flags923, align 4, !tbaa !3
  %and924 = and i32 %209, 2048
  %cmp925 = icmp eq i32 %and924, 0
  br i1 %cmp925, label %for.cond934.preheader, label %if.then927

for.cond934.preheader:                            ; preds = %sw.bb922
  %bitmap949 = getelementptr inbounds %struct.regnode* %call, i64 2
  %210 = bitcast %struct.regnode* %bitmap949 to [32 x i8]*
  br label %for.body937

if.then927:                                       ; preds = %sw.bb922
  %classflags928 = getelementptr inbounds %struct.regnode* %call, i64 10
  %211 = bitcast %struct.regnode* %classflags928 to [4 x i8]*
  %arrayidx929 = getelementptr inbounds [4 x i8]* %211, i64 0, i64 3
  %212 = load i8* %arrayidx929, align 1, !tbaa !1
  %or931 = or i8 %212, 16
  store i8 %or931, i8* %arrayidx929, align 1, !tbaa !1
  br label %if.then1944

for.body937:                                      ; preds = %for.inc955, %for.cond934.preheader
  %value.133267 = phi i64 [ 0, %for.cond934.preheader ], [ %inc956, %for.inc955 ]
  switch i64 %value.133267, label %for.inc955 [
    i64 32, label %if.then943
    i64 9, label %if.then943
  ]

if.then943:                                       ; preds = %for.body937, %for.body937
  %value.13.tr = trunc i64 %value.133267 to i32
  %sh_prom945 = and i32 %value.13.tr, 7
  %shl946 = shl i32 1, %sh_prom945
  %shr947 = lshr i64 %value.133267, 3
  %and948 = and i64 %shr947, 31
  %arrayidx950 = getelementptr inbounds [32 x i8]* %210, i64 0, i64 %and948
  %213 = load i8* %arrayidx950, align 1, !tbaa !1
  %conv9513112 = zext i8 %213 to i32
  %or952 = or i32 %conv9513112, %shl946
  %conv953 = trunc i32 %or952 to i8
  store i8 %conv953, i8* %arrayidx950, align 1, !tbaa !1
  br label %for.inc955

for.inc955:                                       ; preds = %for.body937, %if.then943
  %inc956 = add i64 %value.133267, 1
  %exitcond3327 = icmp eq i64 %inc956, 256
  br i1 %exitcond3327, label %if.then1944, label %for.body937

sw.bb959:                                         ; preds = %if.then572
  %flags960 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %214 = load i32* %flags960, align 4, !tbaa !3
  %and961 = and i32 %214, 2048
  %cmp962 = icmp eq i32 %and961, 0
  br i1 %cmp962, label %for.cond971.preheader, label %if.then964

for.cond971.preheader:                            ; preds = %sw.bb959
  %bitmap986 = getelementptr inbounds %struct.regnode* %call, i64 2
  %215 = bitcast %struct.regnode* %bitmap986 to [32 x i8]*
  br label %for.body974

if.then964:                                       ; preds = %sw.bb959
  %classflags965 = getelementptr inbounds %struct.regnode* %call, i64 10
  %216 = bitcast %struct.regnode* %classflags965 to [4 x i8]*
  %arrayidx966 = getelementptr inbounds [4 x i8]* %216, i64 0, i64 3
  %217 = load i8* %arrayidx966, align 1, !tbaa !1
  %or968 = or i8 %217, 32
  store i8 %or968, i8* %arrayidx966, align 1, !tbaa !1
  br label %if.then1944

for.body974:                                      ; preds = %for.inc992, %for.cond971.preheader
  %value.143270 = phi i64 [ 0, %for.cond971.preheader ], [ %inc993, %for.inc992 ]
  switch i64 %value.143270, label %if.then980 [
    i64 32, label %for.inc992
    i64 9, label %for.inc992
  ]

if.then980:                                       ; preds = %for.body974
  %value.14.tr = trunc i64 %value.143270 to i32
  %sh_prom982 = and i32 %value.14.tr, 7
  %shl983 = shl i32 1, %sh_prom982
  %shr984 = lshr i64 %value.143270, 3
  %and985 = and i64 %shr984, 31
  %arrayidx987 = getelementptr inbounds [32 x i8]* %215, i64 0, i64 %and985
  %218 = load i8* %arrayidx987, align 1, !tbaa !1
  %conv9883110 = zext i8 %218 to i32
  %or989 = or i32 %conv9883110, %shl983
  %conv990 = trunc i32 %or989 to i8
  store i8 %conv990, i8* %arrayidx987, align 1, !tbaa !1
  br label %for.inc992

for.inc992:                                       ; preds = %for.body974, %for.body974, %if.then980
  %inc993 = add i64 %value.143270, 1
  %exitcond3328 = icmp eq i64 %inc993, 256
  br i1 %exitcond3328, label %if.then1944, label %for.body974

sw.bb996:                                         ; preds = %if.then572
  %flags997 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %219 = load i32* %flags997, align 4, !tbaa !3
  %and998 = and i32 %219, 2048
  %cmp999 = icmp eq i32 %and998, 0
  br i1 %cmp999, label %for.cond1008.preheader, label %if.then1001

for.cond1008.preheader:                           ; preds = %sw.bb996
  %bitmap1023 = getelementptr inbounds %struct.regnode* %call, i64 2
  %220 = bitcast %struct.regnode* %bitmap1023 to [32 x i8]*
  br label %for.body1011

if.then1001:                                      ; preds = %sw.bb996
  %221 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %222 = load i8* %221, align 1, !tbaa !1
  %or1005 = or i8 %222, 16
  store i8 %or1005, i8* %221, align 1, !tbaa !1
  br label %if.then1944

for.body1011:                                     ; preds = %for.inc1029, %for.cond1008.preheader
  %value.153272 = phi i64 [ 0, %for.cond1008.preheader ], [ %inc1030, %for.inc1029 ]
  %cmp1012 = icmp ult i64 %value.153272, 32
  %cmp1015 = icmp eq i64 %value.153272, 127
  %or.cond2341 = or i1 %cmp1012, %cmp1015
  br i1 %or.cond2341, label %if.then1017, label %for.inc1029

if.then1017:                                      ; preds = %for.body1011
  %value.15.tr = trunc i64 %value.153272 to i32
  %sh_prom1019 = and i32 %value.15.tr, 7
  %shl1020 = shl i32 1, %sh_prom1019
  %shr1021 = lshr i64 %value.153272, 3
  %and1022 = and i64 %shr1021, 31
  %arrayidx1024 = getelementptr inbounds [32 x i8]* %220, i64 0, i64 %and1022
  %223 = load i8* %arrayidx1024, align 1, !tbaa !1
  %conv10253108 = zext i8 %223 to i32
  %or1026 = or i32 %conv10253108, %shl1020
  %conv1027 = trunc i32 %or1026 to i8
  store i8 %conv1027, i8* %arrayidx1024, align 1, !tbaa !1
  br label %for.inc1029

for.inc1029:                                      ; preds = %if.then1017, %for.body1011
  %inc1030 = add i64 %value.153272, 1
  %exitcond3329 = icmp eq i64 %inc1030, 256
  br i1 %exitcond3329, label %if.then1944, label %for.body1011

sw.bb1033:                                        ; preds = %if.then572
  %flags1034 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %224 = load i32* %flags1034, align 4, !tbaa !3
  %and1035 = and i32 %224, 2048
  %cmp1036 = icmp eq i32 %and1035, 0
  br i1 %cmp1036, label %for.cond1045.preheader, label %if.then1038

for.cond1045.preheader:                           ; preds = %sw.bb1033
  %bitmap1060 = getelementptr inbounds %struct.regnode* %call, i64 2
  %225 = bitcast %struct.regnode* %bitmap1060 to [32 x i8]*
  br label %for.body1048

if.then1038:                                      ; preds = %sw.bb1033
  %226 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %227 = load i8* %226, align 1, !tbaa !1
  %or1042 = or i8 %227, 32
  store i8 %or1042, i8* %226, align 1, !tbaa !1
  br label %if.then1944

for.body1048:                                     ; preds = %for.inc1066, %for.cond1045.preheader
  %value.163274 = phi i64 [ 0, %for.cond1045.preheader ], [ %inc1067, %for.inc1066 ]
  %cmp1049 = icmp ult i64 %value.163274, 32
  %cmp1052 = icmp eq i64 %value.163274, 127
  %or.cond2342 = or i1 %cmp1049, %cmp1052
  br i1 %or.cond2342, label %for.inc1066, label %if.then1054

if.then1054:                                      ; preds = %for.body1048
  %value.16.tr = trunc i64 %value.163274 to i32
  %sh_prom1056 = and i32 %value.16.tr, 7
  %shl1057 = shl i32 1, %sh_prom1056
  %shr1058 = lshr i64 %value.163274, 3
  %and1059 = and i64 %shr1058, 31
  %arrayidx1061 = getelementptr inbounds [32 x i8]* %225, i64 0, i64 %and1059
  %228 = load i8* %arrayidx1061, align 1, !tbaa !1
  %conv10623106 = zext i8 %228 to i32
  %or1063 = or i32 %conv10623106, %shl1057
  %conv1064 = trunc i32 %or1063 to i8
  store i8 %conv1064, i8* %arrayidx1061, align 1, !tbaa !1
  br label %for.inc1066

for.inc1066:                                      ; preds = %for.body1048, %if.then1054
  %inc1067 = add i64 %value.163274, 1
  %exitcond3330 = icmp eq i64 %inc1067, 256
  br i1 %exitcond3330, label %if.then1944, label %for.body1048

sw.bb1070:                                        ; preds = %if.then572
  %flags1071 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %229 = load i32* %flags1071, align 4, !tbaa !3
  %and1072 = and i32 %229, 2048
  %cmp1073 = icmp eq i32 %and1072, 0
  br i1 %cmp1073, label %for.cond1082.preheader, label %if.then1075

for.cond1082.preheader:                           ; preds = %sw.bb1070
  %bitmap1091 = getelementptr inbounds %struct.regnode* %call, i64 2
  %230 = bitcast %struct.regnode* %bitmap1091 to [32 x i8]*
  br label %for.body1085

if.then1075:                                      ; preds = %sw.bb1070
  %arrayidx1077 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %231 = load i8* %arrayidx1077, align 1, !tbaa !1
  %or1079 = or i8 %231, 16
  store i8 %or1079, i8* %arrayidx1077, align 1, !tbaa !1
  br label %if.then1944

for.body1085:                                     ; preds = %for.body1085, %for.cond1082.preheader
  %value.173276 = phi i64 [ 48, %for.cond1082.preheader ], [ %inc1097, %for.body1085 ]
  %value.17.tr = trunc i64 %value.173276 to i32
  %sh_prom1087 = and i32 %value.17.tr, 7
  %shl1088 = shl i32 1, %sh_prom1087
  %shr1089 = lshr i64 %value.173276, 3
  %and1090 = and i64 %shr1089, 31
  %arrayidx1092 = getelementptr inbounds [32 x i8]* %230, i64 0, i64 %and1090
  %232 = load i8* %arrayidx1092, align 1, !tbaa !1
  %conv10933104 = zext i8 %232 to i32
  %or1094 = or i32 %conv10933104, %shl1088
  %conv1095 = trunc i32 %or1094 to i8
  store i8 %conv1095, i8* %arrayidx1092, align 1, !tbaa !1
  %inc1097 = add i64 %value.173276, 1
  %exitcond3331 = icmp eq i64 %inc1097, 58
  br i1 %exitcond3331, label %if.then1944, label %for.body1085

sw.bb1100:                                        ; preds = %if.then572
  %flags1101 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %233 = load i32* %flags1101, align 4, !tbaa !3
  %and1102 = and i32 %233, 2048
  %cmp1103 = icmp eq i32 %and1102, 0
  br i1 %cmp1103, label %for.cond1112.preheader, label %if.then1105

for.cond1112.preheader:                           ; preds = %sw.bb1100
  %bitmap1121 = getelementptr inbounds %struct.regnode* %call, i64 2
  %234 = bitcast %struct.regnode* %bitmap1121 to [32 x i8]*
  br label %for.body1115

if.then1105:                                      ; preds = %sw.bb1100
  %arrayidx1107 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %235 = load i8* %arrayidx1107, align 1, !tbaa !1
  %or1109 = or i8 %235, 32
  store i8 %or1109, i8* %arrayidx1107, align 1, !tbaa !1
  br label %if.then1944

for.body1115:                                     ; preds = %for.body1115, %for.cond1112.preheader
  %value.183279 = phi i64 [ 0, %for.cond1112.preheader ], [ %inc1127, %for.body1115 ]
  %value.18.tr = trunc i64 %value.183279 to i32
  %sh_prom1117 = and i32 %value.18.tr, 7
  %shl1118 = shl i32 1, %sh_prom1117
  %shr1119 = lshr i64 %value.183279, 3
  %and1120 = and i64 %shr1119, 31
  %arrayidx1122 = getelementptr inbounds [32 x i8]* %234, i64 0, i64 %and1120
  %236 = load i8* %arrayidx1122, align 1, !tbaa !1
  %conv11233102 = zext i8 %236 to i32
  %or1124 = or i32 %conv11233102, %shl1118
  %conv1125 = trunc i32 %or1124 to i8
  store i8 %conv1125, i8* %arrayidx1122, align 1, !tbaa !1
  %inc1127 = add i64 %value.183279, 1
  %exitcond3333 = icmp eq i64 %inc1127, 48
  br i1 %exitcond3333, label %for.body1132, label %for.body1115

for.body1132:                                     ; preds = %for.body1115, %for.body1132
  %value.193278 = phi i64 [ %inc1144, %for.body1132 ], [ 58, %for.body1115 ]
  %value.19.tr = trunc i64 %value.193278 to i32
  %sh_prom1134 = and i32 %value.19.tr, 7
  %shl1135 = shl i32 1, %sh_prom1134
  %shr1136 = lshr i64 %value.193278, 3
  %and1137 = and i64 %shr1136, 31
  %arrayidx1139 = getelementptr inbounds [32 x i8]* %234, i64 0, i64 %and1137
  %237 = load i8* %arrayidx1139, align 1, !tbaa !1
  %conv11403101 = zext i8 %237 to i32
  %or1141 = or i32 %conv11403101, %shl1135
  %conv1142 = trunc i32 %or1141 to i8
  store i8 %conv1142, i8* %arrayidx1139, align 1, !tbaa !1
  %inc1144 = add i64 %value.193278, 1
  %exitcond3332 = icmp eq i64 %inc1144, 256
  br i1 %exitcond3332, label %if.then1944, label %for.body1132

sw.bb1147:                                        ; preds = %if.then572
  %flags1148 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %238 = load i32* %flags1148, align 4, !tbaa !3
  %and1149 = and i32 %238, 2048
  %cmp1150 = icmp eq i32 %and1149, 0
  br i1 %cmp1150, label %for.cond1159.preheader, label %if.then1152

for.cond1159.preheader:                           ; preds = %sw.bb1147
  %bitmap1213 = getelementptr inbounds %struct.regnode* %call, i64 2
  %239 = bitcast %struct.regnode* %bitmap1213 to [32 x i8]*
  br label %for.body1162

if.then1152:                                      ; preds = %sw.bb1147
  %240 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %241 = load i8* %240, align 1, !tbaa !1
  %or1156 = or i8 %241, 64
  store i8 %or1156, i8* %240, align 1, !tbaa !1
  br label %if.then1944

for.body1162:                                     ; preds = %for.inc1219, %for.cond1159.preheader
  %value.203281 = phi i64 [ 0, %for.cond1159.preheader ], [ %inc1220, %for.inc1219 ]
  %value.20.off = add i64 %value.203281, -65
  %242 = icmp ult i64 %value.20.off, 26
  %value.20.off3093 = add i64 %value.203281, -97
  %243 = icmp ult i64 %value.20.off3093, 26
  %or.cond3166 = or i1 %242, %243
  br i1 %or.cond3166, label %if.then1207, label %lor.lhs.false1174

lor.lhs.false1174:                                ; preds = %for.body1162
  %value.20.off3094 = add i64 %value.203281, -48
  %244 = icmp ult i64 %value.20.off3094, 10
  %cmp1181 = icmp eq i64 %value.203281, 95
  %or.cond2346 = or i1 %244, %cmp1181
  %value.20.off3095 = add i64 %value.203281, -33
  %245 = icmp ult i64 %value.20.off3095, 15
  %or.cond3168 = or i1 %or.cond2346, %245
  %value.20.off3096 = add i64 %value.203281, -58
  %246 = icmp ult i64 %value.20.off3096, 7
  %or.cond3170 = or i1 %or.cond3168, %246
  %value.20.off3097 = add i64 %value.203281, -91
  %247 = icmp ult i64 %value.20.off3097, 6
  %or.cond3172 = or i1 %or.cond3170, %247
  %value.20.off3098 = add i64 %value.203281, -123
  %248 = icmp ult i64 %value.20.off3098, 4
  %or.cond3174 = or i1 %or.cond3172, %248
  br i1 %or.cond3174, label %if.then1207, label %for.inc1219

if.then1207:                                      ; preds = %lor.lhs.false1174, %for.body1162
  %value.20.tr = trunc i64 %value.203281 to i32
  %sh_prom1209 = and i32 %value.20.tr, 7
  %shl1210 = shl i32 1, %sh_prom1209
  %shr1211 = lshr i64 %value.203281, 3
  %and1212 = and i64 %shr1211, 31
  %arrayidx1214 = getelementptr inbounds [32 x i8]* %239, i64 0, i64 %and1212
  %249 = load i8* %arrayidx1214, align 1, !tbaa !1
  %conv12153099 = zext i8 %249 to i32
  %or1216 = or i32 %conv12153099, %shl1210
  %conv1217 = trunc i32 %or1216 to i8
  store i8 %conv1217, i8* %arrayidx1214, align 1, !tbaa !1
  br label %for.inc1219

for.inc1219:                                      ; preds = %lor.lhs.false1174, %if.then1207
  %inc1220 = add i64 %value.203281, 1
  %exitcond3334 = icmp eq i64 %inc1220, 256
  br i1 %exitcond3334, label %if.then1944, label %for.body1162

sw.bb1223:                                        ; preds = %if.then572
  %flags1224 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %250 = load i32* %flags1224, align 4, !tbaa !3
  %and1225 = and i32 %250, 2048
  %cmp1226 = icmp eq i32 %and1225, 0
  br i1 %cmp1226, label %for.cond1235.preheader, label %if.then1228

for.cond1235.preheader:                           ; preds = %sw.bb1223
  %bitmap1289 = getelementptr inbounds %struct.regnode* %call, i64 2
  %251 = bitcast %struct.regnode* %bitmap1289 to [32 x i8]*
  br label %for.body1238

if.then1228:                                      ; preds = %sw.bb1223
  %252 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 1
  %253 = load i8* %252, align 1, !tbaa !1
  %or1232 = or i8 %253, -128
  store i8 %or1232, i8* %252, align 1, !tbaa !1
  br label %if.then1944

for.body1238:                                     ; preds = %for.inc1295, %for.cond1235.preheader
  %value.213284 = phi i64 [ 0, %for.cond1235.preheader ], [ %inc1296, %for.inc1295 ]
  %value.21.off = add i64 %value.213284, -65
  %254 = icmp ult i64 %value.21.off, 26
  %value.21.off3085 = add i64 %value.213284, -97
  %255 = icmp ult i64 %value.21.off3085, 26
  %or.cond3176 = or i1 %254, %255
  br i1 %or.cond3176, label %for.inc1295, label %lor.lhs.false1250

lor.lhs.false1250:                                ; preds = %for.body1238
  %value.21.off3086 = add i64 %value.213284, -48
  %256 = icmp ult i64 %value.21.off3086, 10
  %cmp1257 = icmp eq i64 %value.213284, 95
  %or.cond2354 = or i1 %256, %cmp1257
  %value.21.off3087 = add i64 %value.213284, -33
  %257 = icmp ult i64 %value.21.off3087, 15
  %or.cond3178 = or i1 %or.cond2354, %257
  %value.21.off3088 = add i64 %value.213284, -58
  %258 = icmp ult i64 %value.21.off3088, 7
  %or.cond3180 = or i1 %or.cond3178, %258
  %value.21.off3089 = add i64 %value.213284, -91
  %259 = icmp ult i64 %value.21.off3089, 6
  %or.cond3182 = or i1 %or.cond3180, %259
  %value.21.off3090 = add i64 %value.213284, -123
  %260 = icmp ult i64 %value.21.off3090, 4
  %or.cond3184 = or i1 %or.cond3182, %260
  br i1 %or.cond3184, label %for.inc1295, label %if.then1283

if.then1283:                                      ; preds = %lor.lhs.false1250
  %value.21.tr = trunc i64 %value.213284 to i32
  %sh_prom1285 = and i32 %value.21.tr, 7
  %shl1286 = shl i32 1, %sh_prom1285
  %shr1287 = lshr i64 %value.213284, 3
  %and1288 = and i64 %shr1287, 31
  %arrayidx1290 = getelementptr inbounds [32 x i8]* %251, i64 0, i64 %and1288
  %261 = load i8* %arrayidx1290, align 1, !tbaa !1
  %conv12913091 = zext i8 %261 to i32
  %or1292 = or i32 %conv12913091, %shl1286
  %conv1293 = trunc i32 %or1292 to i8
  store i8 %conv1293, i8* %arrayidx1290, align 1, !tbaa !1
  br label %for.inc1295

for.inc1295:                                      ; preds = %if.then1283, %for.body1238, %lor.lhs.false1250
  %inc1296 = add i64 %value.213284, 1
  %exitcond3335 = icmp eq i64 %inc1296, 256
  br i1 %exitcond3335, label %if.then1944, label %for.body1238

sw.bb1299:                                        ; preds = %if.then572
  %flags1300 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %262 = load i32* %flags1300, align 4, !tbaa !3
  %and1301 = and i32 %262, 2048
  %cmp1302 = icmp eq i32 %and1301, 0
  br i1 %cmp1302, label %for.cond1311.preheader, label %if.then1304

for.cond1311.preheader:                           ; preds = %sw.bb1299
  %bitmap1326 = getelementptr inbounds %struct.regnode* %call, i64 2
  %263 = bitcast %struct.regnode* %bitmap1326 to [32 x i8]*
  br label %for.body1314

if.then1304:                                      ; preds = %sw.bb1299
  %arrayidx1306 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %264 = bitcast i16* %arrayidx1306 to i8*
  %265 = load i8* %264, align 1, !tbaa !1
  %or1308 = or i8 %265, 1
  store i8 %or1308, i8* %264, align 1, !tbaa !1
  br label %if.then1944

for.body1314:                                     ; preds = %for.inc1332, %for.cond1311.preheader
  %value.223286 = phi i64 [ 0, %for.cond1311.preheader ], [ %inc1333, %for.inc1332 ]
  %value.22.off = add i64 %value.223286, -97
  %266 = icmp ult i64 %value.22.off, 26
  br i1 %266, label %if.then1320, label %for.inc1332

if.then1320:                                      ; preds = %for.body1314
  %value.22.tr = trunc i64 %value.223286 to i32
  %sh_prom1322 = and i32 %value.22.tr, 7
  %shl1323 = shl i32 1, %sh_prom1322
  %shr1324 = lshr i64 %value.223286, 3
  %and1325 = and i64 %shr1324, 31
  %arrayidx1327 = getelementptr inbounds [32 x i8]* %263, i64 0, i64 %and1325
  %267 = load i8* %arrayidx1327, align 1, !tbaa !1
  %conv13283083 = zext i8 %267 to i32
  %or1329 = or i32 %conv13283083, %shl1323
  %conv1330 = trunc i32 %or1329 to i8
  store i8 %conv1330, i8* %arrayidx1327, align 1, !tbaa !1
  br label %for.inc1332

for.inc1332:                                      ; preds = %for.body1314, %if.then1320
  %inc1333 = add i64 %value.223286, 1
  %exitcond3336 = icmp eq i64 %inc1333, 256
  br i1 %exitcond3336, label %if.then1944, label %for.body1314

sw.bb1336:                                        ; preds = %if.then572
  %flags1337 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %268 = load i32* %flags1337, align 4, !tbaa !3
  %and1338 = and i32 %268, 2048
  %cmp1339 = icmp eq i32 %and1338, 0
  br i1 %cmp1339, label %for.cond1348.preheader, label %if.then1341

for.cond1348.preheader:                           ; preds = %sw.bb1336
  %bitmap1363 = getelementptr inbounds %struct.regnode* %call, i64 2
  %269 = bitcast %struct.regnode* %bitmap1363 to [32 x i8]*
  br label %for.body1351

if.then1341:                                      ; preds = %sw.bb1336
  %arrayidx1343 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %270 = bitcast i16* %arrayidx1343 to i8*
  %271 = load i8* %270, align 1, !tbaa !1
  %or1345 = or i8 %271, 2
  store i8 %or1345, i8* %270, align 1, !tbaa !1
  br label %if.then1944

for.body1351:                                     ; preds = %for.inc1369, %for.cond1348.preheader
  %value.233288 = phi i64 [ 0, %for.cond1348.preheader ], [ %inc1370, %for.inc1369 ]
  %value.23.off = add i64 %value.233288, -97
  %272 = icmp ult i64 %value.23.off, 26
  br i1 %272, label %for.inc1369, label %if.then1357

if.then1357:                                      ; preds = %for.body1351
  %value.23.tr = trunc i64 %value.233288 to i32
  %sh_prom1359 = and i32 %value.23.tr, 7
  %shl1360 = shl i32 1, %sh_prom1359
  %shr1361 = lshr i64 %value.233288, 3
  %and1362 = and i64 %shr1361, 31
  %arrayidx1364 = getelementptr inbounds [32 x i8]* %269, i64 0, i64 %and1362
  %273 = load i8* %arrayidx1364, align 1, !tbaa !1
  %conv13653081 = zext i8 %273 to i32
  %or1366 = or i32 %conv13653081, %shl1360
  %conv1367 = trunc i32 %or1366 to i8
  store i8 %conv1367, i8* %arrayidx1364, align 1, !tbaa !1
  br label %for.inc1369

for.inc1369:                                      ; preds = %if.then1357, %for.body1351
  %inc1370 = add i64 %value.233288, 1
  %exitcond3337 = icmp eq i64 %inc1370, 256
  br i1 %exitcond3337, label %if.then1944, label %for.body1351

sw.bb1373:                                        ; preds = %if.then572
  %flags1374 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %274 = load i32* %flags1374, align 4, !tbaa !3
  %and1375 = and i32 %274, 2048
  %cmp1376 = icmp eq i32 %and1375, 0
  br i1 %cmp1376, label %for.cond1385.preheader, label %if.then1378

for.cond1385.preheader:                           ; preds = %sw.bb1373
  %bitmap1403 = getelementptr inbounds %struct.regnode* %call, i64 2
  %275 = bitcast %struct.regnode* %bitmap1403 to [32 x i8]*
  br label %for.body1388

if.then1378:                                      ; preds = %sw.bb1373
  %arrayidx1380 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %276 = bitcast i16* %arrayidx1380 to i8*
  %277 = load i8* %276, align 1, !tbaa !1
  %or1382 = or i8 %277, 4
  store i8 %or1382, i8* %276, align 1, !tbaa !1
  br label %if.then1944

for.body1388:                                     ; preds = %for.inc1409, %for.cond1385.preheader
  %value.243290 = phi i64 [ 0, %for.cond1385.preheader ], [ %inc1410, %for.inc1409 ]
  %value.24.off = add i64 %value.243290, -33
  %278 = icmp ult i64 %value.24.off, 94
  %cmp1395 = icmp eq i64 %value.243290, 32
  %or.cond2362 = or i1 %278, %cmp1395
  br i1 %or.cond2362, label %if.then1397, label %for.inc1409

if.then1397:                                      ; preds = %for.body1388
  %value.24.tr = trunc i64 %value.243290 to i32
  %sh_prom1399 = and i32 %value.24.tr, 7
  %shl1400 = shl i32 1, %sh_prom1399
  %shr1401 = lshr i64 %value.243290, 3
  %and1402 = and i64 %shr1401, 31
  %arrayidx1404 = getelementptr inbounds [32 x i8]* %275, i64 0, i64 %and1402
  %279 = load i8* %arrayidx1404, align 1, !tbaa !1
  %conv14053079 = zext i8 %279 to i32
  %or1406 = or i32 %conv14053079, %shl1400
  %conv1407 = trunc i32 %or1406 to i8
  store i8 %conv1407, i8* %arrayidx1404, align 1, !tbaa !1
  br label %for.inc1409

for.inc1409:                                      ; preds = %if.then1397, %for.body1388
  %inc1410 = add i64 %value.243290, 1
  %exitcond3338 = icmp eq i64 %inc1410, 256
  br i1 %exitcond3338, label %if.then1944, label %for.body1388

sw.bb1413:                                        ; preds = %if.then572
  %flags1414 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %280 = load i32* %flags1414, align 4, !tbaa !3
  %and1415 = and i32 %280, 2048
  %cmp1416 = icmp eq i32 %and1415, 0
  br i1 %cmp1416, label %for.cond1425.preheader, label %if.then1418

for.cond1425.preheader:                           ; preds = %sw.bb1413
  %bitmap1443 = getelementptr inbounds %struct.regnode* %call, i64 2
  %281 = bitcast %struct.regnode* %bitmap1443 to [32 x i8]*
  br label %for.body1428

if.then1418:                                      ; preds = %sw.bb1413
  %arrayidx1420 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %282 = bitcast i16* %arrayidx1420 to i8*
  %283 = load i8* %282, align 1, !tbaa !1
  %or1422 = or i8 %283, 8
  store i8 %or1422, i8* %282, align 1, !tbaa !1
  br label %if.then1944

for.body1428:                                     ; preds = %for.inc1449, %for.cond1425.preheader
  %value.253292 = phi i64 [ 0, %for.cond1425.preheader ], [ %inc1450, %for.inc1449 ]
  %value.25.off = add i64 %value.253292, -33
  %284 = icmp ult i64 %value.25.off, 94
  %cmp1435 = icmp eq i64 %value.253292, 32
  %or.cond2364 = or i1 %284, %cmp1435
  br i1 %or.cond2364, label %for.inc1449, label %if.then1437

if.then1437:                                      ; preds = %for.body1428
  %value.25.tr = trunc i64 %value.253292 to i32
  %sh_prom1439 = and i32 %value.25.tr, 7
  %shl1440 = shl i32 1, %sh_prom1439
  %shr1441 = lshr i64 %value.253292, 3
  %and1442 = and i64 %shr1441, 31
  %arrayidx1444 = getelementptr inbounds [32 x i8]* %281, i64 0, i64 %and1442
  %285 = load i8* %arrayidx1444, align 1, !tbaa !1
  %conv14453077 = zext i8 %285 to i32
  %or1446 = or i32 %conv14453077, %shl1440
  %conv1447 = trunc i32 %or1446 to i8
  store i8 %conv1447, i8* %arrayidx1444, align 1, !tbaa !1
  br label %for.inc1449

for.inc1449:                                      ; preds = %if.then1437, %for.body1428
  %inc1450 = add i64 %value.253292, 1
  %exitcond3339 = icmp eq i64 %inc1450, 256
  br i1 %exitcond3339, label %if.then1944, label %for.body1428

sw.bb1453:                                        ; preds = %if.then572
  %flags1454 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %286 = load i32* %flags1454, align 4, !tbaa !3
  %and1455 = and i32 %286, 2048
  %cmp1456 = icmp eq i32 %and1455, 0
  br i1 %cmp1456, label %for.cond1465.preheader, label %if.then1458

for.cond1465.preheader:                           ; preds = %sw.bb1453
  %bitmap1492 = getelementptr inbounds %struct.regnode* %call, i64 2
  %287 = bitcast %struct.regnode* %bitmap1492 to [32 x i8]*
  br label %for.body1468

if.then1458:                                      ; preds = %sw.bb1453
  %classflags1459 = getelementptr inbounds %struct.regnode* %call, i64 10
  %288 = bitcast %struct.regnode* %classflags1459 to [4 x i8]*
  %arrayidx1460 = getelementptr inbounds [4 x i8]* %288, i64 0, i64 3
  %289 = load i8* %arrayidx1460, align 1, !tbaa !1
  %or1462 = or i8 %289, 4
  store i8 %or1462, i8* %arrayidx1460, align 1, !tbaa !1
  br label %if.then1944

for.body1468:                                     ; preds = %for.inc1498, %for.cond1465.preheader
  %value.263294 = phi i64 [ 0, %for.cond1465.preheader ], [ %inc1499, %for.inc1498 ]
  switch i64 %value.263294, label %for.inc1498 [
    i64 32, label %if.then1486
    i64 13, label %if.then1486
    i64 12, label %if.then1486
    i64 11, label %if.then1486
    i64 10, label %if.then1486
    i64 9, label %if.then1486
  ]

if.then1486:                                      ; preds = %for.body1468, %for.body1468, %for.body1468, %for.body1468, %for.body1468, %for.body1468
  %value.26.tr = trunc i64 %value.263294 to i32
  %sh_prom1488 = and i32 %value.26.tr, 7
  %shl1489 = shl i32 1, %sh_prom1488
  %shr1490 = lshr i64 %value.263294, 3
  %and1491 = and i64 %shr1490, 31
  %arrayidx1493 = getelementptr inbounds [32 x i8]* %287, i64 0, i64 %and1491
  %290 = load i8* %arrayidx1493, align 1, !tbaa !1
  %conv14943075 = zext i8 %290 to i32
  %or1495 = or i32 %conv14943075, %shl1489
  %conv1496 = trunc i32 %or1495 to i8
  store i8 %conv1496, i8* %arrayidx1493, align 1, !tbaa !1
  br label %for.inc1498

for.inc1498:                                      ; preds = %for.body1468, %if.then1486
  %inc1499 = add i64 %value.263294, 1
  %exitcond3340 = icmp eq i64 %inc1499, 256
  br i1 %exitcond3340, label %if.then1944, label %for.body1468

sw.bb1502:                                        ; preds = %if.then572
  %flags1503 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %291 = load i32* %flags1503, align 4, !tbaa !3
  %and1504 = and i32 %291, 2048
  %cmp1505 = icmp eq i32 %and1504, 0
  br i1 %cmp1505, label %for.cond1514.preheader, label %if.then1507

for.cond1514.preheader:                           ; preds = %sw.bb1502
  %bitmap1541 = getelementptr inbounds %struct.regnode* %call, i64 2
  %292 = bitcast %struct.regnode* %bitmap1541 to [32 x i8]*
  br label %for.body1517

if.then1507:                                      ; preds = %sw.bb1502
  %classflags1508 = getelementptr inbounds %struct.regnode* %call, i64 10
  %293 = bitcast %struct.regnode* %classflags1508 to [4 x i8]*
  %arrayidx1509 = getelementptr inbounds [4 x i8]* %293, i64 0, i64 3
  %294 = load i8* %arrayidx1509, align 1, !tbaa !1
  %or1511 = or i8 %294, 8
  store i8 %or1511, i8* %arrayidx1509, align 1, !tbaa !1
  br label %if.then1944

for.body1517:                                     ; preds = %for.inc1547, %for.cond1514.preheader
  %value.273297 = phi i64 [ 0, %for.cond1514.preheader ], [ %inc1548, %for.inc1547 ]
  switch i64 %value.273297, label %if.then1535 [
    i64 32, label %for.inc1547
    i64 13, label %for.inc1547
    i64 12, label %for.inc1547
    i64 11, label %for.inc1547
    i64 10, label %for.inc1547
    i64 9, label %for.inc1547
  ]

if.then1535:                                      ; preds = %for.body1517
  %value.27.tr = trunc i64 %value.273297 to i32
  %sh_prom1537 = and i32 %value.27.tr, 7
  %shl1538 = shl i32 1, %sh_prom1537
  %shr1539 = lshr i64 %value.273297, 3
  %and1540 = and i64 %shr1539, 31
  %arrayidx1542 = getelementptr inbounds [32 x i8]* %292, i64 0, i64 %and1540
  %295 = load i8* %arrayidx1542, align 1, !tbaa !1
  %conv15433073 = zext i8 %295 to i32
  %or1544 = or i32 %conv15433073, %shl1538
  %conv1545 = trunc i32 %or1544 to i8
  store i8 %conv1545, i8* %arrayidx1542, align 1, !tbaa !1
  br label %for.inc1547

for.inc1547:                                      ; preds = %for.body1517, %for.body1517, %for.body1517, %for.body1517, %for.body1517, %for.body1517, %if.then1535
  %inc1548 = add i64 %value.273297, 1
  %exitcond3341 = icmp eq i64 %inc1548, 256
  br i1 %exitcond3341, label %if.then1944, label %for.body1517

sw.bb1551:                                        ; preds = %if.then572
  %flags1552 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %296 = load i32* %flags1552, align 4, !tbaa !3
  %and1553 = and i32 %296, 2048
  %cmp1554 = icmp eq i32 %and1553, 0
  br i1 %cmp1554, label %for.cond1563.preheader, label %if.then1556

for.cond1563.preheader:                           ; preds = %sw.bb1551
  %bitmap1596 = getelementptr inbounds %struct.regnode* %call, i64 2
  %297 = bitcast %struct.regnode* %bitmap1596 to [32 x i8]*
  br label %for.body1566

if.then1556:                                      ; preds = %sw.bb1551
  %arrayidx1558 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %298 = bitcast i16* %arrayidx1558 to i8*
  %299 = load i8* %298, align 1, !tbaa !1
  %or1560 = or i8 %299, 16
  store i8 %or1560, i8* %298, align 1, !tbaa !1
  br label %if.then1944

for.body1566:                                     ; preds = %for.inc1602, %for.cond1563.preheader
  %value.283299 = phi i64 [ 0, %for.cond1563.preheader ], [ %inc1603, %for.inc1602 ]
  %value.28.off = add i64 %value.283299, -33
  %300 = icmp ult i64 %value.28.off, 15
  %value.28.off3068 = add i64 %value.283299, -58
  %301 = icmp ult i64 %value.28.off3068, 7
  %or.cond3186 = or i1 %300, %301
  %value.28.off3069 = add i64 %value.283299, -91
  %302 = icmp ult i64 %value.28.off3069, 6
  %or.cond3188 = or i1 %or.cond3186, %302
  %value.28.off3070 = add i64 %value.283299, -123
  %303 = icmp ult i64 %value.28.off3070, 4
  %or.cond3190 = or i1 %or.cond3188, %303
  br i1 %or.cond3190, label %if.then1590, label %for.inc1602

if.then1590:                                      ; preds = %for.body1566
  %value.28.tr = trunc i64 %value.283299 to i32
  %sh_prom1592 = and i32 %value.28.tr, 7
  %shl1593 = shl i32 1, %sh_prom1592
  %shr1594 = lshr i64 %value.283299, 3
  %and1595 = and i64 %shr1594, 31
  %arrayidx1597 = getelementptr inbounds [32 x i8]* %297, i64 0, i64 %and1595
  %304 = load i8* %arrayidx1597, align 1, !tbaa !1
  %conv15983071 = zext i8 %304 to i32
  %or1599 = or i32 %conv15983071, %shl1593
  %conv1600 = trunc i32 %or1599 to i8
  store i8 %conv1600, i8* %arrayidx1597, align 1, !tbaa !1
  br label %for.inc1602

for.inc1602:                                      ; preds = %for.body1566, %if.then1590
  %inc1603 = add i64 %value.283299, 1
  %exitcond3342 = icmp eq i64 %inc1603, 256
  br i1 %exitcond3342, label %if.then1944, label %for.body1566

sw.bb1606:                                        ; preds = %if.then572
  %flags1607 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %305 = load i32* %flags1607, align 4, !tbaa !3
  %and1608 = and i32 %305, 2048
  %cmp1609 = icmp eq i32 %and1608, 0
  br i1 %cmp1609, label %for.cond1618.preheader, label %if.then1611

for.cond1618.preheader:                           ; preds = %sw.bb1606
  %bitmap1651 = getelementptr inbounds %struct.regnode* %call, i64 2
  %306 = bitcast %struct.regnode* %bitmap1651 to [32 x i8]*
  br label %for.body1621

if.then1611:                                      ; preds = %sw.bb1606
  %arrayidx1613 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %307 = bitcast i16* %arrayidx1613 to i8*
  %308 = load i8* %307, align 1, !tbaa !1
  %or1615 = or i8 %308, 32
  store i8 %or1615, i8* %307, align 1, !tbaa !1
  br label %if.then1944

for.body1621:                                     ; preds = %for.inc1657, %for.cond1618.preheader
  %value.293301 = phi i64 [ 0, %for.cond1618.preheader ], [ %inc1658, %for.inc1657 ]
  %value.29.off = add i64 %value.293301, -33
  %309 = icmp ult i64 %value.29.off, 15
  %value.29.off3063 = add i64 %value.293301, -58
  %310 = icmp ult i64 %value.29.off3063, 7
  %or.cond3192 = or i1 %309, %310
  %value.29.off3064 = add i64 %value.293301, -91
  %311 = icmp ult i64 %value.29.off3064, 6
  %or.cond3194 = or i1 %or.cond3192, %311
  %value.29.off3065 = add i64 %value.293301, -123
  %312 = icmp ult i64 %value.29.off3065, 4
  %or.cond3196 = or i1 %or.cond3194, %312
  br i1 %or.cond3196, label %for.inc1657, label %if.then1645

if.then1645:                                      ; preds = %for.body1621
  %value.29.tr = trunc i64 %value.293301 to i32
  %sh_prom1647 = and i32 %value.29.tr, 7
  %shl1648 = shl i32 1, %sh_prom1647
  %shr1649 = lshr i64 %value.293301, 3
  %and1650 = and i64 %shr1649, 31
  %arrayidx1652 = getelementptr inbounds [32 x i8]* %306, i64 0, i64 %and1650
  %313 = load i8* %arrayidx1652, align 1, !tbaa !1
  %conv16533066 = zext i8 %313 to i32
  %or1654 = or i32 %conv16533066, %shl1648
  %conv1655 = trunc i32 %or1654 to i8
  store i8 %conv1655, i8* %arrayidx1652, align 1, !tbaa !1
  br label %for.inc1657

for.inc1657:                                      ; preds = %if.then1645, %for.body1621
  %inc1658 = add i64 %value.293301, 1
  %exitcond3343 = icmp eq i64 %inc1658, 256
  br i1 %exitcond3343, label %if.then1944, label %for.body1621

sw.bb1661:                                        ; preds = %if.then572
  %flags1662 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %314 = load i32* %flags1662, align 4, !tbaa !3
  %and1663 = and i32 %314, 2048
  %cmp1664 = icmp eq i32 %and1663, 0
  br i1 %cmp1664, label %for.cond1673.preheader, label %if.then1666

for.cond1673.preheader:                           ; preds = %sw.bb1661
  %bitmap1697 = getelementptr inbounds %struct.regnode* %call, i64 2
  %315 = bitcast %struct.regnode* %bitmap1697 to [32 x i8]*
  br label %for.body1676

if.then1666:                                      ; preds = %sw.bb1661
  %arrayidx1668 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %316 = load i8* %arrayidx1668, align 1, !tbaa !1
  %or1670 = or i8 %316, 4
  store i8 %or1670, i8* %arrayidx1668, align 1, !tbaa !1
  br label %if.then1944

for.body1676:                                     ; preds = %for.inc1703, %for.cond1673.preheader
  %value.303303 = phi i64 [ 0, %for.cond1673.preheader ], [ %inc1704, %for.inc1703 ]
  switch i64 %value.303303, label %for.inc1703 [
    i64 32, label %if.then1691
    i64 13, label %if.then1691
    i64 12, label %if.then1691
    i64 10, label %if.then1691
    i64 9, label %if.then1691
  ]

if.then1691:                                      ; preds = %for.body1676, %for.body1676, %for.body1676, %for.body1676, %for.body1676
  %value.30.tr = trunc i64 %value.303303 to i32
  %sh_prom1693 = and i32 %value.30.tr, 7
  %shl1694 = shl i32 1, %sh_prom1693
  %shr1695 = lshr i64 %value.303303, 3
  %and1696 = and i64 %shr1695, 31
  %arrayidx1698 = getelementptr inbounds [32 x i8]* %315, i64 0, i64 %and1696
  %317 = load i8* %arrayidx1698, align 1, !tbaa !1
  %conv16993061 = zext i8 %317 to i32
  %or1700 = or i32 %conv16993061, %shl1694
  %conv1701 = trunc i32 %or1700 to i8
  store i8 %conv1701, i8* %arrayidx1698, align 1, !tbaa !1
  br label %for.inc1703

for.inc1703:                                      ; preds = %for.body1676, %if.then1691
  %inc1704 = add i64 %value.303303, 1
  %exitcond3344 = icmp eq i64 %inc1704, 256
  br i1 %exitcond3344, label %if.then1944, label %for.body1676

sw.bb1707:                                        ; preds = %if.then572
  %flags1708 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %318 = load i32* %flags1708, align 4, !tbaa !3
  %and1709 = and i32 %318, 2048
  %cmp1710 = icmp eq i32 %and1709, 0
  br i1 %cmp1710, label %for.cond1719.preheader, label %if.then1712

for.cond1719.preheader:                           ; preds = %sw.bb1707
  %bitmap1743 = getelementptr inbounds %struct.regnode* %call, i64 2
  %319 = bitcast %struct.regnode* %bitmap1743 to [32 x i8]*
  br label %for.body1722

if.then1712:                                      ; preds = %sw.bb1707
  %arrayidx1714 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 0
  %320 = load i8* %arrayidx1714, align 1, !tbaa !1
  %or1716 = or i8 %320, 8
  store i8 %or1716, i8* %arrayidx1714, align 1, !tbaa !1
  br label %if.then1944

for.body1722:                                     ; preds = %for.inc1749, %for.cond1719.preheader
  %value.313306 = phi i64 [ 0, %for.cond1719.preheader ], [ %inc1750, %for.inc1749 ]
  switch i64 %value.313306, label %if.then1737 [
    i64 32, label %for.inc1749
    i64 13, label %for.inc1749
    i64 12, label %for.inc1749
    i64 10, label %for.inc1749
    i64 9, label %for.inc1749
  ]

if.then1737:                                      ; preds = %for.body1722
  %value.31.tr = trunc i64 %value.313306 to i32
  %sh_prom1739 = and i32 %value.31.tr, 7
  %shl1740 = shl i32 1, %sh_prom1739
  %shr1741 = lshr i64 %value.313306, 3
  %and1742 = and i64 %shr1741, 31
  %arrayidx1744 = getelementptr inbounds [32 x i8]* %319, i64 0, i64 %and1742
  %321 = load i8* %arrayidx1744, align 1, !tbaa !1
  %conv17453059 = zext i8 %321 to i32
  %or1746 = or i32 %conv17453059, %shl1740
  %conv1747 = trunc i32 %or1746 to i8
  store i8 %conv1747, i8* %arrayidx1744, align 1, !tbaa !1
  br label %for.inc1749

for.inc1749:                                      ; preds = %for.body1722, %for.body1722, %for.body1722, %for.body1722, %for.body1722, %if.then1737
  %inc1750 = add i64 %value.313306, 1
  %exitcond3345 = icmp eq i64 %inc1750, 256
  br i1 %exitcond3345, label %if.then1944, label %for.body1722

sw.bb1753:                                        ; preds = %if.then572
  %flags1754 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %322 = load i32* %flags1754, align 4, !tbaa !3
  %and1755 = and i32 %322, 2048
  %cmp1756 = icmp eq i32 %and1755, 0
  br i1 %cmp1756, label %for.cond1765.preheader, label %if.then1758

for.cond1765.preheader:                           ; preds = %sw.bb1753
  %bitmap1780 = getelementptr inbounds %struct.regnode* %call, i64 2
  %323 = bitcast %struct.regnode* %bitmap1780 to [32 x i8]*
  br label %for.body1768

if.then1758:                                      ; preds = %sw.bb1753
  %arrayidx1760 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %324 = bitcast i16* %arrayidx1760 to i8*
  %325 = load i8* %324, align 1, !tbaa !1
  %or1762 = or i8 %325, 64
  store i8 %or1762, i8* %324, align 1, !tbaa !1
  br label %if.then1944

for.body1768:                                     ; preds = %for.inc1786, %for.cond1765.preheader
  %value.323308 = phi i64 [ 0, %for.cond1765.preheader ], [ %inc1787, %for.inc1786 ]
  %value.32.off = add i64 %value.323308, -65
  %326 = icmp ult i64 %value.32.off, 26
  br i1 %326, label %if.then1774, label %for.inc1786

if.then1774:                                      ; preds = %for.body1768
  %value.32.tr = trunc i64 %value.323308 to i32
  %sh_prom1776 = and i32 %value.32.tr, 7
  %shl1777 = shl i32 1, %sh_prom1776
  %shr1778 = lshr i64 %value.323308, 3
  %and1779 = and i64 %shr1778, 31
  %arrayidx1781 = getelementptr inbounds [32 x i8]* %323, i64 0, i64 %and1779
  %327 = load i8* %arrayidx1781, align 1, !tbaa !1
  %conv17823057 = zext i8 %327 to i32
  %or1783 = or i32 %conv17823057, %shl1777
  %conv1784 = trunc i32 %or1783 to i8
  store i8 %conv1784, i8* %arrayidx1781, align 1, !tbaa !1
  br label %for.inc1786

for.inc1786:                                      ; preds = %for.body1768, %if.then1774
  %inc1787 = add i64 %value.323308, 1
  %exitcond3346 = icmp eq i64 %inc1787, 256
  br i1 %exitcond3346, label %if.then1944, label %for.body1768

sw.bb1790:                                        ; preds = %if.then572
  %flags1791 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %328 = load i32* %flags1791, align 4, !tbaa !3
  %and1792 = and i32 %328, 2048
  %cmp1793 = icmp eq i32 %and1792, 0
  br i1 %cmp1793, label %for.cond1802.preheader, label %if.then1795

for.cond1802.preheader:                           ; preds = %sw.bb1790
  %bitmap1817 = getelementptr inbounds %struct.regnode* %call, i64 2
  %329 = bitcast %struct.regnode* %bitmap1817 to [32 x i8]*
  br label %for.body1805

if.then1795:                                      ; preds = %sw.bb1790
  %arrayidx1797 = getelementptr inbounds %struct.regnode* %call, i64 10, i32 2
  %330 = bitcast i16* %arrayidx1797 to i8*
  %331 = load i8* %330, align 1, !tbaa !1
  %or1799 = or i8 %331, -128
  store i8 %or1799, i8* %330, align 1, !tbaa !1
  br label %if.then1944

for.body1805:                                     ; preds = %for.inc1823, %for.cond1802.preheader
  %value.333310 = phi i64 [ 0, %for.cond1802.preheader ], [ %inc1824, %for.inc1823 ]
  %value.33.off = add i64 %value.333310, -65
  %332 = icmp ult i64 %value.33.off, 26
  br i1 %332, label %for.inc1823, label %if.then1811

if.then1811:                                      ; preds = %for.body1805
  %value.33.tr = trunc i64 %value.333310 to i32
  %sh_prom1813 = and i32 %value.33.tr, 7
  %shl1814 = shl i32 1, %sh_prom1813
  %shr1815 = lshr i64 %value.333310, 3
  %and1816 = and i64 %shr1815, 31
  %arrayidx1818 = getelementptr inbounds [32 x i8]* %329, i64 0, i64 %and1816
  %333 = load i8* %arrayidx1818, align 1, !tbaa !1
  %conv18193055 = zext i8 %333 to i32
  %or1820 = or i32 %conv18193055, %shl1814
  %conv1821 = trunc i32 %or1820 to i8
  store i8 %conv1821, i8* %arrayidx1818, align 1, !tbaa !1
  br label %for.inc1823

for.inc1823:                                      ; preds = %if.then1811, %for.body1805
  %inc1824 = add i64 %value.333310, 1
  %exitcond3347 = icmp eq i64 %inc1824, 256
  br i1 %exitcond3347, label %if.then1944, label %for.body1805

sw.bb1827:                                        ; preds = %if.then572
  %flags1828 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %334 = load i32* %flags1828, align 4, !tbaa !3
  %and1829 = and i32 %334, 2048
  %cmp1830 = icmp eq i32 %and1829, 0
  br i1 %cmp1830, label %for.cond1839.preheader, label %if.then1832

for.cond1839.preheader:                           ; preds = %sw.bb1827
  %bitmap1866 = getelementptr inbounds %struct.regnode* %call, i64 2
  %335 = bitcast %struct.regnode* %bitmap1866 to [32 x i8]*
  br label %for.body1842

if.then1832:                                      ; preds = %sw.bb1827
  %classflags1833 = getelementptr inbounds %struct.regnode* %call, i64 10
  %336 = bitcast %struct.regnode* %classflags1833 to [4 x i8]*
  %arrayidx1834 = getelementptr inbounds [4 x i8]* %336, i64 0, i64 3
  %337 = load i8* %arrayidx1834, align 1, !tbaa !1
  %or1836 = or i8 %337, 1
  store i8 %or1836, i8* %arrayidx1834, align 1, !tbaa !1
  br label %if.then1944

for.body1842:                                     ; preds = %for.inc1872, %for.cond1839.preheader
  %value.343312 = phi i64 [ 0, %for.cond1839.preheader ], [ %inc1873, %for.inc1872 ]
  %value.34.off = add i64 %value.343312, -48
  %338 = icmp ult i64 %value.34.off, 10
  %value.34.off3051 = add i64 %value.343312, -97
  %339 = icmp ult i64 %value.34.off3051, 6
  %or.cond3198 = or i1 %338, %339
  %value.34.off3052 = add i64 %value.343312, -65
  %340 = icmp ult i64 %value.34.off3052, 6
  %or.cond3200 = or i1 %or.cond3198, %340
  br i1 %or.cond3200, label %if.then1860, label %for.inc1872

if.then1860:                                      ; preds = %for.body1842
  %value.34.tr = trunc i64 %value.343312 to i32
  %sh_prom1862 = and i32 %value.34.tr, 7
  %shl1863 = shl i32 1, %sh_prom1862
  %shr1864 = lshr i64 %value.343312, 3
  %and1865 = and i64 %shr1864, 31
  %arrayidx1867 = getelementptr inbounds [32 x i8]* %335, i64 0, i64 %and1865
  %341 = load i8* %arrayidx1867, align 1, !tbaa !1
  %conv18683053 = zext i8 %341 to i32
  %or1869 = or i32 %conv18683053, %shl1863
  %conv1870 = trunc i32 %or1869 to i8
  store i8 %conv1870, i8* %arrayidx1867, align 1, !tbaa !1
  br label %for.inc1872

for.inc1872:                                      ; preds = %for.body1842, %if.then1860
  %inc1873 = add i64 %value.343312, 1
  %exitcond3348 = icmp eq i64 %inc1873, 256
  br i1 %exitcond3348, label %if.then1944, label %for.body1842

sw.bb1876:                                        ; preds = %if.then572
  %flags1877 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %342 = load i32* %flags1877, align 4, !tbaa !3
  %and1878 = and i32 %342, 2048
  %cmp1879 = icmp eq i32 %and1878, 0
  br i1 %cmp1879, label %for.cond1888.preheader, label %if.then1881

for.cond1888.preheader:                           ; preds = %sw.bb1876
  %bitmap1915 = getelementptr inbounds %struct.regnode* %call, i64 2
  %343 = bitcast %struct.regnode* %bitmap1915 to [32 x i8]*
  br label %for.body1891

if.then1881:                                      ; preds = %sw.bb1876
  %classflags1882 = getelementptr inbounds %struct.regnode* %call, i64 10
  %344 = bitcast %struct.regnode* %classflags1882 to [4 x i8]*
  %arrayidx1883 = getelementptr inbounds [4 x i8]* %344, i64 0, i64 3
  %345 = load i8* %arrayidx1883, align 1, !tbaa !1
  %or1885 = or i8 %345, 2
  store i8 %or1885, i8* %arrayidx1883, align 1, !tbaa !1
  br label %if.then1944

for.body1891:                                     ; preds = %for.inc1921, %for.cond1888.preheader
  %value.353314 = phi i64 [ 0, %for.cond1888.preheader ], [ %inc1922, %for.inc1921 ]
  %value.35.off = add i64 %value.353314, -48
  %346 = icmp ult i64 %value.35.off, 10
  %value.35.off3047 = add i64 %value.353314, -97
  %347 = icmp ult i64 %value.35.off3047, 6
  %or.cond3202 = or i1 %346, %347
  %value.35.off3048 = add i64 %value.353314, -65
  %348 = icmp ult i64 %value.35.off3048, 6
  %or.cond3204 = or i1 %or.cond3202, %348
  br i1 %or.cond3204, label %for.inc1921, label %if.then1909

if.then1909:                                      ; preds = %for.body1891
  %value.35.tr = trunc i64 %value.353314 to i32
  %sh_prom1911 = and i32 %value.35.tr, 7
  %shl1912 = shl i32 1, %sh_prom1911
  %shr1913 = lshr i64 %value.353314, 3
  %and1914 = and i64 %shr1913, 31
  %arrayidx1916 = getelementptr inbounds [32 x i8]* %343, i64 0, i64 %and1914
  %349 = load i8* %arrayidx1916, align 1, !tbaa !1
  %conv19173049 = zext i8 %349 to i32
  %or1918 = or i32 %conv19173049, %shl1912
  %conv1919 = trunc i32 %or1918 to i8
  store i8 %conv1919, i8* %arrayidx1916, align 1, !tbaa !1
  br label %for.inc1921

for.inc1921:                                      ; preds = %if.then1909, %for.body1891
  %inc1922 = add i64 %value.353314, 1
  %exitcond3349 = icmp eq i64 %inc1922, 256
  br i1 %exitcond3349, label %if.then1944, label %for.body1891

if.end1931:                                       ; preds = %if.then572
  %rx1930 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %350 = load %struct.regexp** %rx1930, align 8, !tbaa !0
  %351 = bitcast %struct.regexp* %350 to i8*
  call void @Perl_save_destructor_x(void (i8*)* @clear_re, i8* %351) #8
  %352 = load i8** %parse, align 8, !tbaa !0
  %precomp1934 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %353 = load i8** %precomp1934, align 8, !tbaa !0
  %sub.ptr.lhs.cast1935 = ptrtoint i8* %352 to i64
  %sub.ptr.rhs.cast1936 = ptrtoint i8* %353 to i64
  %sub.ptr.sub1937 = sub i64 %sub.ptr.lhs.cast1935, %sub.ptr.rhs.cast1936
  %conv1938 = trunc i64 %sub.ptr.sub1937 to i32
  %add.ptr1941 = getelementptr inbounds i8* %353, i64 %sub.ptr.sub1937
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str71, i64 0, i64 0), i32 %conv1938, i8* %353, i8* %add.ptr1941) #8
  br label %if.end1946

if.then1944:                                      ; preds = %for.inc1921, %for.inc1872, %for.inc1823, %for.inc1786, %for.inc1749, %for.inc1703, %for.inc1657, %for.inc1602, %for.inc1547, %for.inc1498, %for.inc1449, %for.inc1409, %for.inc1369, %for.inc1332, %for.inc1295, %for.inc1219, %for.body1132, %for.body1085, %for.inc1066, %for.inc1029, %for.inc992, %for.inc955, %for.body907, %for.body877, %for.inc858, %for.inc815, %for.inc772, %for.inc723, %for.inc674, %for.inc, %if.then583, %if.then631, %if.then683, %if.then732, %if.then781, %if.then824, %if.then867, %if.then897, %if.then927, %if.then964, %if.then1001, %if.then1038, %if.then1075, %if.then1105, %if.then1152, %if.then1228, %if.then1304, %if.then1341, %if.then1378, %if.then1418, %if.then1458, %if.then1507, %if.then1556, %if.then1611, %if.then1666, %if.then1712, %if.then1758, %if.then1795, %if.then1832, %if.then1881
  %what.0.ph = phi i8* [ getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), %if.then583 ], [ getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), %if.then631 ], [ getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), %if.then683 ], [ getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), %if.then732 ], [ getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), %if.then781 ], [ getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), %if.then824 ], [ getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), %if.then867 ], [ getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), %if.then897 ], [ getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), %if.then927 ], [ getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), %if.then964 ], [ getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), %if.then1001 ], [ getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), %if.then1038 ], [ getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), %if.then1075 ], [ getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), %if.then1105 ], [ getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), %if.then1152 ], [ getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), %if.then1228 ], [ getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), %if.then1304 ], [ getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), %if.then1341 ], [ getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0), %if.then1378 ], [ getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0), %if.then1418 ], [ getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), %if.then1458 ], [ getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), %if.then1507 ], [ getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), %if.then1556 ], [ getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), %if.then1611 ], [ getelementptr inbounds ([10 x i8]* @.str68, i64 0, i64 0), %if.then1666 ], [ getelementptr inbounds ([10 x i8]* @.str68, i64 0, i64 0), %if.then1712 ], [ getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), %if.then1758 ], [ getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), %if.then1795 ], [ getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), %if.then1832 ], [ getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), %if.then1881 ], [ getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), %for.inc ], [ getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), %for.inc674 ], [ getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), %for.inc723 ], [ getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), %for.inc772 ], [ getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), %for.inc815 ], [ getelementptr inbounds ([6 x i8]* @.str58, i64 0, i64 0), %for.inc858 ], [ getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), %for.body877 ], [ getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), %for.body907 ], [ getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), %for.inc955 ], [ getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), %for.inc992 ], [ getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), %for.inc1029 ], [ getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), %for.inc1066 ], [ getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), %for.body1085 ], [ getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), %for.body1132 ], [ getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), %for.inc1219 ], [ getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), %for.inc1295 ], [ getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), %for.inc1332 ], [ getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), %for.inc1369 ], [ getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0), %for.inc1409 ], [ getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0), %for.inc1449 ], [ getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), %for.inc1498 ], [ getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), %for.inc1547 ], [ getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), %for.inc1602 ], [ getelementptr inbounds ([6 x i8]* @.str67, i64 0, i64 0), %for.inc1657 ], [ getelementptr inbounds ([10 x i8]* @.str68, i64 0, i64 0), %for.inc1703 ], [ getelementptr inbounds ([10 x i8]* @.str68, i64 0, i64 0), %for.inc1749 ], [ getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), %for.inc1786 ], [ getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), %for.inc1823 ], [ getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), %for.inc1872 ], [ getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), %for.inc1921 ]
  %yesno.0.ph = phi i32 [ 43, %if.then583 ], [ 33, %if.then631 ], [ 43, %if.then683 ], [ 33, %if.then732 ], [ 43, %if.then781 ], [ 33, %if.then824 ], [ 43, %if.then867 ], [ 33, %if.then897 ], [ 43, %if.then927 ], [ 33, %if.then964 ], [ 43, %if.then1001 ], [ 33, %if.then1038 ], [ 43, %if.then1075 ], [ 33, %if.then1105 ], [ 43, %if.then1152 ], [ 33, %if.then1228 ], [ 43, %if.then1304 ], [ 33, %if.then1341 ], [ 43, %if.then1378 ], [ 33, %if.then1418 ], [ 43, %if.then1458 ], [ 33, %if.then1507 ], [ 43, %if.then1556 ], [ 33, %if.then1611 ], [ 43, %if.then1666 ], [ 33, %if.then1712 ], [ 43, %if.then1758 ], [ 33, %if.then1795 ], [ 43, %if.then1832 ], [ 33, %if.then1881 ], [ 43, %for.inc ], [ 33, %for.inc674 ], [ 43, %for.inc723 ], [ 33, %for.inc772 ], [ 43, %for.inc815 ], [ 33, %for.inc858 ], [ 43, %for.body877 ], [ 33, %for.body907 ], [ 43, %for.inc955 ], [ 33, %for.inc992 ], [ 43, %for.inc1029 ], [ 33, %for.inc1066 ], [ 43, %for.body1085 ], [ 33, %for.body1132 ], [ 43, %for.inc1219 ], [ 33, %for.inc1295 ], [ 43, %for.inc1332 ], [ 33, %for.inc1369 ], [ 43, %for.inc1409 ], [ 33, %for.inc1449 ], [ 43, %for.inc1498 ], [ 33, %for.inc1547 ], [ 43, %for.inc1602 ], [ 33, %for.inc1657 ], [ 43, %for.inc1703 ], [ 33, %for.inc1749 ], [ 43, %for.inc1786 ], [ 33, %for.inc1823 ], [ 43, %for.inc1872 ], [ 33, %for.inc1921 ]
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([14 x i8]* @.str72, i64 0, i64 0), i32 %yesno.0.ph, i8* %what.0.ph) #8
  br label %if.end1946

if.end1946:                                       ; preds = %if.then572, %if.end1931, %if.then1944
  %flags1947 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %354 = load i32* %flags1947, align 4, !tbaa !3
  %and1948 = and i32 %354, 2048
  %cmp1949 = icmp eq i32 %and1948, 0
  br i1 %cmp1949, label %while.cond, label %if.then1951

if.then1951:                                      ; preds = %if.end1946
  %flags1952 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %355 = load i8* %flags1952, align 1, !tbaa !1
  %or1954 = or i8 %355, 8
  store i8 %or1954, i8* %flags1952, align 1, !tbaa !1
  br label %while.cond

if.end1958:                                       ; preds = %land.lhs.true2.i, %land.lhs.true.i3209, %if.else198.i, %while.end183.i, %if.else166.i, %if.then152.i, %if.then34.i, %land.lhs.true105, %if.end140, %land.lhs.true455, %cond.end100, %sw.bb357, %sw.bb358, %sw.bb359, %sw.bb360, %sw.bb361, %sw.bb362, %if.else400, %if.end391, %sw.bb407, %sw.bb421, %lor.lhs.false447, %land.lhs.true451, %if.then467, %sw.default, %if.end481
  %value.43220 = phi i64 [ 91, %if.end481 ], [ %value.1, %sw.default ], [ %value.1, %if.then467 ], [ %value.1, %land.lhs.true451 ], [ %value.1, %lor.lhs.false447 ], [ %call425, %sw.bb421 ], [ %xor, %sw.bb407 ], [ %call397, %if.end391 ], [ %call403, %if.else400 ], [ 7, %sw.bb362 ], [ 27, %sw.bb361 ], [ 8, %sw.bb360 ], [ 12, %sw.bb359 ], [ 9, %sw.bb358 ], [ 13, %sw.bb357 ], [ %value.0, %cond.end100 ], [ %value.1, %land.lhs.true455 ], [ 10, %if.end140 ], [ 91, %land.lhs.true105 ], [ 91, %if.then34.i ], [ 91, %if.then152.i ], [ 91, %if.else166.i ], [ 91, %while.end183.i ], [ 91, %if.else198.i ], [ 91, %land.lhs.true.i3209 ], [ 91, %land.lhs.true2.i ]
  %tobool1959 = icmp eq i64 %range.1, 0
  br i1 %tobool1959, label %if.else1983, label %if.then1960

if.then1960:                                      ; preds = %if.end1958
  %cmp1961 = icmp sgt i64 %prevvalue.1, %value.43220
  br i1 %cmp1961, label %if.then1963, label %if.end2066

if.then1963:                                      ; preds = %if.then1960
  %356 = load i8** %parse, align 8, !tbaa !0
  %precomp1966 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %357 = load i8** %precomp1966, align 8, !tbaa !0
  %sub.ptr.lhs.cast1967 = ptrtoint i8* %356 to i64
  %sub.ptr.rhs.cast1968 = ptrtoint i8* %357 to i64
  %sub.ptr.sub1969 = sub i64 %sub.ptr.lhs.cast1967, %sub.ptr.rhs.cast1968
  %sub.ptr.rhs.cast1972 = ptrtoint i8* %rangebegin.1. to i64
  %sub.ptr.sub1973 = sub i64 %sub.ptr.lhs.cast1967, %sub.ptr.rhs.cast1972
  %conv1978 = trunc i64 %sub.ptr.sub1969 to i32
  %add.ptr1981 = getelementptr inbounds i8* %357, i64 %sub.ptr.sub1969
  call void (i8*, ...)* @S_re_croak2(i8* getelementptr inbounds ([25 x i8]* @.str73, i64 0, i64 0), i64 %sub.ptr.sub1973, i64 %sub.ptr.sub1973, i8* %rangebegin.1., i32 %conv1978, i8* %357, i8* %add.ptr1981) #9
  br label %if.end2066

if.else1983:                                      ; preds = %if.end1958, %if.end568, %if.then494
  %need_class.23241 = phi i8 [ 1, %if.then494 ], [ 1, %if.end568 ], [ %need_class.1, %if.end1958 ]
  %value.432203240 = phi i64 [ %value.43227, %if.then494 ], [ %value.43227, %if.end568 ], [ %value.43220, %if.end1958 ]
  %cmp48232213238 = phi i1 [ true, %if.then494 ], [ true, %if.end568 ], [ false, %if.end1958 ]
  %358 = load i8** %parse, align 8, !tbaa !0
  %359 = load i8* %358, align 1, !tbaa !1
  %cmp1986 = icmp eq i8 %359, 45
  br i1 %cmp1986, label %land.lhs.true1988, label %if.end2066

land.lhs.true1988:                                ; preds = %if.else1983
  %add.ptr1990 = getelementptr inbounds i8* %358, i64 1
  %360 = load i8** %end, align 8, !tbaa !0
  %cmp1992 = icmp ult i8* %add.ptr1990, %360
  br i1 %cmp1992, label %land.lhs.true1994, label %if.end2066

land.lhs.true1994:                                ; preds = %land.lhs.true1988
  %361 = load i8* %add.ptr1990, align 1, !tbaa !1
  %cmp1998 = icmp eq i8 %361, 93
  br i1 %cmp1998, label %if.end2066, label %if.then2000

if.then2000:                                      ; preds = %land.lhs.true1994
  store i8* %add.ptr1990, i8** %parse, align 8, !tbaa !0
  br i1 %cmp48232213238, label %if.then2005, label %while.cond

if.then2005:                                      ; preds = %if.then2000
  %362 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2006 = getelementptr inbounds %struct.cop* %362, i64 0, i32 14
  %363 = load %struct.sv** %cop_warnings2006, align 8, !tbaa !0
  %cmp2007 = icmp eq %struct.sv* %363, null
  br i1 %cmp2007, label %lor.lhs.false2025, label %land.lhs.true2009

land.lhs.true2009:                                ; preds = %if.then2005
  %364 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2010 = getelementptr inbounds %struct.cop* %364, i64 0, i32 14
  %365 = load %struct.sv** %cop_warnings2010, align 8, !tbaa !0
  %cmp2011 = icmp eq %struct.sv* %365, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp2011, label %lor.lhs.false2025, label %land.lhs.true2013

land.lhs.true2013:                                ; preds = %land.lhs.true2009
  %366 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2014 = getelementptr inbounds %struct.cop* %366, i64 0, i32 14
  %367 = load %struct.sv** %cop_warnings2014, align 8, !tbaa !0
  %cmp2015 = icmp eq %struct.sv* %367, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp2015, label %if.then2033, label %lor.lhs.false2017

lor.lhs.false2017:                                ; preds = %land.lhs.true2013
  %368 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2018 = getelementptr inbounds %struct.cop* %368, i64 0, i32 14
  %369 = load %struct.sv** %cop_warnings2018, align 8, !tbaa !0
  %sv_any2019 = getelementptr inbounds %struct.sv* %369, i64 0, i32 0
  %370 = load i8** %sv_any2019, align 8, !tbaa !0
  %xpv_pv2020 = bitcast i8* %370 to i8**
  %371 = load i8** %xpv_pv2020, align 8, !tbaa !0
  %arrayidx2021 = getelementptr inbounds i8* %371, i64 5
  %372 = load i8* %arrayidx2021, align 1, !tbaa !1
  %and2023 = and i8 %372, 1
  %tobool2024 = icmp eq i8 %and2023, 0
  br i1 %tobool2024, label %lor.lhs.false2025, label %if.then2033

lor.lhs.false2025:                                ; preds = %lor.lhs.false2017, %land.lhs.true2009, %if.then2005
  %373 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings2026 = getelementptr inbounds %struct.cop* %373, i64 0, i32 14
  %374 = load %struct.sv** %cop_warnings2026, align 8, !tbaa !0
  %cmp2027 = icmp eq %struct.sv* %374, null
  br i1 %cmp2027, label %land.lhs.true2029, label %if.end2052

land.lhs.true2029:                                ; preds = %lor.lhs.false2025
  %375 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and2031 = and i8 %375, 1
  %tobool2032 = icmp eq i8 %and2031, 0
  br i1 %tobool2032, label %if.end2052, label %if.then2033

if.then2033:                                      ; preds = %lor.lhs.false2017, %land.lhs.true2029, %land.lhs.true2013
  %376 = load i8** %parse, align 8, !tbaa !0
  %precomp2036 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 1
  %377 = load i8** %precomp2036, align 8, !tbaa !0
  %sub.ptr.lhs.cast2037 = ptrtoint i8* %376 to i64
  %sub.ptr.rhs.cast2038 = ptrtoint i8* %377 to i64
  %sub.ptr.sub2039 = sub i64 %sub.ptr.lhs.cast2037, %sub.ptr.rhs.cast2038
  %sub.ptr.rhs.cast2042 = ptrtoint i8* %rangebegin.1. to i64
  %sub.ptr.sub2043 = sub i64 %sub.ptr.lhs.cast2037, %sub.ptr.rhs.cast2042
  %conv2048 = trunc i64 %sub.ptr.sub2039 to i32
  %add.ptr2051 = getelementptr inbounds i8* %377, i64 %sub.ptr.sub2039
  call void (i32, i8*, ...)* @Perl_warner(i32 20, i8* getelementptr inbounds ([75 x i8]* @.str54, i64 0, i64 0), i64 %sub.ptr.sub2043, i64 %sub.ptr.sub2043, i8* %rangebegin.1., i32 %conv2048, i8* %377, i8* %add.ptr2051) #8
  br label %if.end2052

if.end2052:                                       ; preds = %land.lhs.true2029, %if.then2033, %lor.lhs.false2025
  %378 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp2054 = icmp eq %struct.regnode* %378, @PL_regdummy
  br i1 %cmp2054, label %while.cond, label %if.then2056

if.then2056:                                      ; preds = %if.end2052
  %379 = getelementptr inbounds %struct.regnode* %call, i64 3, i32 1
  %380 = load i8* %379, align 1, !tbaa !1
  %or2060 = or i8 %380, 32
  store i8 %or2060, i8* %379, align 1, !tbaa !1
  br label %while.cond

if.end2066:                                       ; preds = %land.lhs.true1994, %land.lhs.true1988, %if.else1983, %if.then1960, %if.then1963
  %need_class.23242 = phi i8 [ %need_class.1, %if.then1963 ], [ %need_class.1, %if.then1960 ], [ %need_class.23241, %if.else1983 ], [ %need_class.23241, %land.lhs.true1988 ], [ %need_class.23241, %land.lhs.true1994 ]
  %value.432203239 = phi i64 [ %value.43220, %if.then1963 ], [ %value.43220, %if.then1960 ], [ %value.432203240, %if.else1983 ], [ %value.432203240, %land.lhs.true1988 ], [ %value.432203240, %land.lhs.true1994 ]
  %prevvalue.2 = phi i64 [ %prevvalue.1, %if.then1963 ], [ %prevvalue.1, %if.then1960 ], [ %value.432203240, %if.else1983 ], [ %value.432203240, %land.lhs.true1988 ], [ %value.432203240, %land.lhs.true1994 ]
  %381 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp2068 = icmp eq %struct.regnode* %381, @PL_regdummy
  br i1 %cmp2068, label %while.cond, label %if.then2070

if.then2070:                                      ; preds = %if.end2066
  %cmp2071 = icmp slt i64 %prevvalue.2, 256
  br i1 %cmp2071, label %if.then2073, label %if.end2097

if.then2073:                                      ; preds = %if.then2070
  %cmp2074 = icmp ugt i64 %value.432203239, 255
  %cond2079 = select i1 %cmp2074, i64 255, i64 %value.432203239
  %cmp20813248 = icmp sgt i64 %prevvalue.2, %cond2079
  br i1 %cmp20813248, label %if.end2097, label %for.body2083.lr.ph

for.body2083.lr.ph:                               ; preds = %if.then2073
  %bitmap2089 = getelementptr inbounds %struct.regnode* %call, i64 2
  %382 = bitcast %struct.regnode* %bitmap2089 to [32 x i8]*
  br label %for.body2083

for.body2083:                                     ; preds = %for.body2083, %for.body2083.lr.ph
  %i.03249 = phi i64 [ %prevvalue.2, %for.body2083.lr.ph ], [ %inc2095, %for.body2083 ]
  %i.0.tr = trunc i64 %i.03249 to i32
  %sh_prom2085 = and i32 %i.0.tr, 7
  %shl2086 = shl i32 1, %sh_prom2085
  %shr20873043 = lshr i64 %i.03249, 3
  %and2088 = and i64 %shr20873043, 31
  %arrayidx2090 = getelementptr inbounds [32 x i8]* %382, i64 0, i64 %and2088
  %383 = load i8* %arrayidx2090, align 1, !tbaa !1
  %conv20913044 = zext i8 %383 to i32
  %or2092 = or i32 %conv20913044, %shl2086
  %conv2093 = trunc i32 %or2092 to i8
  store i8 %conv2093, i8* %arrayidx2090, align 1, !tbaa !1
  %inc2095 = add nsw i64 %i.03249, 1
  %cmp2081 = icmp slt i64 %i.03249, %cond2079
  br i1 %cmp2081, label %for.body2083, label %if.end2097

if.end2097:                                       ; preds = %if.then2073, %for.body2083, %if.then2070
  %cmp2098 = icmp ugt i64 %value.432203239, 255
  br i1 %cmp2098, label %if.then2104, label %lor.lhs.false2100

lor.lhs.false2100:                                ; preds = %if.end2097
  %384 = load i32* %utf8, align 4, !tbaa !3
  %cmp2102 = icmp eq i32 %384, 0
  br i1 %cmp2102, label %while.cond, label %if.then2104

if.then2104:                                      ; preds = %lor.lhs.false2100, %if.end2097
  %flags2105 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %385 = load i8* %flags2105, align 1, !tbaa !1
  %or2107 = or i8 %385, 32
  store i8 %or2107, i8* %flags2105, align 1, !tbaa !1
  %cmp2109 = icmp ult i64 %prevvalue.2, %value.432203239
  br i1 %cmp2109, label %if.then2111, label %if.else2112

if.then2111:                                      ; preds = %if.then2104
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([13 x i8]* @.str74, i64 0, i64 0), i64 %prevvalue.2, i64 %value.432203239) #8
  br label %while.cond

if.else2112:                                      ; preds = %if.then2104
  %cmp2113 = icmp eq i64 %prevvalue.2, %value.432203239
  br i1 %cmp2113, label %if.then2115, label %while.cond

if.then2115:                                      ; preds = %if.else2112
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i64 %value.432203239) #8
  %flags2116 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %386 = load i32* %flags2116, align 4, !tbaa !3
  %and2117 = and i32 %386, 16384
  %cmp2118 = icmp eq i32 %and2117, 0
  br i1 %cmp2118, label %while.cond, label %if.then2120

if.then2120:                                      ; preds = %if.then2115
  %arraydecay2121 = getelementptr inbounds [7 x i8]* %foldbuf, i64 0, i64 0
  %call2122 = call i64 @Perl_to_uni_fold(i64 %value.432203239, i8* %arraydecay2121, i64* %foldlen) #8
  %cmp2123 = icmp eq i64 %call2122, %value.432203239
  br i1 %cmp2123, label %if.end2178, label %if.then2125

if.then2125:                                      ; preds = %if.then2120
  %387 = load i64* %foldlen, align 8, !tbaa !5
  %cmp2126 = icmp ult i64 %call2122, 128
  br i1 %cmp2126, label %cond.end2163, label %cond.false2129

cond.false2129:                                   ; preds = %if.then2125
  %cmp2130 = icmp ult i64 %call2122, 2048
  br i1 %cmp2130, label %cond.end2163, label %cond.false2133

cond.false2133:                                   ; preds = %cond.false2129
  %cmp2134 = icmp ult i64 %call2122, 65536
  br i1 %cmp2134, label %cond.end2163, label %cond.false2137

cond.false2137:                                   ; preds = %cond.false2133
  %cmp2138 = icmp ult i64 %call2122, 2097152
  br i1 %cmp2138, label %cond.end2163, label %cond.false2141

cond.false2141:                                   ; preds = %cond.false2137
  %cmp2142 = icmp ult i64 %call2122, 67108864
  br i1 %cmp2142, label %cond.end2163, label %cond.false2145

cond.false2145:                                   ; preds = %cond.false2141
  %cmp2146 = icmp ult i64 %call2122, 2147483648
  br i1 %cmp2146, label %cond.end2163, label %cond.false2149

cond.false2149:                                   ; preds = %cond.false2145
  %cmp2150 = icmp ult i64 %call2122, 68719476736
  %phitmp3042 = select i1 %cmp2150, i64 7, i64 13
  br label %cond.end2163

cond.end2163:                                     ; preds = %cond.false2129, %cond.false2137, %cond.false2149, %cond.false2145, %cond.false2141, %cond.false2133, %if.then2125
  %cond2164 = phi i64 [ 1, %if.then2125 ], [ 2, %cond.false2129 ], [ 3, %cond.false2133 ], [ 4, %cond.false2137 ], [ 5, %cond.false2141 ], [ %phitmp3042, %cond.false2149 ], [ 6, %cond.false2145 ]
  %cmp2166 = icmp eq i64 %387, %cond2164
  br i1 %cmp2166, label %if.then2168, label %if.else2169

if.then2168:                                      ; preds = %cond.end2163
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i64 %call2122) #8
  br label %if.end2178

if.else2169:                                      ; preds = %cond.end2163
  %tobool2170 = icmp eq %struct.av* %unicode_alternate.1, null
  br i1 %tobool2170, label %if.then2171, label %if.end2173

if.then2171:                                      ; preds = %if.else2169
  %call2172 = call %struct.av* @Perl_newAV() #8
  %.pre = load i64* %foldlen, align 8, !tbaa !5
  br label %if.end2173

if.end2173:                                       ; preds = %if.else2169, %if.then2171
  %388 = phi i64 [ %387, %if.else2169 ], [ %.pre, %if.then2171 ]
  %unicode_alternate.2 = phi %struct.av* [ %unicode_alternate.1, %if.else2169 ], [ %call2172, %if.then2171 ]
  %call2175 = call %struct.sv* @Perl_newSVpvn(i8* %arraydecay2121, i64 %388) #8
  %sv_flags = getelementptr inbounds %struct.sv* %call2175, i64 0, i32 2
  %389 = load i32* %sv_flags, align 4, !tbaa !3
  %or2176 = or i32 %389, 536870912
  store i32 %or2176, i32* %sv_flags, align 4, !tbaa !3
  call void @Perl_av_push(%struct.av* %unicode_alternate.2, %struct.sv* %call2175) #8
  br label %if.end2178

if.end2178:                                       ; preds = %if.then2120, %if.then2168, %if.end2173
  %unicode_alternate.3 = phi %struct.av* [ %unicode_alternate.1, %if.then2168 ], [ %unicode_alternate.2, %if.end2173 ], [ %unicode_alternate.1, %if.then2120 ]
  switch i64 %value.432203239, label %while.cond [
    i64 962, label %if.then2181
    i64 931, label %if.then2185
  ]

if.then2181:                                      ; preds = %if.end2178
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i64 931) #8
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i64 963) #8
  br label %while.cond

if.then2185:                                      ; preds = %if.end2178
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %listsv.0, i8* getelementptr inbounds ([7 x i8]* @.str75, i64 0, i64 0), i64 963) #8
  br label %while.cond

while.end2193:                                    ; preds = %land.rhs, %while.cond
  %tobool2194 = icmp eq i8 %need_class.0, 0
  br i1 %tobool2194, label %while.end2193.if.end2212thread-pre-split_crit_edge, label %if.then2195

while.end2193.if.end2212thread-pre-split_crit_edge: ; preds = %while.end2193
  %.pr3244.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end2212

if.then2195:                                      ; preds = %while.end2193
  %flags2196 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %390 = load i8* %flags2196, align 1, !tbaa !1
  %or2198 = or i8 %390, -128
  store i8 %or2198, i8* %flags2196, align 1, !tbaa !1
  %391 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp2201 = icmp eq %struct.regnode* %391, @PL_regdummy
  br i1 %cmp2201, label %if.end2212.thread, label %if.else2208

if.end2212.thread:                                ; preds = %if.then2195
  %size2204 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 12
  %392 = load i32* %size2204, align 4, !tbaa !3
  %add2206 = add i32 %392, 1
  store i32 %add2206, i32* %size2204, align 4, !tbaa !3
  br label %if.end2305

if.else2208:                                      ; preds = %if.then2195
  %add.ptr2210 = getelementptr inbounds %struct.regnode* %391, i64 1
  store %struct.regnode* %add.ptr2210, %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end2212

if.end2212:                                       ; preds = %while.end2193.if.end2212thread-pre-split_crit_edge, %if.else2208
  %393 = phi %struct.regnode* [ %add.ptr2210, %if.else2208 ], [ %.pr3244.pre, %while.end2193.if.end2212thread-pre-split_crit_edge ]
  %cmp2214 = icmp eq %struct.regnode* %393, @PL_regdummy
  br i1 %cmp2214, label %if.end2305, label %land.lhs.true2216

land.lhs.true2216:                                ; preds = %if.end2212
  %flags2217 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %394 = load i8* %flags2217, align 1, !tbaa !1
  %and2219 = and i8 %394, -5
  %cmp2220 = icmp eq i8 %and2219, 2
  br i1 %cmp2220, label %for.cond2223.preheader, label %if.end2262

for.cond2223.preheader:                           ; preds = %land.lhs.true2216
  %bitmap2229 = getelementptr inbounds %struct.regnode* %call, i64 2
  %395 = bitcast %struct.regnode* %bitmap2229 to [32 x i8]*
  br label %for.body2226

for.body2226:                                     ; preds = %for.inc2255, %for.cond2223.preheader
  %value.363247 = phi i64 [ 0, %for.cond2223.preheader ], [ %inc2256, %for.inc2255 ]
  %shr2227 = lshr i64 %value.363247, 3
  %and2228 = and i64 %shr2227, 31
  %arrayidx2230 = getelementptr inbounds [32 x i8]* %395, i64 0, i64 %and2228
  %396 = load i8* %arrayidx2230, align 1, !tbaa !1
  %conv2231 = sext i8 %396 to i32
  %value.36.tr = trunc i64 %value.363247 to i32
  %sh_prom2233 = and i32 %value.36.tr, 7
  %shl2234 = shl i32 1, %sh_prom2233
  %and2235 = and i32 %conv2231, %shl2234
  %tobool2236 = icmp eq i32 %and2235, 0
  br i1 %tobool2236, label %for.inc2255, label %if.then2237

if.then2237:                                      ; preds = %for.body2226
  %arrayidx2238 = getelementptr inbounds [0 x i8]* @PL_fold, i64 0, i64 %value.363247
  %397 = load i8* %arrayidx2238, align 1, !tbaa !1
  %conv2239 = zext i8 %397 to i64
  %cmp2240 = icmp eq i64 %conv2239, %value.363247
  br i1 %cmp2240, label %for.inc2255, label %if.then2242

if.then2242:                                      ; preds = %if.then2237
  %conv2239.tr = zext i8 %397 to i32
  %sh_prom2244 = and i32 %conv2239.tr, 7
  %shl2245 = shl i32 1, %sh_prom2244
  %shr2246 = lshr i64 %conv2239, 3
  %arrayidx2249 = getelementptr inbounds [32 x i8]* %395, i64 0, i64 %shr2246
  %398 = load i8* %arrayidx2249, align 1, !tbaa !1
  %conv22503039 = zext i8 %398 to i32
  %or2251 = or i32 %conv22503039, %shl2245
  %conv2252 = trunc i32 %or2251 to i8
  store i8 %conv2252, i8* %arrayidx2249, align 1, !tbaa !1
  br label %for.inc2255

for.inc2255:                                      ; preds = %if.then2237, %for.body2226, %if.then2242
  %inc2256 = add i64 %value.363247, 1
  %exitcond3318 = icmp eq i64 %inc2256, 256
  br i1 %exitcond3318, label %for.end2257, label %for.body2226

for.end2257:                                      ; preds = %for.inc2255
  %399 = load i8* %flags2217, align 1, !tbaa !1
  %and2260 = and i8 %399, -3
  store i8 %and2260, i8* %flags2217, align 1, !tbaa !1
  %.pre3361 = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end2262

if.end2262:                                       ; preds = %for.end2257, %land.lhs.true2216
  %400 = phi %struct.regnode* [ %.pre3361, %for.end2257 ], [ %393, %land.lhs.true2216 ]
  %cmp2264 = icmp eq %struct.regnode* %400, @PL_regdummy
  %tobool2268 = icmp eq i8 %optimize_invert.0, 0
  %or.cond3205 = or i1 %cmp2264, %tobool2268
  br i1 %or.cond3205, label %if.end2289, label %land.lhs.true2269

land.lhs.true2269:                                ; preds = %if.end2262
  %flags2270 = getelementptr inbounds %struct.regnode* %call, i64 0, i32 0
  %401 = load i8* %flags2270, align 1, !tbaa !1
  %cmp2273 = icmp eq i8 %401, 4
  br i1 %cmp2273, label %for.cond2276.preheader, label %if.end2289

for.cond2276.preheader:                           ; preds = %land.lhs.true2269
  %bitmap2280 = getelementptr inbounds %struct.regnode* %call, i64 2
  %402 = bitcast %struct.regnode* %bitmap2280 to [32 x i8]*
  br label %for.body2279

for.body2279:                                     ; preds = %for.body2279, %for.cond2276.preheader
  %value.373246 = phi i64 [ 0, %for.cond2276.preheader ], [ %inc2286, %for.body2279 ]
  %arrayidx2281 = getelementptr inbounds [32 x i8]* %402, i64 0, i64 %value.373246
  %403 = load i8* %arrayidx2281, align 1, !tbaa !1
  %xor2283 = xor i8 %403, -1
  store i8 %xor2283, i8* %arrayidx2281, align 1, !tbaa !1
  %inc2286 = add i64 %value.373246, 1
  %exitcond = icmp eq i64 %inc2286, 32
  br i1 %exitcond, label %for.end2287, label %for.body2279

for.end2287:                                      ; preds = %for.body2279
  store i8 64, i8* %flags2270, align 1, !tbaa !1
  %.pr3245.pre = load %struct.regnode** %emit, align 8, !tbaa !0
  br label %if.end2289

if.end2289:                                       ; preds = %for.end2287, %land.lhs.true2269, %if.end2262
  %404 = phi %struct.regnode* [ %400, %if.end2262 ], [ %400, %land.lhs.true2269 ], [ %.pr3245.pre, %for.end2287 ]
  %cmp2291 = icmp eq %struct.regnode* %404, @PL_regdummy
  br i1 %cmp2291, label %if.end2305, label %if.then2293

if.then2293:                                      ; preds = %if.end2289
  %call2294 = call %struct.av* @Perl_newAV() #8
  %call2295 = call %struct.sv** @Perl_av_store(%struct.av* %call2294, i32 0, %struct.sv* %listsv.0) #8
  %call2296 = call %struct.sv** @Perl_av_store(%struct.av* %call2294, i32 1, %struct.sv* null) #8
  %405 = bitcast %struct.av* %unicode_alternate.0 to %struct.sv*
  %call2297 = call %struct.sv** @Perl_av_store(%struct.av* %call2294, i32 2, %struct.sv* %405) #8
  %406 = bitcast %struct.av* %call2294 to %struct.sv*
  %call2298 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %406) #8
  %call2299 = call fastcc i32 @S_add_data(%struct.RExC_state_t* %pRExC_state, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str76, i64 0, i64 0)) #9
  %conv2300 = sext i32 %call2299 to i64
  %407 = bitcast %struct.sv* %call2298 to i8*
  %rx2301 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 2
  %408 = load %struct.regexp** %rx2301, align 8, !tbaa !0
  %data = getelementptr inbounds %struct.regexp* %408, i64 0, i32 5
  %409 = load %struct.reg_data** %data, align 8, !tbaa !0
  %arrayidx2303 = getelementptr inbounds %struct.reg_data* %409, i64 0, i32 2, i64 %conv2300
  store i8* %407, i8** %arrayidx2303, align 8, !tbaa !0
  %arg1 = getelementptr inbounds %struct.regnode* %call, i64 1
  %410 = bitcast %struct.regnode* %arg1 to i32*
  store i32 %call2299, i32* %410, align 4, !tbaa !3
  br label %if.end2305

if.end2305:                                       ; preds = %if.end2212, %if.end2212.thread, %if.then2293, %if.end2289
  ret %struct.regnode* %call
}

; Function Attrs: optsize
declare i64 @Perl_grok_hex(i8*, i64*, i32*, double*) #2

; Function Attrs: optsize
declare i64 @Perl_grok_oct(i8*, i64*, i32*, double*) #2

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvuni(i8*, i64, i64*, i32) #2

; Function Attrs: optsize
declare i64 @Perl_to_uni_fold(i64, i8*, i64*) #2

; Function Attrs: optsize
declare i64 @Perl_utf8_to_uvchr(i8*, i64*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_reguni(%struct.RExC_state_t* nocapture %pRExC_state, i64 %uv, i8* %s, i64* nocapture %lenp) #0 {
entry:
  %emit = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 8
  %0 = load %struct.regnode** %emit, align 8, !tbaa !0
  %cmp = icmp eq %struct.regnode* %0, @PL_regdummy
  br i1 %cmp, label %cond.true, label %cond.false30

cond.true:                                        ; preds = %entry
  %cmp1 = icmp ult i64 %uv, 128
  br i1 %cmp1, label %cond.end31, label %cond.false

cond.false:                                       ; preds = %cond.true
  %cmp3 = icmp ult i64 %uv, 2048
  br i1 %cmp3, label %cond.end31, label %cond.false5

cond.false5:                                      ; preds = %cond.false
  %cmp6 = icmp ult i64 %uv, 65536
  br i1 %cmp6, label %cond.end31, label %cond.false8

cond.false8:                                      ; preds = %cond.false5
  %cmp9 = icmp ult i64 %uv, 2097152
  br i1 %cmp9, label %cond.end31, label %cond.false11

cond.false11:                                     ; preds = %cond.false8
  %cmp12 = icmp ult i64 %uv, 67108864
  br i1 %cmp12, label %cond.end31, label %cond.false14

cond.false14:                                     ; preds = %cond.false11
  %cmp15 = icmp ult i64 %uv, 2147483648
  br i1 %cmp15, label %cond.end31, label %cond.false17

cond.false17:                                     ; preds = %cond.false14
  %cmp18 = icmp ult i64 %uv, 68719476736
  %phitmp = select i1 %cmp18, i64 7, i64 13
  br label %cond.end31

cond.false30:                                     ; preds = %entry
  %call = tail call i8* @Perl_uvuni_to_utf8(i8* %s, i64 %uv) #8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true, %cond.false5, %cond.false11, %cond.false14, %cond.false17, %cond.false8, %cond.false, %cond.false30
  %cond32 = phi i64 [ %sub.ptr.sub, %cond.false30 ], [ 1, %cond.true ], [ 2, %cond.false ], [ 3, %cond.false5 ], [ 4, %cond.false8 ], [ 5, %cond.false11 ], [ %phitmp, %cond.false17 ], [ 6, %cond.false14 ]
  store i64 %cond32, i64* %lenp, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_downgrade(%struct.sv*, i8 signext) #2

; Function Attrs: optsize
declare i8* @Perl_sv_recode_to_utf8(%struct.sv*, %struct.sv*) #2

; Function Attrs: optsize
declare i8* @Perl_uvuni_to_utf8(i8*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #2

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #2

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_vmess(i8*, [1 x %struct.__va_list_tag]*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare i8* @Perl_ninstr(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_cl_or(%struct.RExC_state_t* nocapture %pRExC_state, %struct.regnode_charclass_class* nocapture %cl, %struct.regnode_charclass_class* nocapture %or_with) #0 {
entry:
  %flags = getelementptr inbounds %struct.regnode_charclass_class* %or_with, i64 0, i32 0
  %0 = load i8* %flags, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 4
  %tobool = icmp eq i32 %and, 0
  %flags4 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 0
  %1 = load i8* %flags4, align 1, !tbaa !1
  %conv5 = zext i8 %1 to i32
  %2 = xor i8 %1, %0
  %3 = and i8 %2, 1
  %cmp = icmp eq i8 %3, 0
  br i1 %tobool, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %and10 = and i32 %conv, 2
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %land.lhs.true
  %and15 = and i32 %conv5, 2
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %for.body, label %if.else

for.body:                                         ; preds = %land.lhs.true12, %for.body
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %for.body ], [ 0, %land.lhs.true12 ]
  %arrayidx = getelementptr inbounds %struct.regnode_charclass_class* %or_with, i64 0, i32 4, i64 %indvars.iv193
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %neg = xor i8 %4, -1
  %arrayidx23 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 %indvars.iv193
  %5 = load i8* %arrayidx23, align 1, !tbaa !1
  %or = or i8 %5, %neg
  store i8 %or, i8* %arrayidx23, align 1, !tbaa !1
  %indvars.iv.next194 = add i64 %indvars.iv193, 1
  %lftr.wideiv195 = trunc i64 %indvars.iv.next194 to i32
  %exitcond196 = icmp eq i32 %lftr.wideiv195, 32
  br i1 %exitcond196, label %if.end91, label %for.body

if.else:                                          ; preds = %land.lhs.true12, %land.lhs.true, %if.then
  %arraydecay.i = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 5, i64 0
  %6 = bitcast i8* %arraydecay.i to i32*
  store i32 0, i32* %6, align 1
  %7 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 0
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 -1, i64 32, i32 4, i1 false) #3
  store i8 80, i8* %flags4, align 1, !tbaa !1
  %flags1.i = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %8 = load i32* %flags1.i, align 4, !tbaa !3
  %and.i = and i32 %8, 2048
  %cmp.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp.i, i8 80, i8 81
  store i8 %..i, i8* %flags4, align 1, !tbaa !1
  br label %if.end91

if.else26:                                        ; preds = %entry
  br i1 %cmp, label %land.lhs.true35, label %if.else89

land.lhs.true35:                                  ; preds = %if.else26
  %and38 = and i32 %conv, 2
  %tobool39 = icmp eq i32 %and38, 0
  br i1 %tobool39, label %for.body49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %and42 = and i32 %conv5, 2
  %tobool43 = icmp eq i32 %and42, 0
  br i1 %tobool43, label %if.else89, label %for.body49

for.body49:                                       ; preds = %land.lhs.true35, %lor.lhs.false, %for.body49
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %for.body49 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true35 ]
  %arrayidx52 = getelementptr inbounds %struct.regnode_charclass_class* %or_with, i64 0, i32 4, i64 %indvars.iv189
  %9 = load i8* %arrayidx52, align 1, !tbaa !1
  %arrayidx56 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 %indvars.iv189
  %10 = load i8* %arrayidx56, align 1, !tbaa !1
  %or58177 = or i8 %10, %9
  store i8 %or58177, i8* %arrayidx56, align 1, !tbaa !1
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %lftr.wideiv191 = trunc i64 %indvars.iv.next190 to i32
  %exitcond192 = icmp eq i32 %lftr.wideiv191, 32
  br i1 %exitcond192, label %for.end62, label %for.body49

for.end62:                                        ; preds = %for.body49
  %11 = load i8* %flags, align 1, !tbaa !1
  %and65 = and i8 %11, 8
  %tobool66 = icmp eq i8 %and65, 0
  br i1 %tobool66, label %if.end91, label %for.body71

for.body71:                                       ; preds = %for.end62, %for.body71
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body71 ], [ 0, %for.end62 ]
  %arrayidx73 = getelementptr inbounds %struct.regnode_charclass_class* %or_with, i64 0, i32 5, i64 %indvars.iv
  %12 = load i8* %arrayidx73, align 1, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 5, i64 %indvars.iv
  %13 = load i8* %arrayidx77, align 1, !tbaa !1
  %or79176 = or i8 %13, %12
  store i8 %or79176, i8* %arrayidx77, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end83, label %for.body71

for.end83:                                        ; preds = %for.body71
  %14 = load i8* %flags4, align 1, !tbaa !1
  %or86 = or i8 %14, 8
  store i8 %or86, i8* %flags4, align 1, !tbaa !1
  br label %if.end91

if.else89:                                        ; preds = %lor.lhs.false, %if.else26
  %arraydecay.i180 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 5, i64 0
  %15 = bitcast i8* %arraydecay.i180 to i32*
  store i32 0, i32* %15, align 1
  %16 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 0
  tail call void @llvm.memset.p0i8.i64(i8* %16, i8 -1, i64 32, i32 4, i1 false) #3
  store i8 80, i8* %flags4, align 1, !tbaa !1
  %flags1.i182 = getelementptr inbounds %struct.RExC_state_t* %pRExC_state, i64 0, i32 0
  %17 = load i32* %flags1.i182, align 4, !tbaa !3
  %and.i183 = and i32 %17, 2048
  %cmp.i184 = icmp eq i32 %and.i183, 0
  %..i185 = select i1 %cmp.i184, i8 80, i8 81
  store i8 %..i185, i8* %flags4, align 1, !tbaa !1
  br label %if.end91

if.end91:                                         ; preds = %for.body, %for.end62, %if.else89, %for.end83, %if.else
  %18 = load i8* %flags, align 1, !tbaa !1
  %and94 = and i8 %18, 16
  %tobool95 = icmp eq i8 %and94, 0
  %.pre = load i8* %flags4, align 1, !tbaa !1
  br i1 %tobool95, label %if.end101, label %if.then96

if.then96:                                        ; preds = %if.end91
  %or99 = or i8 %.pre, 16
  store i8 %or99, i8* %flags4, align 1, !tbaa !1
  br label %if.end101

if.end101:                                        ; preds = %if.end91, %if.then96
  %19 = phi i8 [ %or99, %if.then96 ], [ %.pre, %if.end91 ]
  %and104 = and i8 %19, 32
  %tobool105 = icmp eq i8 %and104, 0
  br i1 %tobool105, label %if.end124, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.end101
  %20 = load i8* %flags, align 1, !tbaa !1
  %and109 = and i8 %20, 32
  %tobool110 = icmp eq i8 %and109, 0
  br i1 %tobool110, label %if.end124, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %land.lhs.true106
  %21 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 3
  %22 = load i32* %21, align 4, !tbaa !3
  %23 = getelementptr inbounds %struct.regnode_charclass_class* %or_with, i64 0, i32 3
  %24 = load i32* %23, align 4, !tbaa !3
  %cmp113 = icmp eq i32 %22, %24
  br i1 %cmp113, label %if.end124, label %if.then115

if.then115:                                       ; preds = %land.lhs.true111
  %or118 = and i8 %19, -97
  %and122 = or i8 %or118, 64
  store i8 %and122, i8* %flags4, align 1, !tbaa !1
  br label %if.end124

if.end124:                                        ; preds = %if.end101, %land.lhs.true111, %land.lhs.true106, %if.then115
  %25 = phi i8 [ %19, %land.lhs.true111 ], [ %19, %land.lhs.true106 ], [ %and122, %if.then115 ], [ %19, %if.end101 ]
  %26 = load i8* %flags, align 1, !tbaa !1
  %and127 = and i8 %26, 64
  %tobool128 = icmp eq i8 %and127, 0
  br i1 %tobool128, label %if.end138, label %if.then129

if.then129:                                       ; preds = %if.end124
  %or132 = and i8 %25, -97
  %and136 = or i8 %or132, 64
  store i8 %and136, i8* %flags4, align 1, !tbaa !1
  br label %if.end138

if.end138:                                        ; preds = %if.end124, %if.then129
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_cl_and(%struct.regnode_charclass_class* nocapture %cl, %struct.regnode_charclass_class* nocapture %and_with) #0 {
entry:
  %flags = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 0
  %0 = load i8* %flags, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 8
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 0
  %1 = load i8* %flags1, align 1, !tbaa !1
  %conv2 = zext i8 %1 to i32
  %and3 = and i32 %conv2, 8
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true5, label %if.end54

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = xor i8 %1, %0
  %3 = and i8 %2, 1
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true13, label %if.end54

land.lhs.true13:                                  ; preds = %land.lhs.true5
  %and16 = and i32 %conv, 2
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.end54

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %and21 = and i32 %conv2, 2
  %tobool22 = icmp eq i32 %and21, 0
  br i1 %tobool22, label %if.then, label %if.end54

if.then:                                          ; preds = %land.lhs.true18
  %and25 = and i32 %conv, 4
  %tobool26 = icmp eq i32 %and25, 0
  br i1 %tobool26, label %for.body40, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 4, i64 %indvars.iv158
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %neg = xor i8 %4, -1
  %arrayidx33 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 %indvars.iv158
  %5 = load i8* %arrayidx33, align 1, !tbaa !1
  %and35 = and i8 %5, %neg
  store i8 %and35, i8* %arrayidx33, align 1, !tbaa !1
  %indvars.iv.next159 = add i64 %indvars.iv158, 1
  %lftr.wideiv160 = trunc i64 %indvars.iv.next159 to i32
  %exitcond161 = icmp eq i32 %lftr.wideiv160, 32
  br i1 %exitcond161, label %if.end54, label %for.body

for.body40:                                       ; preds = %if.then, %for.body40
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body40 ], [ 0, %if.then ]
  %arrayidx43 = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 4, i64 %indvars.iv
  %6 = load i8* %arrayidx43, align 1, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 4, i64 %indvars.iv
  %7 = load i8* %arrayidx47, align 1, !tbaa !1
  %and49150 = and i8 %7, %6
  store i8 %and49150, i8* %arrayidx47, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 32
  br i1 %exitcond, label %if.end54, label %for.body40

if.end54:                                         ; preds = %for.body, %for.body40, %land.lhs.true18, %land.lhs.true13, %land.lhs.true, %entry, %land.lhs.true5
  %8 = load i8* %flags, align 1, !tbaa !1
  %and57 = and i8 %8, 16
  %tobool58 = icmp eq i8 %and57, 0
  %flags60 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 0
  %9 = load i8* %flags60, align 1, !tbaa !1
  br i1 %tobool58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %if.end54
  %and62 = and i8 %9, -17
  store i8 %and62, i8* %flags60, align 1, !tbaa !1
  br label %if.end64

if.end64:                                         ; preds = %if.end54, %if.then59
  %10 = phi i8 [ %and62, %if.then59 ], [ %9, %if.end54 ]
  %flags65 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 0
  %and67 = and i8 %10, 64
  %tobool68 = icmp eq i8 %and67, 0
  br i1 %tobool68, label %if.end88, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %if.end64
  %11 = load i8* %flags, align 1, !tbaa !1
  %12 = and i8 %11, 36
  %13 = icmp eq i8 %12, 32
  br i1 %13, label %if.then79, label %if.end88

if.then79:                                        ; preds = %land.lhs.true69
  %and82 = and i8 %10, -97
  %or = or i8 %and82, 32
  store i8 %or, i8* %flags65, align 1, !tbaa !1
  %14 = getelementptr inbounds %struct.regnode_charclass_class* %and_with, i64 0, i32 3
  %15 = load i32* %14, align 4, !tbaa !3
  %16 = getelementptr inbounds %struct.regnode_charclass_class* %cl, i64 0, i32 3
  store i32 %15, i32* %16, align 4, !tbaa !3
  br label %if.end88

if.end88:                                         ; preds = %if.end64, %land.lhs.true69, %if.then79
  %17 = phi i8 [ %10, %land.lhs.true69 ], [ %or, %if.then79 ], [ %10, %if.end64 ]
  %18 = load i8* %flags, align 1, !tbaa !1
  %19 = and i8 %18, 68
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.end88
  %and101 = and i8 %17, -65
  store i8 %and101, i8* %flags65, align 1, !tbaa !1
  %.pre = load i8* %flags, align 1, !tbaa !1
  br label %if.end103

if.end103:                                        ; preds = %if.end88, %if.then98
  %21 = phi i8 [ %17, %if.end88 ], [ %and101, %if.then98 ]
  %22 = phi i8 [ %18, %if.end88 ], [ %.pre, %if.then98 ]
  %23 = and i8 %22, 100
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %if.then113, label %if.end118

if.then113:                                       ; preds = %if.end103
  %and116 = and i8 %21, -33
  store i8 %and116, i8* %flags65, align 1, !tbaa !1
  br label %if.end118

if.end118:                                        ; preds = %if.end103, %if.then113
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(i8*, i8*) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

; Function Attrs: optsize
declare i8* @Perl_utf8_hop(i8*, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #2

; Function Attrs: optsize
declare void @Perl_repeatcpy(i8*, i8*, i32, i32) #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(%struct.sv*, %struct.sv*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{i64 0, i64 1, metadata !1, i64 1, i64 1, metadata !1, i64 2, i64 2, metadata !4, i64 4, i64 4, metadata !3, i64 8, i64 32, metadata !1, i64 40, i64 4, metadata !1}
