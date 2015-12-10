; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/eval.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@std_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 310, i32 -310, i32 4000, i32 -4000, i32 500, i32 -500, i32 900, i32 -900, i32 325, i32 -325, i32 0], align 16
@zh_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 4000, i32 -4000, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230, i32 0], align 16
@suicide_material = global [14 x i32] [i32 0, i32 15, i32 -15, i32 150, i32 -150, i32 500, i32 -500, i32 150, i32 -150, i32 50, i32 -50, i32 0, i32 0, i32 0], align 16
@losers_material = global [14 x i32] [i32 0, i32 80, i32 -80, i32 320, i32 -320, i32 1000, i32 -1000, i32 350, i32 -350, i32 400, i32 -400, i32 270, i32 -270, i32 0], align 16
@material = global [14 x i32] zeroinitializer, align 16
@Xfile = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xrank = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagl = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagr = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@pcsqbishop = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 25, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@upscale = constant [64 x i32] [i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117], align 16
@pre_p_tropism = global [9 x i32] [i32 9999, i32 40, i32 20, i32 10, i32 3, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_r_tropism = global [9 x i32] [i32 9999, i32 50, i32 40, i32 15, i32 5, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_n_tropism = global [9 x i32] [i32 9999, i32 50, i32 70, i32 35, i32 10, i32 2, i32 1, i32 0, i32 9999], align 16
@pre_q_tropism = global [9 x i32] [i32 9999, i32 100, i32 60, i32 20, i32 5, i32 2, i32 0, i32 0, i32 9999], align 16
@pre_b_tropism = global [9 x i32] [i32 9999, i32 50, i32 25, i32 15, i32 5, i32 2, i32 2, i32 2, i32 9999], align 16
@ksafety_scaled = global [15 x [9 x i32]] [[9 x i32] [i32 -5, i32 5, i32 10, i32 15, i32 50, i32 80, i32 150, i32 150, i32 150], [9 x i32] [i32 -5, i32 15, i32 20, i32 25, i32 70, i32 150, i32 200, i32 200, i32 200], [9 x i32] [i32 -5, i32 15, i32 30, i32 30, i32 100, i32 200, i32 300, i32 300, i32 300], [9 x i32] [i32 -10, i32 20, i32 40, i32 40, i32 100, i32 200, i32 300, i32 300, i32 400], [9 x i32] [i32 -10, i32 30, i32 50, i32 80, i32 150, i32 300, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 35, i32 60, i32 100, i32 200, i32 250, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 40, i32 70, i32 110, i32 210, i32 300, i32 500, i32 500, i32 600], [9 x i32] [i32 -10, i32 45, i32 75, i32 125, i32 215, i32 300, i32 500, i32 600, i32 700], [9 x i32] [i32 -10, i32 60, i32 90, i32 130, i32 240, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 95, i32 145, i32 260, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 100, i32 150, i32 270, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 110, i32 160, i32 280, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 70, i32 115, i32 165, i32 290, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 80, i32 120, i32 170, i32 300, i32 450, i32 700, i32 800, i32 900], [9 x i32] [i32 -20, i32 80, i32 125, i32 175, i32 310, i32 450, i32 700, i32 800, i32 900]], align 16
@rookdistance = external global [144 x [144 x i32]]
@distance = external global [144 x [144 x i32]]
@p_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@b_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@n_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@r_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@q_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@Variant = external global i32
@white_to_move = external global i32
@cfg_devscale = external global i32
@comp_color = external global i32
@white_hand_eval = external global i32
@black_hand_eval = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@board = external global [144 x i32]
@bking_loc = external global i32
@wking_loc = external global i32
@white_castled = external global i32
@moved = external global [144 x i32]
@black_castled = external global i32
@cfg_smarteval = external global i32
@cfg_attackeval = external global i32
@Material = common global i32 0, align 4

; Function Attrs: nounwind optsize ssp uwtable
define void @initialize_eval() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !8, metadata !88), !dbg !89
  br label %.preheader40, !dbg !90

.preheader40:                                     ; preds = %23, %0
  %indvars.iv51 = phi i64 [ 0, %0 ], [ %indvars.iv.next52, %23 ]
  %1 = trunc i64 %indvars.iv51 to i32, !dbg !92
  %2 = and i32 %1, 7, !dbg !92
  %3 = ashr i32 %1, 3, !dbg !98
  %4 = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv51, !dbg !99
  %5 = load i32* %4, align 4, !dbg !99, !tbaa !100
  %6 = sext i32 %5 to i64, !dbg !104
  br label %7, !dbg !105

; <label>:7                                       ; preds = %7, %.preheader40
  %indvars.iv48 = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next49, %7 ]
  %8 = trunc i64 %indvars.iv48 to i32, !dbg !106
  %9 = and i32 %8, 7, !dbg !106
  %10 = sub nsw i32 %2, %9, !dbg !107
  %ispos33 = icmp sgt i32 %10, -1, !dbg !108
  %neg34 = sub nsw i32 0, %10, !dbg !108
  %11 = select i1 %ispos33, i32 %10, i32 %neg34, !dbg !108
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !11, metadata !88), !dbg !109
  %12 = ashr i32 %8, 3, !dbg !110
  %13 = sub nsw i32 %3, %12, !dbg !111
  %ispos35 = icmp sgt i32 %13, -1, !dbg !112
  %neg36 = sub nsw i32 0, %13, !dbg !112
  %14 = select i1 %ispos35, i32 %13, i32 %neg36, !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !12, metadata !88), !dbg !113
  %15 = add nsw i32 %11, %14, !dbg !114
  %16 = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv48, !dbg !115
  %17 = load i32* %16, align 4, !dbg !115, !tbaa !100
  %18 = sext i32 %17 to i64, !dbg !104
  %19 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %6, i64 %18, !dbg !104
  store i32 %15, i32* %19, align 4, !dbg !116, !tbaa !100
  %20 = icmp sgt i32 %11, %14, !dbg !117
  %21 = select i1 %20, i32 %11, i32 %14, !dbg !118
  %22 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %6, i64 %18, !dbg !119
  store i32 %21, i32* %22, align 4, !dbg !120, !tbaa !100
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !105
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 64, !dbg !105
  br i1 %exitcond50, label %23, label %7, !dbg !105

; <label>:23                                      ; preds = %7
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !90
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 64, !dbg !90
  br i1 %exitcond53, label %.preheader, label %.preheader40, !dbg !90

.preheader:                                       ; preds = %23, %60
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %60 ], [ 0, %23 ]
  %24 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv45, !dbg !121
  %25 = load i32* %24, align 4, !dbg !121, !tbaa !100
  %26 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv45, !dbg !121
  %27 = load i32* %26, align 4, !dbg !121, !tbaa !100
  br label %28, !dbg !128

; <label>:28                                      ; preds = %28, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %28 ]
  %29 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv, !dbg !121
  %30 = load i32* %29, align 4, !dbg !121, !tbaa !100
  %31 = sub nsw i32 %25, %30, !dbg !121
  %ispos = icmp sgt i32 %31, -1, !dbg !121
  %neg = sub i32 0, %31, !dbg !121
  %32 = select i1 %ispos, i32 %31, i32 %neg, !dbg !121
  %33 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv, !dbg !121
  %34 = load i32* %33, align 4, !dbg !121, !tbaa !100
  %35 = sub nsw i32 %27, %34, !dbg !121
  %ispos5 = icmp sgt i32 %35, -1, !dbg !121
  %neg6 = sub i32 0, %35, !dbg !121
  %36 = select i1 %ispos5, i32 %35, i32 %neg6, !dbg !121
  %37 = icmp sgt i32 %32, %36, !dbg !121
  %. = select i1 %37, i32 %31, i32 %35, !dbg !121
  %ispos7 = icmp sgt i32 %., -1, !dbg !121
  %neg8 = sub i32 0, %., !dbg !121
  %38 = select i1 %ispos7, i32 %., i32 %neg8, !dbg !121
  %39 = sext i32 %38 to i64, !dbg !129
  %40 = getelementptr inbounds [9 x i32]* @pre_p_tropism, i64 0, i64 %39, !dbg !129
  %41 = load i32* %40, align 4, !dbg !129, !tbaa !100
  %42 = trunc i32 %41 to i8, !dbg !129
  %43 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %indvars.iv45, i64 %indvars.iv, !dbg !130
  store i8 %42, i8* %43, align 1, !dbg !131, !tbaa !132
  %44 = getelementptr inbounds [9 x i32]* @pre_b_tropism, i64 0, i64 %39, !dbg !133
  %45 = load i32* %44, align 4, !dbg !133, !tbaa !100
  %46 = trunc i32 %45 to i8, !dbg !133
  %47 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %indvars.iv45, i64 %indvars.iv, !dbg !134
  store i8 %46, i8* %47, align 1, !dbg !135, !tbaa !132
  %48 = getelementptr inbounds [9 x i32]* @pre_n_tropism, i64 0, i64 %39, !dbg !136
  %49 = load i32* %48, align 4, !dbg !136, !tbaa !100
  %50 = trunc i32 %49 to i8, !dbg !136
  %51 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %indvars.iv45, i64 %indvars.iv, !dbg !137
  store i8 %50, i8* %51, align 1, !dbg !138, !tbaa !132
  %52 = getelementptr inbounds [9 x i32]* @pre_r_tropism, i64 0, i64 %39, !dbg !139
  %53 = load i32* %52, align 4, !dbg !139, !tbaa !100
  %54 = trunc i32 %53 to i8, !dbg !139
  %55 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %indvars.iv45, i64 %indvars.iv, !dbg !140
  store i8 %54, i8* %55, align 1, !dbg !141, !tbaa !132
  %56 = getelementptr inbounds [9 x i32]* @pre_q_tropism, i64 0, i64 %39, !dbg !142
  %57 = load i32* %56, align 4, !dbg !142, !tbaa !100
  %58 = trunc i32 %57 to i8, !dbg !142
  %59 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %indvars.iv45, i64 %indvars.iv, !dbg !143
  store i8 %58, i8* %59, align 1, !dbg !144, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !128
  %exitcond = icmp eq i64 %indvars.iv.next, 144, !dbg !128
  br i1 %exitcond, label %60, label %28, !dbg !128

; <label>:60                                      ; preds = %28
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !145
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 144, !dbg !145
  br i1 %exitcond47, label %61, label %.preheader, !dbg !145

; <label>:61                                      ; preds = %60
  ret void, !dbg !146
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @eval(i32 %alpha, i32 %beta) #0 {
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %alpha, i64 0, metadata !17, metadata !88), !dbg !147
  tail call void @llvm.dbg.value(metadata i32 %beta, i64 0, metadata !18, metadata !88), !dbg !148
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 0, i32* %score, align 4, !dbg !149, !tbaa !100
  %1 = load i32* @Variant, align 4, !dbg !150, !tbaa !100
  switch i32 %1, label %8 [
    i32 2, label %2
    i32 3, label %4
    i32 4, label %6
  ], !dbg !152

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @std_eval(i32 %alpha, i32 %beta) #3, !dbg !153
  br label %792, !dbg !155

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @suicide_eval() #3, !dbg !156
  br label %792, !dbg !159

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @losers_eval() #3, !dbg !160
  br label %792, !dbg !163

; <label>:8                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !23, metadata !88), !dbg !164
  store i32 0, i32* %in_cache, align 4, !dbg !165, !tbaa !100
  tail call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  tail call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !23, metadata !88), !dbg !164
  call void @checkECache(i32* %score, i32* %in_cache) #3, !dbg !166
  call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !23, metadata !88), !dbg !164
  %9 = load i32* %in_cache, align 4, !dbg !167, !tbaa !100
  %10 = icmp eq i32 %9, 0, !dbg !167
  br i1 %10, label %16, label %11, !dbg !169

; <label>:11                                      ; preds = %8
  %12 = load i32* @white_to_move, align 4, !dbg !170, !tbaa !100
  %13 = icmp eq i32 %12, 1, !dbg !173
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %14 = load i32* %score, align 4, !dbg !174, !tbaa !100
  %15 = sub nsw i32 0, %14, !dbg !175
  %.57 = select i1 %13, i32 %14, i32 %15, !dbg !176
  ret i32 %.57, !dbg !176

; <label>:16                                      ; preds = %8
  %17 = load i32* @cfg_devscale, align 4, !dbg !177, !tbaa !100
  %18 = icmp eq i32 %17, 0, !dbg !177
  br i1 %18, label %.thread, label %19, !dbg !179

; <label>:19                                      ; preds = %16
  %20 = load i32* @white_to_move, align 4, !dbg !180, !tbaa !100
  %21 = load i32* @comp_color, align 4, !dbg !183, !tbaa !100
  %22 = icmp eq i32 %20, %21, !dbg !184
  br i1 %22, label %29, label %23, !dbg !185

; <label>:23                                      ; preds = %19
  %24 = load i32* @white_hand_eval, align 4, !dbg !186, !tbaa !100
  %25 = icmp slt i32 %24, 201, !dbg !189
  %26 = load i32* @Variant, align 4
  %27 = icmp ne i32 %26, 1, !dbg !190
  %or.cond = and i1 %25, %27, !dbg !191
  br i1 %or.cond, label %.thread, label %28, !dbg !191

; <label>:28                                      ; preds = %23
  %not. = icmp slt i32 %24, 700, !dbg !192
  %. = zext i1 %not. to i32, !dbg !192
  br label %.thread, !dbg !192

; <label>:29                                      ; preds = %19
  %30 = load i32* @black_hand_eval, align 4, !dbg !195, !tbaa !100
  %31 = icmp sgt i32 %30, -201, !dbg !199
  %32 = load i32* @Variant, align 4
  %33 = icmp ne i32 %32, 1, !dbg !200
  %or.cond3 = and i1 %31, %33, !dbg !201
  br i1 %or.cond3, label %.thread, label %34, !dbg !201

; <label>:34                                      ; preds = %29
  %not.60 = icmp sgt i32 %30, -700, !dbg !202
  %.54 = zext i1 %not.60 to i32, !dbg !202
  br label %.thread, !dbg !202

.thread:                                          ; preds = %23, %28, %16, %34, %29
  %wdev_dscale.1 = phi i32 [ 0, %29 ], [ 0, %34 ], [ 0, %16 ], [ %., %28 ], [ 2, %23 ]
  %bdev_dscale.0 = phi i32 [ 2, %29 ], [ %.54, %34 ], [ 0, %16 ], [ 0, %28 ], [ 0, %23 ]
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !20, metadata !88), !dbg !205
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !21, metadata !88), !dbg !206
  %35 = load i32* @piece_count, align 4, !dbg !207, !tbaa !100
  %36 = icmp slt i32 %35, 1, !dbg !210
  br i1 %36, label %._crit_edge63, label %.lr.ph, !dbg !211

._crit_edge63:                                    ; preds = %.thread
  %.pre = load i32* @wking_loc, align 4, !dbg !212, !tbaa !100
  %.pre64 = load i32* @bking_loc, align 4, !dbg !213, !tbaa !100
  br label %._crit_edge, !dbg !211

.lr.ph:                                           ; preds = %.thread
  %37 = load i32* @bking_loc, align 4, !dbg !214, !tbaa !100
  %38 = sext i32 %37 to i64, !dbg !217
  %39 = load i32* @wking_loc, align 4, !dbg !218, !tbaa !100
  %40 = sext i32 %39 to i64, !dbg !219
  br label %41, !dbg !211

; <label>:41                                      ; preds = %.lr.ph, %160
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %160 ]
  %a.061 = phi i32 [ 1, %.lr.ph ], [ %a.1, %160 ]
  %42 = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !220
  %43 = load i32* %42, align 4, !dbg !220, !tbaa !100
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !19, metadata !88), !dbg !221
  %44 = icmp eq i32 %43, 0, !dbg !222
  br i1 %44, label %160, label %45, !dbg !224

; <label>:45                                      ; preds = %41
  %46 = add nsw i32 %a.061, 1, !dbg !225
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !20, metadata !88), !dbg !205
  %47 = sext i32 %43 to i64, !dbg !226
  %48 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %47, !dbg !226
  %49 = load i32* %48, align 4, !dbg !226, !tbaa !100
  switch i32 %49, label %160 [
    i32 1, label %50
    i32 2, label %61
    i32 7, label %72
    i32 8, label %83
    i32 11, label %94
    i32 12, label %105
    i32 3, label %116
    i32 4, label %127
    i32 9, label %138
    i32 10, label %149
  ], !dbg !227

; <label>:50                                      ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %51 = load i32* %score, align 4, !dbg !228, !tbaa !100
  %52 = add nsw i32 %51, 100, !dbg !228
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !22, metadata !88), !dbg !149
  %53 = getelementptr inbounds [144 x i32]* @white_pawn, i64 0, i64 %47, !dbg !229
  %54 = load i32* %53, align 4, !dbg !229, !tbaa !100
  %55 = ashr i32 %54, %wdev_dscale.1, !dbg !230
  %56 = add nsw i32 %55, %52, !dbg !231
  call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !22, metadata !88), !dbg !149
  %57 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %47, i64 %38, !dbg !217
  %58 = load i8* %57, align 1, !dbg !217, !tbaa !132
  %59 = zext i8 %58 to i32, !dbg !217
  %60 = add nsw i32 %59, %56, !dbg !232
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %60, i32* %score, align 4, !dbg !232, !tbaa !100
  br label %160, !dbg !233

; <label>:61                                      ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %62 = load i32* %score, align 4, !dbg !234, !tbaa !100
  %63 = add nsw i32 %62, -100, !dbg !234
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !22, metadata !88), !dbg !149
  %64 = getelementptr inbounds [144 x i32]* @black_pawn, i64 0, i64 %47, !dbg !235
  %65 = load i32* %64, align 4, !dbg !235, !tbaa !100
  %66 = ashr i32 %65, %bdev_dscale.0, !dbg !236
  %67 = sub nsw i32 %63, %66, !dbg !237
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !22, metadata !88), !dbg !149
  %68 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %47, i64 %40, !dbg !219
  %69 = load i8* %68, align 1, !dbg !219, !tbaa !132
  %70 = zext i8 %69 to i32, !dbg !219
  %71 = sub nsw i32 %67, %70, !dbg !238
  call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %71, i32* %score, align 4, !dbg !238, !tbaa !100
  br label %160, !dbg !239

; <label>:72                                      ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %73 = load i32* %score, align 4, !dbg !240, !tbaa !100
  %74 = add nsw i32 %73, 250, !dbg !240
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !22, metadata !88), !dbg !149
  %75 = getelementptr inbounds [144 x i32]* @white_rook, i64 0, i64 %47, !dbg !241
  %76 = load i32* %75, align 4, !dbg !241, !tbaa !100
  %77 = ashr i32 %76, %wdev_dscale.1, !dbg !242
  %78 = add nsw i32 %77, %74, !dbg !243
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !22, metadata !88), !dbg !149
  %79 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %47, i64 %38, !dbg !244
  %80 = load i8* %79, align 1, !dbg !244, !tbaa !132
  %81 = zext i8 %80 to i32, !dbg !244
  %82 = add nsw i32 %81, %78, !dbg !245
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %82, i32* %score, align 4, !dbg !245, !tbaa !100
  br label %160, !dbg !246

; <label>:83                                      ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %84 = load i32* %score, align 4, !dbg !247, !tbaa !100
  %85 = add nsw i32 %84, -250, !dbg !247
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !22, metadata !88), !dbg !149
  %86 = getelementptr inbounds [144 x i32]* @black_rook, i64 0, i64 %47, !dbg !248
  %87 = load i32* %86, align 4, !dbg !248, !tbaa !100
  %88 = ashr i32 %87, %bdev_dscale.0, !dbg !249
  %89 = sub nsw i32 %85, %88, !dbg !250
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !22, metadata !88), !dbg !149
  %90 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %47, i64 %40, !dbg !251
  %91 = load i8* %90, align 1, !dbg !251, !tbaa !132
  %92 = zext i8 %91 to i32, !dbg !251
  %93 = sub nsw i32 %89, %92, !dbg !252
  call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %93, i32* %score, align 4, !dbg !252, !tbaa !100
  br label %160, !dbg !253

; <label>:94                                      ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %95 = load i32* %score, align 4, !dbg !254, !tbaa !100
  %96 = add nsw i32 %95, 230, !dbg !254
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !22, metadata !88), !dbg !149
  %97 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %47, !dbg !255
  %98 = load i32* %97, align 4, !dbg !255, !tbaa !100
  %99 = ashr i32 %98, %wdev_dscale.1, !dbg !256
  %100 = add nsw i32 %99, %96, !dbg !257
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !22, metadata !88), !dbg !149
  %101 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %47, i64 %38, !dbg !258
  %102 = load i8* %101, align 1, !dbg !258, !tbaa !132
  %103 = zext i8 %102 to i32, !dbg !258
  %104 = add nsw i32 %103, %100, !dbg !259
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %104, i32* %score, align 4, !dbg !259, !tbaa !100
  br label %160, !dbg !260

; <label>:105                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %106 = load i32* %score, align 4, !dbg !261, !tbaa !100
  %107 = add nsw i32 %106, -230, !dbg !261
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !22, metadata !88), !dbg !149
  %108 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %47, !dbg !262
  %109 = load i32* %108, align 4, !dbg !262, !tbaa !100
  %110 = ashr i32 %109, %bdev_dscale.0, !dbg !263
  %111 = sub nsw i32 %107, %110, !dbg !264
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !22, metadata !88), !dbg !149
  %112 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %47, i64 %40, !dbg !265
  %113 = load i8* %112, align 1, !dbg !265, !tbaa !132
  %114 = zext i8 %113 to i32, !dbg !265
  %115 = sub nsw i32 %111, %114, !dbg !266
  call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %115, i32* %score, align 4, !dbg !266, !tbaa !100
  br label %160, !dbg !267

; <label>:116                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %117 = load i32* %score, align 4, !dbg !268, !tbaa !100
  %118 = add nsw i32 %117, 210, !dbg !268
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !22, metadata !88), !dbg !149
  %119 = getelementptr inbounds [144 x i32]* @white_knight, i64 0, i64 %47, !dbg !269
  %120 = load i32* %119, align 4, !dbg !269, !tbaa !100
  %121 = ashr i32 %120, %wdev_dscale.1, !dbg !270
  %122 = add nsw i32 %121, %118, !dbg !271
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !22, metadata !88), !dbg !149
  %123 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %47, i64 %38, !dbg !272
  %124 = load i8* %123, align 1, !dbg !272, !tbaa !132
  %125 = zext i8 %124 to i32, !dbg !272
  %126 = add nsw i32 %125, %122, !dbg !273
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %126, i32* %score, align 4, !dbg !273, !tbaa !100
  br label %160, !dbg !274

; <label>:127                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %128 = load i32* %score, align 4, !dbg !275, !tbaa !100
  %129 = add nsw i32 %128, -210, !dbg !275
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !22, metadata !88), !dbg !149
  %130 = getelementptr inbounds [144 x i32]* @black_knight, i64 0, i64 %47, !dbg !276
  %131 = load i32* %130, align 4, !dbg !276, !tbaa !100
  %132 = ashr i32 %131, %bdev_dscale.0, !dbg !277
  %133 = sub nsw i32 %129, %132, !dbg !278
  call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !22, metadata !88), !dbg !149
  %134 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %47, i64 %40, !dbg !279
  %135 = load i8* %134, align 1, !dbg !279, !tbaa !132
  %136 = zext i8 %135 to i32, !dbg !279
  %137 = sub nsw i32 %133, %136, !dbg !280
  call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %137, i32* %score, align 4, !dbg !280, !tbaa !100
  br label %160, !dbg !281

; <label>:138                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %139 = load i32* %score, align 4, !dbg !282, !tbaa !100
  %140 = add nsw i32 %139, 450, !dbg !282
  call void @llvm.dbg.value(metadata i32 %140, i64 0, metadata !22, metadata !88), !dbg !149
  %141 = getelementptr inbounds [144 x i32]* @white_queen, i64 0, i64 %47, !dbg !283
  %142 = load i32* %141, align 4, !dbg !283, !tbaa !100
  %143 = ashr i32 %142, %wdev_dscale.1, !dbg !284
  %144 = add nsw i32 %143, %140, !dbg !285
  call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !22, metadata !88), !dbg !149
  %145 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %47, i64 %38, !dbg !286
  %146 = load i8* %145, align 1, !dbg !286, !tbaa !132
  %147 = zext i8 %146 to i32, !dbg !286
  %148 = add nsw i32 %147, %144, !dbg !287
  call void @llvm.dbg.value(metadata i32 %148, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %148, i32* %score, align 4, !dbg !287, !tbaa !100
  br label %160, !dbg !288

; <label>:149                                     ; preds = %45
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %150 = load i32* %score, align 4, !dbg !289, !tbaa !100
  %151 = add nsw i32 %150, -450, !dbg !289
  call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !22, metadata !88), !dbg !149
  %152 = getelementptr inbounds [144 x i32]* @black_queen, i64 0, i64 %47, !dbg !290
  %153 = load i32* %152, align 4, !dbg !290, !tbaa !100
  %154 = ashr i32 %153, %bdev_dscale.0, !dbg !291
  %155 = sub nsw i32 %151, %154, !dbg !292
  call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !22, metadata !88), !dbg !149
  %156 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %47, i64 %40, !dbg !293
  %157 = load i8* %156, align 1, !dbg !293, !tbaa !132
  %158 = zext i8 %157 to i32, !dbg !293
  %159 = sub nsw i32 %155, %158, !dbg !294
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %159, i32* %score, align 4, !dbg !294, !tbaa !100
  br label %160, !dbg !295

; <label>:160                                     ; preds = %41, %50, %61, %72, %83, %94, %105, %116, %127, %138, %149, %45
  %a.1 = phi i32 [ %46, %45 ], [ %46, %149 ], [ %46, %138 ], [ %46, %127 ], [ %46, %116 ], [ %46, %105 ], [ %46, %94 ], [ %46, %83 ], [ %46, %72 ], [ %46, %61 ], [ %46, %50 ], [ %a.061, %41 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !211
  %161 = icmp sgt i32 %a.1, %35, !dbg !210
  br i1 %161, label %._crit_edge, label %41, !dbg !211

._crit_edge:                                      ; preds = %160, %._crit_edge63
  %162 = phi i32 [ %.pre64, %._crit_edge63 ], [ %37, %160 ]
  %163 = phi i32 [ %.pre, %._crit_edge63 ], [ %39, %160 ]
  %164 = sext i32 %163 to i64, !dbg !296
  %165 = getelementptr inbounds [144 x i32]* @white_king, i64 0, i64 %164, !dbg !296
  %166 = load i32* %165, align 4, !dbg !296, !tbaa !100
  %167 = ashr i32 %166, %bdev_dscale.0, !dbg !297
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %168 = load i32* %score, align 4, !dbg !298, !tbaa !100
  %169 = add nsw i32 %168, %167, !dbg !298
  call void @llvm.dbg.value(metadata i32 %169, i64 0, metadata !22, metadata !88), !dbg !149
  %170 = sext i32 %162 to i64, !dbg !299
  %171 = getelementptr inbounds [144 x i32]* @black_king, i64 0, i64 %170, !dbg !299
  %172 = load i32* %171, align 4, !dbg !299, !tbaa !100
  %173 = ashr i32 %172, %wdev_dscale.1, !dbg !300
  %174 = sub nsw i32 %169, %173, !dbg !301
  call void @llvm.dbg.value(metadata i32 %174, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %174, i32* %score, align 4, !dbg !301, !tbaa !100
  %175 = load i32* @white_castled, align 4, !dbg !302, !tbaa !100
  %176 = icmp eq i32 %175, 0, !dbg !302
  %177 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4
  %178 = icmp ne i32 %177, 0, !dbg !304
  %or.cond5 = and i1 %176, %178, !dbg !305
  br i1 %or.cond5, label %179, label %181, !dbg !305

; <label>:179                                     ; preds = %._crit_edge
  %180 = add nsw i32 %174, -30, !dbg !306
  call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %180, i32* %score, align 4, !dbg !306, !tbaa !100
  br label %181, !dbg !308

; <label>:181                                     ; preds = %._crit_edge, %179
  %182 = phi i32 [ %174, %._crit_edge ], [ %180, %179 ]
  %183 = load i32* @black_castled, align 4, !dbg !309, !tbaa !100
  %184 = icmp eq i32 %183, 0, !dbg !309
  %185 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4
  %186 = icmp ne i32 %185, 0, !dbg !311
  %or.cond7 = and i1 %184, %186, !dbg !312
  br i1 %or.cond7, label %187, label %189, !dbg !312

; <label>:187                                     ; preds = %181
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %188 = add nsw i32 %182, 30, !dbg !313
  call void @llvm.dbg.value(metadata i32 %188, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %188, i32* %score, align 4, !dbg !313, !tbaa !100
  br label %189, !dbg !315

; <label>:189                                     ; preds = %181, %187
  %190 = phi i32 [ %182, %181 ], [ %188, %187 ]
  %191 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !dbg !316, !tbaa !100
  %192 = icmp eq i32 %191, 0, !dbg !316
  %193 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4
  %194 = icmp ne i32 %193, 13, !dbg !318
  %or.cond9 = and i1 %192, %194, !dbg !319
  br i1 %or.cond9, label %195, label %197, !dbg !319

; <label>:195                                     ; preds = %189
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %196 = add nsw i32 %190, -15, !dbg !320
  call void @llvm.dbg.value(metadata i32 %196, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %196, i32* %score, align 4, !dbg !320, !tbaa !100
  br label %197, !dbg !321

; <label>:197                                     ; preds = %189, %195
  %198 = phi i32 [ %190, %189 ], [ %196, %195 ]
  %199 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !dbg !322, !tbaa !100
  %200 = icmp eq i32 %199, 0, !dbg !322
  %201 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4
  %202 = icmp ne i32 %201, 13, !dbg !324
  %or.cond11 = and i1 %200, %202, !dbg !325
  br i1 %or.cond11, label %203, label %205, !dbg !325

; <label>:203                                     ; preds = %197
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %204 = add nsw i32 %198, -15, !dbg !326
  call void @llvm.dbg.value(metadata i32 %204, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %204, i32* %score, align 4, !dbg !326, !tbaa !100
  br label %205, !dbg !327

; <label>:205                                     ; preds = %197, %203
  %206 = phi i32 [ %198, %197 ], [ %204, %203 ]
  %207 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !dbg !328, !tbaa !100
  %208 = icmp eq i32 %207, 0, !dbg !328
  %209 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4
  %210 = icmp ne i32 %209, 13, !dbg !330
  %or.cond13 = and i1 %208, %210, !dbg !331
  br i1 %or.cond13, label %211, label %213, !dbg !331

; <label>:211                                     ; preds = %205
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %212 = add nsw i32 %206, 15, !dbg !332
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %212, i32* %score, align 4, !dbg !332, !tbaa !100
  br label %213, !dbg !333

; <label>:213                                     ; preds = %205, %211
  %214 = phi i32 [ %206, %205 ], [ %212, %211 ]
  %215 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !dbg !334, !tbaa !100
  %216 = icmp eq i32 %215, 0, !dbg !334
  %217 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4
  %218 = icmp ne i32 %217, 13, !dbg !336
  %or.cond15 = and i1 %216, %218, !dbg !337
  br i1 %or.cond15, label %219, label %221, !dbg !337

; <label>:219                                     ; preds = %213
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %220 = add nsw i32 %214, 15, !dbg !338
  call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %220, i32* %score, align 4, !dbg !338, !tbaa !100
  br label %221, !dbg !339

; <label>:221                                     ; preds = %213, %219
  %222 = phi i32 [ %214, %213 ], [ %220, %219 ]
  %223 = load i32* @cfg_smarteval, align 4, !dbg !340, !tbaa !100
  %224 = icmp eq i32 %223, 0, !dbg !340
  br i1 %224, label %581, label %225, !dbg !342

; <label>:225                                     ; preds = %221
  %.off = add i32 %163, -29, !dbg !343
  %.cmp = icmp ugt i32 %.off, 1, !dbg !343
  br i1 %.cmp, label %226, label %280, !dbg !343

; <label>:226                                     ; preds = %225
  %227 = add nsw i32 %163, 11, !dbg !346
  %228 = sext i32 %227 to i64, !dbg !349
  %229 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %228, !dbg !349
  %230 = load i32* %229, align 4, !dbg !349, !tbaa !100
  %231 = icmp eq i32 %230, 1, !dbg !350
  br i1 %231, label %234, label %232, !dbg !351

; <label>:232                                     ; preds = %226
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %233 = add nsw i32 %222, -24, !dbg !352
  call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %233, i32* %score, align 4, !dbg !352, !tbaa !100
  br label %234, !dbg !353

; <label>:234                                     ; preds = %226, %232
  %235 = phi i32 [ %222, %226 ], [ %233, %232 ]
  %236 = add nsw i32 %163, 12, !dbg !354
  %237 = sext i32 %236 to i64, !dbg !356
  %238 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %237, !dbg !356
  %239 = load i32* %238, align 4, !dbg !356, !tbaa !100
  %240 = icmp eq i32 %239, 1, !dbg !357
  br i1 %240, label %243, label %241, !dbg !358

; <label>:241                                     ; preds = %234
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %242 = add nsw i32 %235, -35, !dbg !359
  call void @llvm.dbg.value(metadata i32 %242, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %242, i32* %score, align 4, !dbg !359, !tbaa !100
  br label %243, !dbg !360

; <label>:243                                     ; preds = %234, %241
  %244 = phi i32 [ %235, %234 ], [ %242, %241 ]
  %245 = add nsw i32 %163, 13, !dbg !361
  %246 = sext i32 %245 to i64, !dbg !363
  %247 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %246, !dbg !363
  %248 = load i32* %247, align 4, !dbg !363, !tbaa !100
  %249 = icmp eq i32 %248, 1, !dbg !364
  br i1 %249, label %252, label %250, !dbg !365

; <label>:250                                     ; preds = %243
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %251 = add nsw i32 %244, -24, !dbg !366
  call void @llvm.dbg.value(metadata i32 %251, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %251, i32* %score, align 4, !dbg !366, !tbaa !100
  br label %252, !dbg !367

; <label>:252                                     ; preds = %243, %250
  %253 = phi i32 [ %244, %243 ], [ %251, %250 ]
  br i1 %176, label %280, label %254, !dbg !368

; <label>:254                                     ; preds = %252
  %255 = add nsw i32 %162, -25, !dbg !369
  %256 = sext i32 %255 to i64, !dbg !373
  %257 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %256, !dbg !373
  %258 = load i32* %257, align 4, !dbg !373, !tbaa !100
  %259 = icmp eq i32 %258, 2, !dbg !374
  br i1 %259, label %260, label %262, !dbg !375

; <label>:260                                     ; preds = %254
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %261 = add nsw i32 %253, 11, !dbg !376
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %261, i32* %score, align 4, !dbg !376, !tbaa !100
  br label %262, !dbg !377

; <label>:262                                     ; preds = %260, %254
  %263 = phi i32 [ %261, %260 ], [ %253, %254 ]
  %264 = add nsw i32 %162, -24, !dbg !378
  %265 = sext i32 %264 to i64, !dbg !380
  %266 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %265, !dbg !380
  %267 = load i32* %266, align 4, !dbg !380, !tbaa !100
  %268 = icmp eq i32 %267, 2, !dbg !381
  br i1 %268, label %269, label %271, !dbg !382

; <label>:269                                     ; preds = %262
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %270 = add nsw i32 %263, 15, !dbg !383
  call void @llvm.dbg.value(metadata i32 %270, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %270, i32* %score, align 4, !dbg !383, !tbaa !100
  br label %271, !dbg !384

; <label>:271                                     ; preds = %269, %262
  %272 = phi i32 [ %270, %269 ], [ %263, %262 ]
  %273 = add nsw i32 %162, -23, !dbg !385
  %274 = sext i32 %273 to i64, !dbg !387
  %275 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %274, !dbg !387
  %276 = load i32* %275, align 4, !dbg !387, !tbaa !100
  %277 = icmp eq i32 %276, 2, !dbg !388
  br i1 %277, label %278, label %280, !dbg !389

; <label>:278                                     ; preds = %271
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %279 = add nsw i32 %272, 11, !dbg !390
  call void @llvm.dbg.value(metadata i32 %279, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %279, i32* %score, align 4, !dbg !390, !tbaa !100
  br label %280, !dbg !391

; <label>:280                                     ; preds = %252, %278, %271, %225
  %281 = phi i32 [ %253, %252 ], [ %279, %278 ], [ %272, %271 ], [ %222, %225 ]
  %.off48 = add i32 %162, -113, !dbg !392
  %.cmp49 = icmp ugt i32 %.off48, 1, !dbg !392
  br i1 %.cmp49, label %282, label %336, !dbg !392

; <label>:282                                     ; preds = %280
  %283 = add nsw i32 %162, -13, !dbg !394
  %284 = sext i32 %283 to i64, !dbg !397
  %285 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %284, !dbg !397
  %286 = load i32* %285, align 4, !dbg !397, !tbaa !100
  %287 = icmp eq i32 %286, 2, !dbg !398
  br i1 %287, label %290, label %288, !dbg !399

; <label>:288                                     ; preds = %282
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %289 = add nsw i32 %281, 24, !dbg !400
  call void @llvm.dbg.value(metadata i32 %289, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %289, i32* %score, align 4, !dbg !400, !tbaa !100
  br label %290, !dbg !401

; <label>:290                                     ; preds = %282, %288
  %291 = phi i32 [ %281, %282 ], [ %289, %288 ]
  %292 = add nsw i32 %162, -12, !dbg !402
  %293 = sext i32 %292 to i64, !dbg !404
  %294 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %293, !dbg !404
  %295 = load i32* %294, align 4, !dbg !404, !tbaa !100
  %296 = icmp eq i32 %295, 2, !dbg !405
  br i1 %296, label %299, label %297, !dbg !406

; <label>:297                                     ; preds = %290
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %298 = add nsw i32 %291, 35, !dbg !407
  call void @llvm.dbg.value(metadata i32 %298, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %298, i32* %score, align 4, !dbg !407, !tbaa !100
  br label %299, !dbg !408

; <label>:299                                     ; preds = %290, %297
  %300 = phi i32 [ %291, %290 ], [ %298, %297 ]
  %301 = add nsw i32 %162, -11, !dbg !409
  %302 = sext i32 %301 to i64, !dbg !411
  %303 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %302, !dbg !411
  %304 = load i32* %303, align 4, !dbg !411, !tbaa !100
  %305 = icmp eq i32 %304, 2, !dbg !412
  br i1 %305, label %308, label %306, !dbg !413

; <label>:306                                     ; preds = %299
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %307 = add nsw i32 %300, 24, !dbg !414
  call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %307, i32* %score, align 4, !dbg !414, !tbaa !100
  br label %308, !dbg !415

; <label>:308                                     ; preds = %299, %306
  %309 = phi i32 [ %300, %299 ], [ %307, %306 ]
  br i1 %184, label %336, label %310, !dbg !416

; <label>:310                                     ; preds = %308
  %311 = add nsw i32 %162, -25, !dbg !417
  %312 = sext i32 %311 to i64, !dbg !421
  %313 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %312, !dbg !421
  %314 = load i32* %313, align 4, !dbg !421, !tbaa !100
  %315 = icmp eq i32 %314, 2, !dbg !422
  br i1 %315, label %316, label %318, !dbg !423

; <label>:316                                     ; preds = %310
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %317 = add nsw i32 %309, -11, !dbg !424
  call void @llvm.dbg.value(metadata i32 %317, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %317, i32* %score, align 4, !dbg !424, !tbaa !100
  br label %318, !dbg !425

; <label>:318                                     ; preds = %316, %310
  %319 = phi i32 [ %317, %316 ], [ %309, %310 ]
  %320 = add nsw i32 %162, -24, !dbg !426
  %321 = sext i32 %320 to i64, !dbg !428
  %322 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %321, !dbg !428
  %323 = load i32* %322, align 4, !dbg !428, !tbaa !100
  %324 = icmp eq i32 %323, 2, !dbg !429
  br i1 %324, label %325, label %327, !dbg !430

; <label>:325                                     ; preds = %318
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %326 = add nsw i32 %319, -15, !dbg !431
  call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %326, i32* %score, align 4, !dbg !431, !tbaa !100
  br label %327, !dbg !432

; <label>:327                                     ; preds = %325, %318
  %328 = phi i32 [ %326, %325 ], [ %319, %318 ]
  %329 = add nsw i32 %162, -23, !dbg !433
  %330 = sext i32 %329 to i64, !dbg !435
  %331 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %330, !dbg !435
  %332 = load i32* %331, align 4, !dbg !435, !tbaa !100
  %333 = icmp eq i32 %332, 2, !dbg !436
  br i1 %333, label %334, label %336, !dbg !437

; <label>:334                                     ; preds = %327
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %335 = add nsw i32 %328, -11, !dbg !438
  call void @llvm.dbg.value(metadata i32 %335, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %335, i32* %score, align 4, !dbg !438, !tbaa !100
  br label %336, !dbg !439

; <label>:336                                     ; preds = %308, %334, %327, %280
  %337 = phi i32 [ %309, %308 ], [ %335, %334 ], [ %328, %327 ], [ %281, %280 ]
  br i1 %200, label %357, label %338, !dbg !440

; <label>:338                                     ; preds = %336
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %339 = add nsw i32 %337, 30, !dbg !441
  call void @llvm.dbg.value(metadata i32 %339, i64 0, metadata !22, metadata !88), !dbg !149
  %340 = add nsw i32 %337, 55, !dbg !444
  call void @llvm.dbg.value(metadata i32 %340, i64 0, metadata !22, metadata !88), !dbg !149
  %.87 = select i1 %192, i32 %339, i32 %340, !dbg !446
  %.88 = select i1 %192, i32 %339, i32 %340, !dbg !446
  store i32 %.87, i32* %score, align 4, !dbg !441, !tbaa !100
  %341 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 32), align 4, !dbg !447, !tbaa !100
  %342 = icmp eq i32 %341, 0, !dbg !447
  br i1 %342, label %345, label %343, !dbg !449

; <label>:343                                     ; preds = %338
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %344 = add nsw i32 %.88, 20, !dbg !450
  call void @llvm.dbg.value(metadata i32 %344, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %344, i32* %score, align 4, !dbg !450, !tbaa !100
  br label %345, !dbg !451

; <label>:345                                     ; preds = %338, %343
  %346 = phi i32 [ %.88, %338 ], [ %344, %343 ]
  %347 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 27), align 4, !dbg !452, !tbaa !100
  %348 = icmp eq i32 %347, 0, !dbg !452
  br i1 %348, label %351, label %349, !dbg !454

; <label>:349                                     ; preds = %345
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %350 = add nsw i32 %346, 15, !dbg !455
  call void @llvm.dbg.value(metadata i32 %350, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %350, i32* %score, align 4, !dbg !455, !tbaa !100
  br label %351, !dbg !456

; <label>:351                                     ; preds = %345, %349
  %352 = phi i32 [ %346, %345 ], [ %350, %349 ]
  %353 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 28), align 4, !dbg !457, !tbaa !100
  %354 = icmp eq i32 %353, 0, !dbg !457
  br i1 %354, label %357, label %355, !dbg !459

; <label>:355                                     ; preds = %351
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %356 = add nsw i32 %352, 10, !dbg !460
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %356, i32* %score, align 4, !dbg !460, !tbaa !100
  br label %357, !dbg !461

; <label>:357                                     ; preds = %351, %336, %355
  %358 = phi i32 [ %352, %351 ], [ %337, %336 ], [ %356, %355 ]
  br i1 %216, label %378, label %359, !dbg !462

; <label>:359                                     ; preds = %357
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %360 = add nsw i32 %358, -30, !dbg !463
  call void @llvm.dbg.value(metadata i32 %360, i64 0, metadata !22, metadata !88), !dbg !149
  %361 = add nsw i32 %358, -55, !dbg !466
  call void @llvm.dbg.value(metadata i32 %361, i64 0, metadata !22, metadata !88), !dbg !149
  %.89 = select i1 %208, i32 %360, i32 %361, !dbg !468
  %.90 = select i1 %208, i32 %360, i32 %361, !dbg !468
  store i32 %.89, i32* %score, align 4, !dbg !463, !tbaa !100
  %362 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 116), align 4, !dbg !469, !tbaa !100
  %363 = icmp eq i32 %362, 0, !dbg !469
  br i1 %363, label %366, label %364, !dbg !471

; <label>:364                                     ; preds = %359
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %365 = add nsw i32 %.90, -20, !dbg !472
  call void @llvm.dbg.value(metadata i32 %365, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %365, i32* %score, align 4, !dbg !472, !tbaa !100
  br label %366, !dbg !473

; <label>:366                                     ; preds = %359, %364
  %367 = phi i32 [ %.90, %359 ], [ %365, %364 ]
  %368 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 111), align 4, !dbg !474, !tbaa !100
  %369 = icmp eq i32 %368, 0, !dbg !474
  br i1 %369, label %372, label %370, !dbg !476

; <label>:370                                     ; preds = %366
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %371 = add nsw i32 %367, -15, !dbg !477
  call void @llvm.dbg.value(metadata i32 %371, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %371, i32* %score, align 4, !dbg !477, !tbaa !100
  br label %372, !dbg !478

; <label>:372                                     ; preds = %366, %370
  %373 = phi i32 [ %367, %366 ], [ %371, %370 ]
  %374 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 112), align 4, !dbg !479, !tbaa !100
  %375 = icmp eq i32 %374, 0, !dbg !479
  br i1 %375, label %378, label %376, !dbg !481

; <label>:376                                     ; preds = %372
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %377 = add nsw i32 %373, -10, !dbg !482
  call void @llvm.dbg.value(metadata i32 %377, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %377, i32* %score, align 4, !dbg !482, !tbaa !100
  br label %378, !dbg !483

; <label>:378                                     ; preds = %372, %357, %376
  %379 = phi i32 [ %373, %372 ], [ %358, %357 ], [ %377, %376 ]
  %380 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !dbg !484, !tbaa !100
  %381 = icmp eq i32 %380, 1, !dbg !486
  br i1 %381, label %389, label %382, !dbg !487

; <label>:382                                     ; preds = %378
  %383 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 55), align 4, !dbg !488, !tbaa !100
  %384 = icmp eq i32 %383, 2, !dbg !489
  %385 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 66), align 4
  %386 = icmp eq i32 %385, 2, !dbg !490
  %or.cond21 = or i1 %384, %386, !dbg !491
  br i1 %or.cond21, label %387, label %389, !dbg !491

; <label>:387                                     ; preds = %382
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %388 = add nsw i32 %379, -30, !dbg !492
  call void @llvm.dbg.value(metadata i32 %388, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %388, i32* %score, align 4, !dbg !492, !tbaa !100
  br label %389, !dbg !493

; <label>:389                                     ; preds = %378, %382, %387
  %390 = phi i32 [ %379, %378 ], [ %379, %382 ], [ %388, %387 ]
  %391 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !dbg !494, !tbaa !100
  %392 = icmp eq i32 %391, 2, !dbg !496
  br i1 %392, label %400, label %393, !dbg !497

; <label>:393                                     ; preds = %389
  %394 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 91), align 4, !dbg !498, !tbaa !100
  %395 = icmp eq i32 %394, 1, !dbg !499
  %396 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 78), align 4
  %397 = icmp eq i32 %396, 1, !dbg !500
  %or.cond23 = or i1 %395, %397, !dbg !501
  br i1 %or.cond23, label %398, label %400, !dbg !501

; <label>:398                                     ; preds = %393
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %399 = add nsw i32 %390, 30, !dbg !502
  call void @llvm.dbg.value(metadata i32 %399, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %399, i32* %score, align 4, !dbg !502, !tbaa !100
  br label %400, !dbg !503

; <label>:400                                     ; preds = %389, %393, %398
  %401 = phi i32 [ %390, %389 ], [ %390, %393 ], [ %399, %398 ]
  %402 = add nsw i32 %163, 12, !dbg !504
  %403 = sext i32 %402 to i64, !dbg !506
  %404 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %403, !dbg !506
  %405 = load i32* %404, align 4, !dbg !506, !tbaa !100
  switch i32 %405, label %414 [
    i32 2, label %406
    i32 12, label %406
  ], !dbg !507

; <label>:406                                     ; preds = %400, %400
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %407 = add nsw i32 %401, -35, !dbg !508
  call void @llvm.dbg.value(metadata i32 %407, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %407, i32* %score, align 4, !dbg !508, !tbaa !100
  %408 = call i32 @is_attacked(i32 %402, i32 0) #3, !dbg !510
  %409 = icmp eq i32 %408, 0, !dbg !510
  br i1 %409, label %414, label %410, !dbg !512

; <label>:410                                     ; preds = %406
  %411 = lshr i32 150, %bdev_dscale.0, !dbg !513
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %412 = load i32* %score, align 4, !dbg !514, !tbaa !100
  %413 = sub nsw i32 %412, %411, !dbg !514
  call void @llvm.dbg.value(metadata i32 %413, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %413, i32* %score, align 4, !dbg !514, !tbaa !100
  br label %414, !dbg !515

; <label>:414                                     ; preds = %400, %406, %410
  %415 = load i32* @bking_loc, align 4, !dbg !516, !tbaa !100
  %416 = add nsw i32 %415, -12, !dbg !518
  %417 = sext i32 %416 to i64, !dbg !519
  %418 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %417, !dbg !519
  %419 = load i32* %418, align 4, !dbg !519, !tbaa !100
  switch i32 %419, label %429 [
    i32 1, label %420
    i32 11, label %420
  ], !dbg !520

; <label>:420                                     ; preds = %414, %414
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %421 = load i32* %score, align 4, !dbg !521, !tbaa !100
  %422 = add nsw i32 %421, 35, !dbg !521
  call void @llvm.dbg.value(metadata i32 %422, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %422, i32* %score, align 4, !dbg !521, !tbaa !100
  %423 = call i32 @is_attacked(i32 %416, i32 1) #3, !dbg !523
  %424 = icmp eq i32 %423, 0, !dbg !523
  br i1 %424, label %429, label %425, !dbg !525

; <label>:425                                     ; preds = %420
  %426 = lshr i32 150, %wdev_dscale.1, !dbg !526
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %427 = load i32* %score, align 4, !dbg !527, !tbaa !100
  %428 = add nsw i32 %427, %426, !dbg !527
  call void @llvm.dbg.value(metadata i32 %428, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %428, i32* %score, align 4, !dbg !527, !tbaa !100
  br label %429, !dbg !528

; <label>:429                                     ; preds = %414, %420, %425
  %430 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !dbg !529, !tbaa !100
  %431 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4
  %.off50 = add i32 %431, -1, !dbg !531
  %notlhs = icmp ugt i32 %.off50, 1, !dbg !531
  %notrhs = icmp ne i32 %430, 1, !dbg !531
  %or.cond27.not = and i1 %notrhs, %notlhs, !dbg !531
  %432 = icmp eq i32 %431, 0, !dbg !532
  %or.cond45 = or i1 %432, %or.cond27.not, !dbg !531
  br i1 %or.cond45, label %450, label %433, !dbg !531

; <label>:433                                     ; preds = %429
  %434 = call i32 @is_attacked(i32 54, i32 0) #3, !dbg !532
  %435 = icmp eq i32 %434, 0, !dbg !532
  br i1 %435, label %450, label %436, !dbg !533

; <label>:436                                     ; preds = %433
  %437 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !dbg !534, !tbaa !100
  %438 = icmp eq i32 %437, 1, !dbg !537
  br i1 %438, label %439, label %442, !dbg !538

; <label>:439                                     ; preds = %436
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %440 = load i32* %score, align 4, !dbg !539, !tbaa !100
  %441 = add nsw i32 %440, 10, !dbg !539
  call void @llvm.dbg.value(metadata i32 %441, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %441, i32* %score, align 4, !dbg !539, !tbaa !100
  br label %442, !dbg !540

; <label>:442                                     ; preds = %439, %436
  %443 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !dbg !541, !tbaa !100
  switch i32 %443, label %450 [
    i32 1, label %444
    i32 2, label %447
  ], !dbg !543

; <label>:444                                     ; preds = %442
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %445 = load i32* %score, align 4, !dbg !544, !tbaa !100
  %446 = add nsw i32 %445, 20, !dbg !544
  call void @llvm.dbg.value(metadata i32 %446, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %446, i32* %score, align 4, !dbg !544, !tbaa !100
  br label %450, !dbg !545

; <label>:447                                     ; preds = %442
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %448 = load i32* %score, align 4, !dbg !546, !tbaa !100
  %449 = add nsw i32 %448, -15, !dbg !546
  call void @llvm.dbg.value(metadata i32 %449, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %449, i32* %score, align 4, !dbg !546, !tbaa !100
  br label %450, !dbg !548

; <label>:450                                     ; preds = %442, %433, %429, %444, %447
  %451 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !dbg !549, !tbaa !100
  %452 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4
  %.off51 = add i32 %452, -1, !dbg !551
  %notlhs52 = icmp ugt i32 %.off51, 1, !dbg !551
  %notrhs53 = icmp ne i32 %451, 2, !dbg !551
  %or.cond31.not = and i1 %notrhs53, %notlhs52, !dbg !551
  %453 = icmp eq i32 %452, 0, !dbg !552
  %or.cond47 = or i1 %453, %or.cond31.not, !dbg !551
  br i1 %or.cond47, label %471, label %454, !dbg !551

; <label>:454                                     ; preds = %450
  %455 = call i32 @is_attacked(i32 90, i32 1) #3, !dbg !552
  %456 = icmp eq i32 %455, 0, !dbg !552
  br i1 %456, label %471, label %457, !dbg !553

; <label>:457                                     ; preds = %454
  %458 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !dbg !554, !tbaa !100
  %459 = icmp eq i32 %458, 2, !dbg !557
  br i1 %459, label %460, label %463, !dbg !558

; <label>:460                                     ; preds = %457
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %461 = load i32* %score, align 4, !dbg !559, !tbaa !100
  %462 = add nsw i32 %461, -10, !dbg !559
  call void @llvm.dbg.value(metadata i32 %462, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %462, i32* %score, align 4, !dbg !559, !tbaa !100
  br label %463, !dbg !560

; <label>:463                                     ; preds = %460, %457
  %464 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !dbg !561, !tbaa !100
  switch i32 %464, label %471 [
    i32 2, label %465
    i32 1, label %468
  ], !dbg !563

; <label>:465                                     ; preds = %463
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %466 = load i32* %score, align 4, !dbg !564, !tbaa !100
  %467 = add nsw i32 %466, -20, !dbg !564
  call void @llvm.dbg.value(metadata i32 %467, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %467, i32* %score, align 4, !dbg !564, !tbaa !100
  br label %471, !dbg !565

; <label>:468                                     ; preds = %463
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %469 = load i32* %score, align 4, !dbg !566, !tbaa !100
  %470 = add nsw i32 %469, 15, !dbg !566
  call void @llvm.dbg.value(metadata i32 %470, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %470, i32* %score, align 4, !dbg !566, !tbaa !100
  br label %471, !dbg !568

; <label>:471                                     ; preds = %463, %454, %450, %465, %468
  %472 = load i32* @bking_loc, align 4, !dbg !569, !tbaa !100
  %473 = sext i32 %472 to i64, !dbg !569
  %474 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %473, !dbg !569
  %475 = load i32* %474, align 4, !dbg !569, !tbaa !100
  %476 = icmp eq i32 %475, 0, !dbg !569
  br i1 %476, label %484, label %477, !dbg !571

; <label>:477                                     ; preds = %471
  %478 = call i32 @is_attacked(i32 %472, i32 1) #3, !dbg !569
  %479 = icmp eq i32 %478, 0, !dbg !569
  br i1 %479, label %484, label %480, !dbg !571

; <label>:480                                     ; preds = %477
  %481 = lshr i32 50, %wdev_dscale.1, !dbg !572
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %482 = load i32* %score, align 4, !dbg !573, !tbaa !100
  %483 = add nsw i32 %482, %481, !dbg !573
  call void @llvm.dbg.value(metadata i32 %483, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %483, i32* %score, align 4, !dbg !573, !tbaa !100
  br label %497, !dbg !574

; <label>:484                                     ; preds = %477, %471
  %485 = load i32* @wking_loc, align 4, !dbg !575, !tbaa !100
  %486 = sext i32 %485 to i64, !dbg !575
  %487 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %486, !dbg !575
  %488 = load i32* %487, align 4, !dbg !575, !tbaa !100
  %489 = icmp eq i32 %488, 0, !dbg !575
  br i1 %489, label %497, label %490, !dbg !577

; <label>:490                                     ; preds = %484
  %491 = call i32 @is_attacked(i32 %485, i32 0) #3, !dbg !575
  %492 = icmp eq i32 %491, 0, !dbg !575
  br i1 %492, label %497, label %493, !dbg !577

; <label>:493                                     ; preds = %490
  %494 = lshr i32 50, %bdev_dscale.0, !dbg !578
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %495 = load i32* %score, align 4, !dbg !579, !tbaa !100
  %496 = sub nsw i32 %495, %494, !dbg !579
  call void @llvm.dbg.value(metadata i32 %496, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %496, i32* %score, align 4, !dbg !579, !tbaa !100
  br label %497, !dbg !580

; <label>:497                                     ; preds = %490, %493, %484, %480
  %498 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !dbg !581, !tbaa !100
  %499 = icmp eq i32 %498, 4, !dbg !583
  br i1 %499, label %500, label %520, !dbg !584

; <label>:500                                     ; preds = %497
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %501 = load i32* %score, align 4, !dbg !585, !tbaa !100
  %502 = add nsw i32 %501, -20, !dbg !585
  call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %502, i32* %score, align 4, !dbg !585, !tbaa !100
  %503 = call i32 @is_attacked(i32 44, i32 0) #3, !dbg !587
  %504 = icmp eq i32 %503, 0, !dbg !587
  br i1 %504, label %508, label %505, !dbg !589

; <label>:505                                     ; preds = %500
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %506 = load i32* %score, align 4, !dbg !590, !tbaa !100
  %507 = add nsw i32 %506, -40, !dbg !590
  call void @llvm.dbg.value(metadata i32 %507, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %507, i32* %score, align 4, !dbg !590, !tbaa !100
  br label %508, !dbg !591

; <label>:508                                     ; preds = %500, %505
  %509 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !dbg !592, !tbaa !100
  %510 = icmp eq i32 %509, 7, !dbg !594
  br i1 %510, label %511, label %514, !dbg !595

; <label>:511                                     ; preds = %508
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %512 = load i32* %score, align 4, !dbg !596, !tbaa !100
  %513 = add nsw i32 %512, 10, !dbg !596
  call void @llvm.dbg.value(metadata i32 %513, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %513, i32* %score, align 4, !dbg !596, !tbaa !100
  br label %514, !dbg !597

; <label>:514                                     ; preds = %511, %508
  %515 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !598, !tbaa !100
  %516 = icmp eq i32 %515, 11, !dbg !600
  br i1 %516, label %517, label %520, !dbg !601

; <label>:517                                     ; preds = %514
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %518 = load i32* %score, align 4, !dbg !602, !tbaa !100
  %519 = add nsw i32 %518, 10, !dbg !602
  call void @llvm.dbg.value(metadata i32 %519, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %519, i32* %score, align 4, !dbg !602, !tbaa !100
  br label %520, !dbg !603

; <label>:520                                     ; preds = %514, %517, %497
  %521 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !dbg !604, !tbaa !100
  %522 = icmp eq i32 %521, 3, !dbg !606
  br i1 %522, label %523, label %543, !dbg !607

; <label>:523                                     ; preds = %520
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %524 = load i32* %score, align 4, !dbg !608, !tbaa !100
  %525 = add nsw i32 %524, 20, !dbg !608
  call void @llvm.dbg.value(metadata i32 %525, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %525, i32* %score, align 4, !dbg !608, !tbaa !100
  %526 = call i32 @is_attacked(i32 104, i32 1) #3, !dbg !610
  %527 = icmp eq i32 %526, 0, !dbg !610
  br i1 %527, label %531, label %528, !dbg !612

; <label>:528                                     ; preds = %523
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %529 = load i32* %score, align 4, !dbg !613, !tbaa !100
  %530 = add nsw i32 %529, 40, !dbg !613
  call void @llvm.dbg.value(metadata i32 %530, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %530, i32* %score, align 4, !dbg !613, !tbaa !100
  br label %531, !dbg !614

; <label>:531                                     ; preds = %523, %528
  %532 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !dbg !615, !tbaa !100
  %533 = icmp eq i32 %532, 8, !dbg !617
  br i1 %533, label %534, label %537, !dbg !618

; <label>:534                                     ; preds = %531
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %535 = load i32* %score, align 4, !dbg !619, !tbaa !100
  %536 = add nsw i32 %535, -10, !dbg !619
  call void @llvm.dbg.value(metadata i32 %536, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %536, i32* %score, align 4, !dbg !619, !tbaa !100
  br label %537, !dbg !620

; <label>:537                                     ; preds = %534, %531
  %538 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !621, !tbaa !100
  %539 = icmp eq i32 %538, 12, !dbg !623
  br i1 %539, label %540, label %543, !dbg !624

; <label>:540                                     ; preds = %537
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %541 = load i32* %score, align 4, !dbg !625, !tbaa !100
  %542 = add nsw i32 %541, -10, !dbg !625
  call void @llvm.dbg.value(metadata i32 %542, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %542, i32* %score, align 4, !dbg !625, !tbaa !100
  br label %543, !dbg !626

; <label>:543                                     ; preds = %537, %540, %520
  %544 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 57), align 4, !dbg !627, !tbaa !100
  %545 = icmp eq i32 %544, 12, !dbg !629
  %546 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4
  %547 = icmp ne i32 %546, 1, !dbg !630
  %or.cond33 = and i1 %545, %547, !dbg !631
  br i1 %or.cond33, label %548, label %562, !dbg !631

; <label>:548                                     ; preds = %543
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %549 = load i32* %score, align 4, !dbg !632, !tbaa !100
  %550 = add nsw i32 %549, -20, !dbg !632
  call void @llvm.dbg.value(metadata i32 %550, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %550, i32* %score, align 4, !dbg !632, !tbaa !100
  %551 = icmp eq i32 %546, 4, !dbg !634
  br i1 %551, label %552, label %562, !dbg !636

; <label>:552                                     ; preds = %548
  %553 = add nsw i32 %549, -60, !dbg !637
  call void @llvm.dbg.value(metadata i32 %553, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %553, i32* %score, align 4, !dbg !637, !tbaa !100
  %554 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !639, !tbaa !100
  %555 = icmp eq i32 %554, 5, !dbg !641
  %556 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4
  %557 = icmp eq i32 %556, 5, !dbg !642
  %or.cond35 = or i1 %555, %557, !dbg !643
  %558 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4
  %559 = icmp eq i32 %558, 5, !dbg !644
  %or.cond37 = or i1 %or.cond35, %559, !dbg !643
  br i1 %or.cond37, label %560, label %562, !dbg !643

; <label>:560                                     ; preds = %552
  %561 = add nsw i32 %549, -140, !dbg !645
  call void @llvm.dbg.value(metadata i32 %561, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %561, i32* %score, align 4, !dbg !645, !tbaa !100
  br label %562, !dbg !646

; <label>:562                                     ; preds = %548, %552, %560, %543
  %563 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 93), align 4, !dbg !647, !tbaa !100
  %564 = icmp eq i32 %563, 11, !dbg !649
  %565 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4
  %566 = icmp ne i32 %565, 2, !dbg !650
  %or.cond39 = and i1 %564, %566, !dbg !651
  br i1 %or.cond39, label %567, label %581, !dbg !651

; <label>:567                                     ; preds = %562
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %568 = load i32* %score, align 4, !dbg !652, !tbaa !100
  %569 = add nsw i32 %568, 20, !dbg !652
  call void @llvm.dbg.value(metadata i32 %569, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %569, i32* %score, align 4, !dbg !652, !tbaa !100
  %570 = icmp eq i32 %565, 3, !dbg !654
  br i1 %570, label %571, label %581, !dbg !656

; <label>:571                                     ; preds = %567
  %572 = add nsw i32 %568, 60, !dbg !657
  call void @llvm.dbg.value(metadata i32 %572, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %572, i32* %score, align 4, !dbg !657, !tbaa !100
  %573 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !659, !tbaa !100
  %574 = icmp eq i32 %573, 6, !dbg !661
  %575 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4
  %576 = icmp eq i32 %575, 6, !dbg !662
  %or.cond41 = or i1 %574, %576, !dbg !663
  %577 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4
  %578 = icmp eq i32 %577, 6, !dbg !664
  %or.cond43 = or i1 %or.cond41, %578, !dbg !663
  br i1 %or.cond43, label %579, label %581, !dbg !663

; <label>:579                                     ; preds = %571
  %580 = add nsw i32 %568, 140, !dbg !665
  call void @llvm.dbg.value(metadata i32 %580, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %580, i32* %score, align 4, !dbg !665, !tbaa !100
  br label %581, !dbg !666

; <label>:581                                     ; preds = %221, %562, %579, %571, %567
  %582 = load i32* @cfg_attackeval, align 4, !dbg !667, !tbaa !100
  %583 = icmp eq i32 %582, 0, !dbg !667
  br i1 %583, label %._crit_edge79, label %584, !dbg !669

._crit_edge79:                                    ; preds = %581
  %.pre80 = load i32* @white_hand_eval, align 4, !dbg !670, !tbaa !100
  %.pre81 = load i32* %score, align 4, !dbg !671, !tbaa !100
  br label %782, !dbg !669

; <label>:584                                     ; preds = %581
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !88), !dbg !672
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !88), !dbg !673
  %585 = load i32* @wking_loc, align 4, !dbg !674, !tbaa !100
  %586 = add nsw i32 %585, -13, !dbg !674
  %587 = sext i32 %586 to i64, !dbg !674
  %588 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %587, !dbg !674
  %589 = load i32* %588, align 4, !dbg !674, !tbaa !100
  %590 = icmp eq i32 %589, 0, !dbg !674
  br i1 %590, label %593, label %591, !dbg !674

; <label>:591                                     ; preds = %584
  %592 = call i32 @nk_attacked(i32 %586, i32 0) #3, !dbg !674
  %.pre65 = load i32* @wking_loc, align 4, !dbg !676, !tbaa !100
  br label %593, !dbg !674

; <label>:593                                     ; preds = %584, %591
  %594 = phi i32 [ %.pre65, %591 ], [ %585, %584 ]
  %595 = phi i32 [ %592, %591 ], [ 0, %584 ], !dbg !674
  call void @llvm.dbg.value(metadata i32 %595, i64 0, metadata !25, metadata !88), !dbg !672
  %596 = add nsw i32 %594, -12, !dbg !676
  %597 = sext i32 %596 to i64, !dbg !676
  %598 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %597, !dbg !676
  %599 = load i32* %598, align 4, !dbg !676, !tbaa !100
  %600 = icmp eq i32 %599, 0, !dbg !676
  br i1 %600, label %603, label %601, !dbg !676

; <label>:601                                     ; preds = %593
  %602 = call i32 @nk_attacked(i32 %596, i32 0) #3, !dbg !676
  %.pre66 = load i32* @wking_loc, align 4, !dbg !677, !tbaa !100
  br label %603, !dbg !676

; <label>:603                                     ; preds = %593, %601
  %604 = phi i32 [ %.pre66, %601 ], [ %594, %593 ]
  %605 = phi i32 [ %602, %601 ], [ 0, %593 ], !dbg !676
  %606 = add i32 %605, %595, !dbg !678
  call void @llvm.dbg.value(metadata i32 %606, i64 0, metadata !25, metadata !88), !dbg !672
  %607 = add nsw i32 %604, -11, !dbg !677
  %608 = sext i32 %607 to i64, !dbg !677
  %609 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %608, !dbg !677
  %610 = load i32* %609, align 4, !dbg !677, !tbaa !100
  %611 = icmp eq i32 %610, 0, !dbg !677
  br i1 %611, label %614, label %612, !dbg !677

; <label>:612                                     ; preds = %603
  %613 = call i32 @nk_attacked(i32 %607, i32 0) #3, !dbg !677
  %.pre67 = load i32* @wking_loc, align 4, !dbg !679, !tbaa !100
  br label %614, !dbg !677

; <label>:614                                     ; preds = %603, %612
  %615 = phi i32 [ %.pre67, %612 ], [ %604, %603 ]
  %616 = phi i32 [ %613, %612 ], [ 0, %603 ], !dbg !677
  %617 = add i32 %606, %616, !dbg !680
  call void @llvm.dbg.value(metadata i32 %617, i64 0, metadata !25, metadata !88), !dbg !672
  %618 = add nsw i32 %615, -1, !dbg !679
  %619 = sext i32 %618 to i64, !dbg !679
  %620 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %619, !dbg !679
  %621 = load i32* %620, align 4, !dbg !679, !tbaa !100
  %622 = icmp eq i32 %621, 0, !dbg !679
  br i1 %622, label %625, label %623, !dbg !679

; <label>:623                                     ; preds = %614
  %624 = call i32 @nk_attacked(i32 %618, i32 0) #3, !dbg !679
  %.pre68 = load i32* @wking_loc, align 4, !dbg !681, !tbaa !100
  br label %625, !dbg !679

; <label>:625                                     ; preds = %614, %623
  %626 = phi i32 [ %.pre68, %623 ], [ %615, %614 ]
  %627 = phi i32 [ %624, %623 ], [ 0, %614 ], !dbg !679
  %628 = add i32 %617, %627, !dbg !682
  call void @llvm.dbg.value(metadata i32 %628, i64 0, metadata !25, metadata !88), !dbg !672
  %629 = add nsw i32 %626, 1, !dbg !681
  %630 = sext i32 %629 to i64, !dbg !681
  %631 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %630, !dbg !681
  %632 = load i32* %631, align 4, !dbg !681, !tbaa !100
  %633 = icmp eq i32 %632, 0, !dbg !681
  br i1 %633, label %636, label %634, !dbg !681

; <label>:634                                     ; preds = %625
  %635 = call i32 @nk_attacked(i32 %629, i32 0) #3, !dbg !681
  %.pre69 = load i32* @wking_loc, align 4, !dbg !683, !tbaa !100
  br label %636, !dbg !681

; <label>:636                                     ; preds = %625, %634
  %637 = phi i32 [ %.pre69, %634 ], [ %626, %625 ]
  %638 = phi i32 [ %635, %634 ], [ 0, %625 ], !dbg !681
  %639 = add i32 %628, %638, !dbg !684
  call void @llvm.dbg.value(metadata i32 %639, i64 0, metadata !25, metadata !88), !dbg !672
  %640 = add nsw i32 %637, 11, !dbg !683
  %641 = sext i32 %640 to i64, !dbg !683
  %642 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %641, !dbg !683
  %643 = load i32* %642, align 4, !dbg !683, !tbaa !100
  %644 = icmp eq i32 %643, 0, !dbg !683
  br i1 %644, label %647, label %645, !dbg !683

; <label>:645                                     ; preds = %636
  %646 = call i32 @nk_attacked(i32 %640, i32 0) #3, !dbg !683
  %.pre70 = load i32* @wking_loc, align 4, !dbg !685, !tbaa !100
  br label %647, !dbg !683

; <label>:647                                     ; preds = %636, %645
  %648 = phi i32 [ %.pre70, %645 ], [ %637, %636 ]
  %649 = phi i32 [ %646, %645 ], [ 0, %636 ], !dbg !683
  %650 = add i32 %639, %649, !dbg !686
  call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !25, metadata !88), !dbg !672
  %651 = add nsw i32 %648, 12, !dbg !685
  %652 = sext i32 %651 to i64, !dbg !685
  %653 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %652, !dbg !685
  %654 = load i32* %653, align 4, !dbg !685, !tbaa !100
  %655 = icmp eq i32 %654, 0, !dbg !685
  br i1 %655, label %658, label %656, !dbg !685

; <label>:656                                     ; preds = %647
  %657 = call i32 @nk_attacked(i32 %651, i32 0) #3, !dbg !685
  %.pre71 = load i32* @wking_loc, align 4, !dbg !687, !tbaa !100
  br label %658, !dbg !685

; <label>:658                                     ; preds = %647, %656
  %659 = phi i32 [ %.pre71, %656 ], [ %648, %647 ]
  %660 = phi i32 [ %657, %656 ], [ 0, %647 ], !dbg !685
  %661 = add i32 %650, %660, !dbg !688
  call void @llvm.dbg.value(metadata i32 %661, i64 0, metadata !25, metadata !88), !dbg !672
  %662 = add nsw i32 %659, 13, !dbg !687
  %663 = sext i32 %662 to i64, !dbg !687
  %664 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %663, !dbg !687
  %665 = load i32* %664, align 4, !dbg !687, !tbaa !100
  %666 = icmp eq i32 %665, 0, !dbg !687
  br i1 %666, label %669, label %667, !dbg !687

; <label>:667                                     ; preds = %658
  %668 = call i32 @nk_attacked(i32 %662, i32 0) #3, !dbg !687
  br label %669, !dbg !687

; <label>:669                                     ; preds = %658, %667
  %670 = phi i32 [ %668, %667 ], [ 0, %658 ], !dbg !687
  %671 = add i32 %661, %670, !dbg !689
  call void @llvm.dbg.value(metadata i32 %671, i64 0, metadata !25, metadata !88), !dbg !672
  %672 = load i32* @black_hand_eval, align 4, !dbg !690, !tbaa !100
  call void @llvm.dbg.value(metadata i32 %675, i64 0, metadata !27, metadata !88), !dbg !691
  %673 = icmp slt i32 %672, -1499, !dbg !692
  br i1 %673, label %678, label %674, !dbg !694

; <label>:674                                     ; preds = %669
  %675 = sdiv i32 %672, -100, !dbg !695
  %676 = icmp sgt i32 %672, 99, !dbg !696
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !88), !dbg !691
  %677 = sext i32 %675 to i64, !dbg !698
  %phitmp = select i1 %676, i64 0, i64 %677, !dbg !698
  br label %678, !dbg !698

; <label>:678                                     ; preds = %674, %669
  %norm_black_hand_eval.0 = phi i64 [ 14, %669 ], [ %phitmp, %674 ]
  %679 = sext i32 %671 to i64, !dbg !699
  %680 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_black_hand_eval.0, i64 %679, !dbg !699
  %681 = load i32* %680, align 4, !dbg !699, !tbaa !100
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !88), !dbg !672
  %682 = load i32* @bking_loc, align 4, !dbg !700, !tbaa !100
  %683 = add nsw i32 %682, -13, !dbg !700
  %684 = sext i32 %683 to i64, !dbg !700
  %685 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %684, !dbg !700
  %686 = load i32* %685, align 4, !dbg !700, !tbaa !100
  %687 = icmp eq i32 %686, 0, !dbg !700
  br i1 %687, label %690, label %688, !dbg !700

; <label>:688                                     ; preds = %678
  %689 = call i32 @nk_attacked(i32 %683, i32 1) #3, !dbg !700
  %.pre72 = load i32* @bking_loc, align 4, !dbg !701, !tbaa !100
  br label %690, !dbg !700

; <label>:690                                     ; preds = %678, %688
  %691 = phi i32 [ %.pre72, %688 ], [ %682, %678 ]
  %692 = phi i32 [ %689, %688 ], [ 0, %678 ], !dbg !700
  call void @llvm.dbg.value(metadata i32 %692, i64 0, metadata !25, metadata !88), !dbg !672
  %693 = add nsw i32 %691, -12, !dbg !701
  %694 = sext i32 %693 to i64, !dbg !701
  %695 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %694, !dbg !701
  %696 = load i32* %695, align 4, !dbg !701, !tbaa !100
  %697 = icmp eq i32 %696, 0, !dbg !701
  br i1 %697, label %700, label %698, !dbg !701

; <label>:698                                     ; preds = %690
  %699 = call i32 @nk_attacked(i32 %693, i32 1) #3, !dbg !701
  %.pre73 = load i32* @bking_loc, align 4, !dbg !702, !tbaa !100
  br label %700, !dbg !701

; <label>:700                                     ; preds = %690, %698
  %701 = phi i32 [ %.pre73, %698 ], [ %691, %690 ]
  %702 = phi i32 [ %699, %698 ], [ 0, %690 ], !dbg !701
  %703 = add i32 %702, %692, !dbg !703
  call void @llvm.dbg.value(metadata i32 %703, i64 0, metadata !25, metadata !88), !dbg !672
  %704 = add nsw i32 %701, -11, !dbg !702
  %705 = sext i32 %704 to i64, !dbg !702
  %706 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %705, !dbg !702
  %707 = load i32* %706, align 4, !dbg !702, !tbaa !100
  %708 = icmp eq i32 %707, 0, !dbg !702
  br i1 %708, label %711, label %709, !dbg !702

; <label>:709                                     ; preds = %700
  %710 = call i32 @nk_attacked(i32 %704, i32 1) #3, !dbg !702
  %.pre74 = load i32* @bking_loc, align 4, !dbg !704, !tbaa !100
  br label %711, !dbg !702

; <label>:711                                     ; preds = %700, %709
  %712 = phi i32 [ %.pre74, %709 ], [ %701, %700 ]
  %713 = phi i32 [ %710, %709 ], [ 0, %700 ], !dbg !702
  %714 = add i32 %703, %713, !dbg !705
  call void @llvm.dbg.value(metadata i32 %714, i64 0, metadata !25, metadata !88), !dbg !672
  %715 = add nsw i32 %712, -1, !dbg !704
  %716 = sext i32 %715 to i64, !dbg !704
  %717 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %716, !dbg !704
  %718 = load i32* %717, align 4, !dbg !704, !tbaa !100
  %719 = icmp eq i32 %718, 0, !dbg !704
  br i1 %719, label %722, label %720, !dbg !704

; <label>:720                                     ; preds = %711
  %721 = call i32 @nk_attacked(i32 %715, i32 1) #3, !dbg !704
  %.pre75 = load i32* @bking_loc, align 4, !dbg !706, !tbaa !100
  br label %722, !dbg !704

; <label>:722                                     ; preds = %711, %720
  %723 = phi i32 [ %.pre75, %720 ], [ %712, %711 ]
  %724 = phi i32 [ %721, %720 ], [ 0, %711 ], !dbg !704
  %725 = add i32 %714, %724, !dbg !707
  call void @llvm.dbg.value(metadata i32 %725, i64 0, metadata !25, metadata !88), !dbg !672
  %726 = add nsw i32 %723, 1, !dbg !706
  %727 = sext i32 %726 to i64, !dbg !706
  %728 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %727, !dbg !706
  %729 = load i32* %728, align 4, !dbg !706, !tbaa !100
  %730 = icmp eq i32 %729, 0, !dbg !706
  br i1 %730, label %733, label %731, !dbg !706

; <label>:731                                     ; preds = %722
  %732 = call i32 @nk_attacked(i32 %726, i32 1) #3, !dbg !706
  %.pre76 = load i32* @bking_loc, align 4, !dbg !708, !tbaa !100
  br label %733, !dbg !706

; <label>:733                                     ; preds = %722, %731
  %734 = phi i32 [ %.pre76, %731 ], [ %723, %722 ]
  %735 = phi i32 [ %732, %731 ], [ 0, %722 ], !dbg !706
  %736 = add i32 %725, %735, !dbg !709
  call void @llvm.dbg.value(metadata i32 %736, i64 0, metadata !25, metadata !88), !dbg !672
  %737 = add nsw i32 %734, 11, !dbg !708
  %738 = sext i32 %737 to i64, !dbg !708
  %739 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %738, !dbg !708
  %740 = load i32* %739, align 4, !dbg !708, !tbaa !100
  %741 = icmp eq i32 %740, 0, !dbg !708
  br i1 %741, label %744, label %742, !dbg !708

; <label>:742                                     ; preds = %733
  %743 = call i32 @nk_attacked(i32 %737, i32 1) #3, !dbg !708
  %.pre77 = load i32* @bking_loc, align 4, !dbg !710, !tbaa !100
  br label %744, !dbg !708

; <label>:744                                     ; preds = %733, %742
  %745 = phi i32 [ %.pre77, %742 ], [ %734, %733 ]
  %746 = phi i32 [ %743, %742 ], [ 0, %733 ], !dbg !708
  %747 = add i32 %736, %746, !dbg !711
  call void @llvm.dbg.value(metadata i32 %747, i64 0, metadata !25, metadata !88), !dbg !672
  %748 = add nsw i32 %745, 12, !dbg !710
  %749 = sext i32 %748 to i64, !dbg !710
  %750 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %749, !dbg !710
  %751 = load i32* %750, align 4, !dbg !710, !tbaa !100
  %752 = icmp eq i32 %751, 0, !dbg !710
  br i1 %752, label %755, label %753, !dbg !710

; <label>:753                                     ; preds = %744
  %754 = call i32 @nk_attacked(i32 %748, i32 1) #3, !dbg !710
  %.pre78 = load i32* @bking_loc, align 4, !dbg !712, !tbaa !100
  br label %755, !dbg !710

; <label>:755                                     ; preds = %744, %753
  %756 = phi i32 [ %.pre78, %753 ], [ %745, %744 ]
  %757 = phi i32 [ %754, %753 ], [ 0, %744 ], !dbg !710
  %758 = add i32 %747, %757, !dbg !713
  call void @llvm.dbg.value(metadata i32 %758, i64 0, metadata !25, metadata !88), !dbg !672
  %759 = add nsw i32 %756, 13, !dbg !712
  %760 = sext i32 %759 to i64, !dbg !712
  %761 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %760, !dbg !712
  %762 = load i32* %761, align 4, !dbg !712, !tbaa !100
  %763 = icmp eq i32 %762, 0, !dbg !712
  br i1 %763, label %766, label %764, !dbg !712

; <label>:764                                     ; preds = %755
  %765 = call i32 @nk_attacked(i32 %759, i32 1) #3, !dbg !712
  br label %766, !dbg !712

; <label>:766                                     ; preds = %755, %764
  %767 = phi i32 [ %765, %764 ], [ 0, %755 ], !dbg !712
  %768 = add i32 %758, %767, !dbg !714
  call void @llvm.dbg.value(metadata i32 %768, i64 0, metadata !25, metadata !88), !dbg !672
  %769 = load i32* @white_hand_eval, align 4, !dbg !715, !tbaa !100
  call void @llvm.dbg.value(metadata i32 %772, i64 0, metadata !26, metadata !88), !dbg !716
  %770 = icmp sgt i32 %769, 1499, !dbg !717
  br i1 %770, label %775, label %771, !dbg !719

; <label>:771                                     ; preds = %766
  %772 = sdiv i32 %769, 100, !dbg !720
  %773 = icmp slt i32 %769, -99, !dbg !721
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !88), !dbg !716
  %774 = sext i32 %772 to i64, !dbg !723
  %phitmp59 = select i1 %773, i64 0, i64 %774, !dbg !723
  br label %775, !dbg !723

; <label>:775                                     ; preds = %771, %766
  %norm_white_hand_eval.0 = phi i64 [ 14, %766 ], [ %phitmp59, %771 ]
  %776 = sext i32 %768 to i64, !dbg !724
  %777 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_white_hand_eval.0, i64 %776, !dbg !724
  %778 = load i32* %777, align 4, !dbg !724, !tbaa !100
  %779 = sub i32 %778, %681, !dbg !725
  call void @llvm.dbg.value(metadata i32 %779, i64 0, metadata !24, metadata !88), !dbg !673
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %780 = load i32* %score, align 4, !dbg !726, !tbaa !100
  %781 = add nsw i32 %779, %780, !dbg !726
  call void @llvm.dbg.value(metadata i32 %781, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %781, i32* %score, align 4, !dbg !726, !tbaa !100
  br label %782, !dbg !727

; <label>:782                                     ; preds = %._crit_edge79, %775
  %783 = phi i32 [ %.pre81, %._crit_edge79 ], [ %781, %775 ]
  %784 = phi i32 [ %.pre80, %._crit_edge79 ], [ %769, %775 ]
  %785 = load i32* @black_hand_eval, align 4, !dbg !728, !tbaa !100
  %786 = add nsw i32 %785, %784, !dbg !729
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %787 = add nsw i32 %786, %783, !dbg !671
  call void @llvm.dbg.value(metadata i32 %787, i64 0, metadata !22, metadata !88), !dbg !149
  store i32 %787, i32* %score, align 4, !dbg !671, !tbaa !100
  call void @storeECache(i32 %787) #3, !dbg !730
  %788 = load i32* @white_to_move, align 4, !dbg !731, !tbaa !100
  %789 = icmp eq i32 %788, 1, !dbg !733
  call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !22, metadata !88), !dbg !149
  %790 = load i32* %score, align 4, !dbg !734, !tbaa !100
  %791 = sub nsw i32 0, %790, !dbg !736
  %.58 = select i1 %789, i32 %790, i32 %791, !dbg !738
  br label %792, !dbg !738

; <label>:792                                     ; preds = %782, %6, %4, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %4 ], [ %7, %6 ], [ %.58, %782 ]
  ret i32 %.0, !dbg !739
}

; Function Attrs: optsize
declare i32 @std_eval(i32, i32) #1

; Function Attrs: optsize
declare i32 @suicide_eval() #1

; Function Attrs: optsize
declare i32 @losers_eval() #1

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #1

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #1

; Function Attrs: optsize
declare i32 @nk_attacked(i32, i32) #1

; Function Attrs: optsize
declare void @storeECache(i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!84, !85, !86}
!llvm.ident = !{!87}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !30, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/eval.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !13}
!4 = !DISubprogram(name: "initialize_eval", scope: !1, file: !1, line: 328, type: !5, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @initialize_eval, variables: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !{!8, !10, !11, !12}
!8 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 330, type: !9)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 330, type: !9)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sd", scope: !4, file: !1, line: 330, type: !9)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sdi", scope: !4, file: !1, line: 330, type: !9)
!13 = !DISubprogram(name: "eval", scope: !1, file: !1, line: 361, type: !14, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @eval, variables: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!9, !9, !9}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 1, scope: !13, file: !1, line: 361, type: !9)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 2, scope: !13, file: !1, line: 361, type: !9)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !13, file: !1, line: 365, type: !9)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !13, file: !1, line: 365, type: !9)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !13, file: !1, line: 365, type: !9)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "score", scope: !13, file: !1, line: 366, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_cache", scope: !13, file: !1, line: 367, type: !9)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "safety", scope: !13, file: !1, line: 368, type: !9)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "badsquares", scope: !13, file: !1, line: 368, type: !9)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "norm_white_hand_eval", scope: !13, file: !1, line: 369, type: !9)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "norm_black_hand_eval", scope: !13, file: !1, line: 369, type: !9)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wdev_dscale", scope: !13, file: !1, line: 370, type: !9)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bdev_dscale", scope: !13, file: !1, line: 370, type: !9)
!30 = !{!31, !35, !36, !37, !38, !39, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !63, !67, !68, !69, !70, !71, !75, !76, !80, !81, !82, !83}
!31 = !DIGlobalVariable(name: "std_material", scope: !0, file: !1, line: 16, type: !32, isLocal: false, isDefinition: true, variable: [14 x i32]* @std_material)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 448, align: 32, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 14)
!35 = !DIGlobalVariable(name: "zh_material", scope: !0, file: !1, line: 18, type: !32, isLocal: false, isDefinition: true, variable: [14 x i32]* @zh_material)
!36 = !DIGlobalVariable(name: "suicide_material", scope: !0, file: !1, line: 20, type: !32, isLocal: false, isDefinition: true, variable: [14 x i32]* @suicide_material)
!37 = !DIGlobalVariable(name: "losers_material", scope: !0, file: !1, line: 22, type: !32, isLocal: false, isDefinition: true, variable: [14 x i32]* @losers_material)
!38 = !DIGlobalVariable(name: "material", scope: !0, file: !1, line: 24, type: !32, isLocal: false, isDefinition: true, variable: [14 x i32]* @material)
!39 = !DIGlobalVariable(name: "Xfile", scope: !0, file: !1, line: 26, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @Xfile)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4608, align: 32, elements: !42)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!42 = !{!43}
!43 = !DISubrange(count: 144)
!44 = !DIGlobalVariable(name: "Xrank", scope: !0, file: !1, line: 42, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @Xrank)
!45 = !DIGlobalVariable(name: "Xdiagl", scope: !0, file: !1, line: 58, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @Xdiagl)
!46 = !DIGlobalVariable(name: "Xdiagr", scope: !0, file: !1, line: 74, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @Xdiagr)
!47 = !DIGlobalVariable(name: "sqcolor", scope: !0, file: !1, line: 90, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @sqcolor)
!48 = !DIGlobalVariable(name: "pcsqbishop", scope: !0, file: !1, line: 109, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @pcsqbishop)
!49 = !DIGlobalVariable(name: "black_knight", scope: !0, file: !1, line: 123, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @black_knight)
!50 = !DIGlobalVariable(name: "white_knight", scope: !0, file: !1, line: 137, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @white_knight)
!51 = !DIGlobalVariable(name: "white_pawn", scope: !0, file: !1, line: 151, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @white_pawn)
!52 = !DIGlobalVariable(name: "black_pawn", scope: !0, file: !1, line: 167, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @black_pawn)
!53 = !DIGlobalVariable(name: "white_king", scope: !0, file: !1, line: 184, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @white_king)
!54 = !DIGlobalVariable(name: "black_king", scope: !0, file: !1, line: 199, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @black_king)
!55 = !DIGlobalVariable(name: "black_queen", scope: !0, file: !1, line: 213, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @black_queen)
!56 = !DIGlobalVariable(name: "white_queen", scope: !0, file: !1, line: 228, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @white_queen)
!57 = !DIGlobalVariable(name: "black_rook", scope: !0, file: !1, line: 242, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @black_rook)
!58 = !DIGlobalVariable(name: "white_rook", scope: !0, file: !1, line: 258, type: !40, isLocal: false, isDefinition: true, variable: [144 x i32]* @white_rook)
!59 = !DIGlobalVariable(name: "upscale", scope: !0, file: !1, line: 274, type: !60, isLocal: false, isDefinition: true, variable: [64 x i32]* @upscale)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, align: 32, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 64)
!63 = !DIGlobalVariable(name: "pre_p_tropism", scope: !0, file: !1, line: 288, type: !64, isLocal: false, isDefinition: true, variable: [9 x i32]* @pre_p_tropism)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 288, align: 32, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 9)
!67 = !DIGlobalVariable(name: "pre_r_tropism", scope: !0, file: !1, line: 291, type: !64, isLocal: false, isDefinition: true, variable: [9 x i32]* @pre_r_tropism)
!68 = !DIGlobalVariable(name: "pre_n_tropism", scope: !0, file: !1, line: 294, type: !64, isLocal: false, isDefinition: true, variable: [9 x i32]* @pre_n_tropism)
!69 = !DIGlobalVariable(name: "pre_q_tropism", scope: !0, file: !1, line: 297, type: !64, isLocal: false, isDefinition: true, variable: [9 x i32]* @pre_q_tropism)
!70 = !DIGlobalVariable(name: "pre_b_tropism", scope: !0, file: !1, line: 300, type: !64, isLocal: false, isDefinition: true, variable: [9 x i32]* @pre_b_tropism)
!71 = !DIGlobalVariable(name: "ksafety_scaled", scope: !0, file: !1, line: 309, type: !72, isLocal: false, isDefinition: true, variable: [15 x [9 x i32]]* @ksafety_scaled)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 4320, align: 32, elements: !73)
!73 = !{!74, !66}
!74 = !DISubrange(count: 15)
!75 = !DIGlobalVariable(name: "Material", scope: !0, file: !1, line: 15, type: !9, isLocal: false, isDefinition: true, variable: i32* @Material)
!76 = !DIGlobalVariable(name: "p_tropism", scope: !0, file: !1, line: 303, type: !77, isLocal: false, isDefinition: true, variable: [144 x [144 x i8]]* @p_tropism)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 165888, align: 8, elements: !79)
!78 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!79 = !{!43, !43}
!80 = !DIGlobalVariable(name: "q_tropism", scope: !0, file: !1, line: 304, type: !77, isLocal: false, isDefinition: true, variable: [144 x [144 x i8]]* @q_tropism)
!81 = !DIGlobalVariable(name: "n_tropism", scope: !0, file: !1, line: 305, type: !77, isLocal: false, isDefinition: true, variable: [144 x [144 x i8]]* @n_tropism)
!82 = !DIGlobalVariable(name: "r_tropism", scope: !0, file: !1, line: 306, type: !77, isLocal: false, isDefinition: true, variable: [144 x [144 x i8]]* @r_tropism)
!83 = !DIGlobalVariable(name: "b_tropism", scope: !0, file: !1, line: 307, type: !77, isLocal: false, isDefinition: true, variable: [144 x [144 x i8]]* @b_tropism)
!84 = !{i32 2, !"Dwarf Version", i32 2}
!85 = !{i32 2, !"Debug Info Version", i32 700000003}
!86 = !{i32 1, !"PIC Level", i32 2}
!87 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!88 = !DIExpression()
!89 = !DILocation(line: 330, column: 7, scope: !4)
!90 = !DILocation(line: 332, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !4, file: !1, line: 332, column: 3)
!92 = !DILocation(line: 336, column: 23, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 335, column: 9)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 334, column: 9)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 334, column: 9)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 333, column: 7)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 332, column: 3)
!98 = !DILocation(line: 337, column: 23, scope: !93)
!99 = !DILocation(line: 338, column: 24, scope: !93)
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DILocation(line: 338, column: 11, scope: !93)
!105 = !DILocation(line: 334, column: 9, scope: !95)
!106 = !DILocation(line: 336, column: 31, scope: !93)
!107 = !DILocation(line: 336, column: 27, scope: !93)
!108 = !DILocation(line: 336, column: 17, scope: !93)
!109 = !DILocation(line: 330, column: 13, scope: !4)
!110 = !DILocation(line: 337, column: 32, scope: !93)
!111 = !DILocation(line: 337, column: 28, scope: !93)
!112 = !DILocation(line: 337, column: 17, scope: !93)
!113 = !DILocation(line: 330, column: 17, scope: !4)
!114 = !DILocation(line: 338, column: 52, scope: !93)
!115 = !DILocation(line: 338, column: 36, scope: !93)
!116 = !DILocation(line: 338, column: 48, scope: !93)
!117 = !DILocation(line: 339, column: 50, scope: !93)
!118 = !DILocation(line: 339, column: 47, scope: !93)
!119 = !DILocation(line: 339, column: 11, scope: !93)
!120 = !DILocation(line: 339, column: 44, scope: !93)
!121 = !DILocation(line: 348, column: 20, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 346, column: 2)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 345, column: 7)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 345, column: 7)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 344, column: 5)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 343, column: 3)
!127 = distinct !DILexicalBlock(scope: !4, file: !1, line: 343, column: 3)
!128 = !DILocation(line: 345, column: 7, scope: !124)
!129 = !DILocation(line: 348, column: 6, scope: !122)
!130 = !DILocation(line: 347, column: 4, scope: !122)
!131 = !DILocation(line: 347, column: 20, scope: !122)
!132 = !{!102, !102, i64 0}
!133 = !DILocation(line: 350, column: 6, scope: !122)
!134 = !DILocation(line: 349, column: 4, scope: !122)
!135 = !DILocation(line: 349, column: 20, scope: !122)
!136 = !DILocation(line: 352, column: 6, scope: !122)
!137 = !DILocation(line: 351, column: 4, scope: !122)
!138 = !DILocation(line: 351, column: 20, scope: !122)
!139 = !DILocation(line: 354, column: 6, scope: !122)
!140 = !DILocation(line: 353, column: 4, scope: !122)
!141 = !DILocation(line: 353, column: 20, scope: !122)
!142 = !DILocation(line: 356, column: 6, scope: !122)
!143 = !DILocation(line: 355, column: 4, scope: !122)
!144 = !DILocation(line: 355, column: 20, scope: !122)
!145 = !DILocation(line: 343, column: 3, scope: !127)
!146 = !DILocation(line: 359, column: 1, scope: !4)
!147 = !DILocation(line: 361, column: 15, scope: !13)
!148 = !DILocation(line: 361, column: 26, scope: !13)
!149 = !DILocation(line: 366, column: 7, scope: !13)
!150 = !DILocation(line: 372, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !13, file: !1, line: 372, column: 7)
!152 = !DILocation(line: 372, column: 7, scope: !13)
!153 = !DILocation(line: 374, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 373, column: 5)
!155 = !DILocation(line: 374, column: 7, scope: !154)
!156 = !DILocation(line: 378, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 377, column: 5)
!158 = distinct !DILexicalBlock(scope: !151, file: !1, line: 376, column: 12)
!159 = !DILocation(line: 378, column: 7, scope: !157)
!160 = !DILocation(line: 382, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 381, column: 5)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 380, column: 12)
!163 = !DILocation(line: 382, column: 7, scope: !161)
!164 = !DILocation(line: 367, column: 7, scope: !13)
!165 = !DILocation(line: 385, column: 12, scope: !13)
!166 = !DILocation(line: 387, column: 3, scope: !13)
!167 = !DILocation(line: 389, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !13, file: !1, line: 389, column: 6)
!169 = !DILocation(line: 389, column: 6, scope: !13)
!170 = !DILocation(line: 391, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 391, column: 11)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 390, column: 5)
!173 = !DILocation(line: 391, column: 25, scope: !171)
!174 = !DILocation(line: 391, column: 38, scope: !171)
!175 = !DILocation(line: 392, column: 14, scope: !172)
!176 = !DILocation(line: 391, column: 11, scope: !172)
!177 = !DILocation(line: 397, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !13, file: !1, line: 397, column: 7)
!179 = !DILocation(line: 397, column: 7, scope: !13)
!180 = !DILocation(line: 400, column: 11, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 400, column: 11)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 398, column: 5)
!183 = !DILocation(line: 400, column: 28, scope: !181)
!184 = !DILocation(line: 400, column: 25, scope: !181)
!185 = !DILocation(line: 400, column: 11, scope: !182)
!186 = !DILocation(line: 402, column: 8, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 402, column: 8)
!188 = distinct !DILexicalBlock(scope: !181, file: !1, line: 401, column: 2)
!189 = !DILocation(line: 402, column: 24, scope: !187)
!190 = !DILocation(line: 402, column: 43, scope: !187)
!191 = !DILocation(line: 402, column: 31, scope: !187)
!192 = !DILocation(line: 411, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 408, column: 6)
!194 = distinct !DILexicalBlock(scope: !187, file: !1, line: 407, column: 13)
!195 = !DILocation(line: 422, column: 10, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 422, column: 8)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 421, column: 2)
!198 = distinct !DILexicalBlock(scope: !182, file: !1, line: 420, column: 11)
!199 = !DILocation(line: 422, column: 27, scope: !196)
!200 = !DILocation(line: 422, column: 46, scope: !196)
!201 = !DILocation(line: 422, column: 34, scope: !196)
!202 = !DILocation(line: 431, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !1, line: 428, column: 6)
!204 = distinct !DILexicalBlock(scope: !196, file: !1, line: 427, column: 13)
!205 = !DILocation(line: 365, column: 10, scope: !13)
!206 = !DILocation(line: 365, column: 13, scope: !13)
!207 = !DILocation(line: 447, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 447, column: 3)
!209 = distinct !DILexicalBlock(scope: !13, file: !1, line: 447, column: 3)
!210 = !DILocation(line: 447, column: 24, scope: !208)
!211 = !DILocation(line: 447, column: 3, scope: !209)
!212 = !DILocation(line: 522, column: 23, scope: !13)
!213 = !DILocation(line: 523, column: 23, scope: !13)
!214 = !DILocation(line: 459, column: 24, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 455, column: 23)
!216 = distinct !DILexicalBlock(scope: !208, file: !1, line: 447, column: 46)
!217 = !DILocation(line: 459, column: 11, scope: !215)
!218 = !DILocation(line: 465, column: 24, scope: !215)
!219 = !DILocation(line: 465, column: 11, scope: !215)
!220 = !DILocation(line: 448, column: 9, scope: !216)
!221 = !DILocation(line: 365, column: 7, scope: !13)
!222 = !DILocation(line: 450, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !1, line: 450, column: 9)
!224 = !DILocation(line: 450, column: 9, scope: !216)
!225 = !DILocation(line: 453, column: 8, scope: !223)
!226 = !DILocation(line: 455, column: 13, scope: !216)
!227 = !DILocation(line: 455, column: 5, scope: !216)
!228 = !DILocation(line: 457, column: 8, scope: !215)
!229 = !DILocation(line: 458, column: 11, scope: !215)
!230 = !DILocation(line: 458, column: 25, scope: !215)
!231 = !DILocation(line: 458, column: 8, scope: !215)
!232 = !DILocation(line: 459, column: 8, scope: !215)
!233 = !DILocation(line: 460, column: 2, scope: !215)
!234 = !DILocation(line: 463, column: 8, scope: !215)
!235 = !DILocation(line: 464, column: 11, scope: !215)
!236 = !DILocation(line: 464, column: 25, scope: !215)
!237 = !DILocation(line: 464, column: 8, scope: !215)
!238 = !DILocation(line: 465, column: 8, scope: !215)
!239 = !DILocation(line: 466, column: 2, scope: !215)
!240 = !DILocation(line: 469, column: 8, scope: !215)
!241 = !DILocation(line: 470, column: 11, scope: !215)
!242 = !DILocation(line: 470, column: 25, scope: !215)
!243 = !DILocation(line: 470, column: 8, scope: !215)
!244 = !DILocation(line: 471, column: 11, scope: !215)
!245 = !DILocation(line: 471, column: 8, scope: !215)
!246 = !DILocation(line: 472, column: 2, scope: !215)
!247 = !DILocation(line: 475, column: 8, scope: !215)
!248 = !DILocation(line: 476, column: 11, scope: !215)
!249 = !DILocation(line: 476, column: 25, scope: !215)
!250 = !DILocation(line: 476, column: 8, scope: !215)
!251 = !DILocation(line: 477, column: 11, scope: !215)
!252 = !DILocation(line: 477, column: 8, scope: !215)
!253 = !DILocation(line: 478, column: 2, scope: !215)
!254 = !DILocation(line: 481, column: 8, scope: !215)
!255 = !DILocation(line: 482, column: 11, scope: !215)
!256 = !DILocation(line: 482, column: 25, scope: !215)
!257 = !DILocation(line: 482, column: 8, scope: !215)
!258 = !DILocation(line: 483, column: 11, scope: !215)
!259 = !DILocation(line: 483, column: 8, scope: !215)
!260 = !DILocation(line: 484, column: 2, scope: !215)
!261 = !DILocation(line: 487, column: 8, scope: !215)
!262 = !DILocation(line: 488, column: 11, scope: !215)
!263 = !DILocation(line: 488, column: 25, scope: !215)
!264 = !DILocation(line: 488, column: 8, scope: !215)
!265 = !DILocation(line: 489, column: 11, scope: !215)
!266 = !DILocation(line: 489, column: 8, scope: !215)
!267 = !DILocation(line: 490, column: 2, scope: !215)
!268 = !DILocation(line: 493, column: 8, scope: !215)
!269 = !DILocation(line: 494, column: 11, scope: !215)
!270 = !DILocation(line: 494, column: 27, scope: !215)
!271 = !DILocation(line: 494, column: 8, scope: !215)
!272 = !DILocation(line: 495, column: 11, scope: !215)
!273 = !DILocation(line: 495, column: 8, scope: !215)
!274 = !DILocation(line: 496, column: 2, scope: !215)
!275 = !DILocation(line: 499, column: 8, scope: !215)
!276 = !DILocation(line: 500, column: 11, scope: !215)
!277 = !DILocation(line: 500, column: 27, scope: !215)
!278 = !DILocation(line: 500, column: 8, scope: !215)
!279 = !DILocation(line: 501, column: 11, scope: !215)
!280 = !DILocation(line: 501, column: 8, scope: !215)
!281 = !DILocation(line: 502, column: 2, scope: !215)
!282 = !DILocation(line: 505, column: 8, scope: !215)
!283 = !DILocation(line: 506, column: 11, scope: !215)
!284 = !DILocation(line: 506, column: 26, scope: !215)
!285 = !DILocation(line: 506, column: 8, scope: !215)
!286 = !DILocation(line: 507, column: 11, scope: !215)
!287 = !DILocation(line: 507, column: 8, scope: !215)
!288 = !DILocation(line: 508, column: 2, scope: !215)
!289 = !DILocation(line: 511, column: 8, scope: !215)
!290 = !DILocation(line: 512, column: 11, scope: !215)
!291 = !DILocation(line: 512, column: 26, scope: !215)
!292 = !DILocation(line: 512, column: 8, scope: !215)
!293 = !DILocation(line: 513, column: 11, scope: !215)
!294 = !DILocation(line: 513, column: 8, scope: !215)
!295 = !DILocation(line: 514, column: 2, scope: !215)
!296 = !DILocation(line: 522, column: 12, scope: !13)
!297 = !DILocation(line: 522, column: 34, scope: !13)
!298 = !DILocation(line: 522, column: 9, scope: !13)
!299 = !DILocation(line: 523, column: 12, scope: !13)
!300 = !DILocation(line: 523, column: 34, scope: !13)
!301 = !DILocation(line: 523, column: 9, scope: !13)
!302 = !DILocation(line: 528, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !13, file: !1, line: 528, column: 7)
!304 = !DILocation(line: 528, column: 25, scope: !303)
!305 = !DILocation(line: 528, column: 22, scope: !303)
!306 = !DILocation(line: 530, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 529, column: 3)
!308 = !DILocation(line: 531, column: 3, scope: !307)
!309 = !DILocation(line: 532, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !13, file: !1, line: 532, column: 7)
!311 = !DILocation(line: 532, column: 25, scope: !310)
!312 = !DILocation(line: 532, column: 22, scope: !310)
!313 = !DILocation(line: 534, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !1, line: 533, column: 3)
!315 = !DILocation(line: 535, column: 3, scope: !314)
!316 = !DILocation(line: 538, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !13, file: !1, line: 538, column: 7)
!318 = !DILocation(line: 538, column: 31, scope: !317)
!319 = !DILocation(line: 538, column: 18, scope: !317)
!320 = !DILocation(line: 539, column: 11, scope: !317)
!321 = !DILocation(line: 539, column: 5, scope: !317)
!322 = !DILocation(line: 540, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !13, file: !1, line: 540, column: 7)
!324 = !DILocation(line: 540, column: 31, scope: !323)
!325 = !DILocation(line: 540, column: 18, scope: !323)
!326 = !DILocation(line: 541, column: 11, scope: !323)
!327 = !DILocation(line: 541, column: 5, scope: !323)
!328 = !DILocation(line: 542, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !13, file: !1, line: 542, column: 7)
!330 = !DILocation(line: 542, column: 32, scope: !329)
!331 = !DILocation(line: 542, column: 19, scope: !329)
!332 = !DILocation(line: 543, column: 11, scope: !329)
!333 = !DILocation(line: 543, column: 5, scope: !329)
!334 = !DILocation(line: 544, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !13, file: !1, line: 544, column: 7)
!336 = !DILocation(line: 544, column: 32, scope: !335)
!337 = !DILocation(line: 544, column: 19, scope: !335)
!338 = !DILocation(line: 545, column: 11, scope: !335)
!339 = !DILocation(line: 545, column: 5, scope: !335)
!340 = !DILocation(line: 548, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !13, file: !1, line: 548, column: 7)
!342 = !DILocation(line: 548, column: 7, scope: !13)
!343 = !DILocation(line: 553, column: 23, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 553, column: 7)
!345 = distinct !DILexicalBlock(scope: !341, file: !1, line: 549, column: 3)
!346 = !DILocation(line: 555, column: 23, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 555, column: 8)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 554, column: 3)
!349 = !DILocation(line: 555, column: 8, scope: !347)
!350 = !DILocation(line: 555, column: 28, scope: !347)
!351 = !DILocation(line: 555, column: 8, scope: !348)
!352 = !DILocation(line: 555, column: 44, scope: !347)
!353 = !DILocation(line: 555, column: 38, scope: !347)
!354 = !DILocation(line: 556, column: 23, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !1, line: 556, column: 8)
!356 = !DILocation(line: 556, column: 8, scope: !355)
!357 = !DILocation(line: 556, column: 28, scope: !355)
!358 = !DILocation(line: 556, column: 8, scope: !348)
!359 = !DILocation(line: 556, column: 44, scope: !355)
!360 = !DILocation(line: 556, column: 38, scope: !355)
!361 = !DILocation(line: 557, column: 23, scope: !362)
!362 = distinct !DILexicalBlock(scope: !348, file: !1, line: 557, column: 8)
!363 = !DILocation(line: 557, column: 8, scope: !362)
!364 = !DILocation(line: 557, column: 28, scope: !362)
!365 = !DILocation(line: 557, column: 8, scope: !348)
!366 = !DILocation(line: 557, column: 44, scope: !362)
!367 = !DILocation(line: 557, column: 38, scope: !362)
!368 = !DILocation(line: 560, column: 6, scope: !348)
!369 = !DILocation(line: 562, column: 25, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 562, column: 10)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 561, column: 4)
!372 = distinct !DILexicalBlock(scope: !348, file: !1, line: 560, column: 6)
!373 = !DILocation(line: 562, column: 10, scope: !370)
!374 = !DILocation(line: 562, column: 30, scope: !370)
!375 = !DILocation(line: 562, column: 10, scope: !371)
!376 = !DILocation(line: 562, column: 46, scope: !370)
!377 = !DILocation(line: 562, column: 40, scope: !370)
!378 = !DILocation(line: 563, column: 25, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !1, line: 563, column: 10)
!380 = !DILocation(line: 563, column: 10, scope: !379)
!381 = !DILocation(line: 563, column: 30, scope: !379)
!382 = !DILocation(line: 563, column: 10, scope: !371)
!383 = !DILocation(line: 563, column: 46, scope: !379)
!384 = !DILocation(line: 563, column: 40, scope: !379)
!385 = !DILocation(line: 564, column: 25, scope: !386)
!386 = distinct !DILexicalBlock(scope: !371, file: !1, line: 564, column: 10)
!387 = !DILocation(line: 564, column: 10, scope: !386)
!388 = !DILocation(line: 564, column: 30, scope: !386)
!389 = !DILocation(line: 564, column: 10, scope: !371)
!390 = !DILocation(line: 564, column: 46, scope: !386)
!391 = !DILocation(line: 564, column: 40, scope: !386)
!392 = !DILocation(line: 568, column: 23, scope: !393)
!393 = distinct !DILexicalBlock(scope: !345, file: !1, line: 568, column: 7)
!394 = !DILocation(line: 570, column: 23, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 570, column: 8)
!396 = distinct !DILexicalBlock(scope: !393, file: !1, line: 569, column: 3)
!397 = !DILocation(line: 570, column: 8, scope: !395)
!398 = !DILocation(line: 570, column: 28, scope: !395)
!399 = !DILocation(line: 570, column: 8, scope: !396)
!400 = !DILocation(line: 570, column: 44, scope: !395)
!401 = !DILocation(line: 570, column: 38, scope: !395)
!402 = !DILocation(line: 571, column: 23, scope: !403)
!403 = distinct !DILexicalBlock(scope: !396, file: !1, line: 571, column: 8)
!404 = !DILocation(line: 571, column: 8, scope: !403)
!405 = !DILocation(line: 571, column: 28, scope: !403)
!406 = !DILocation(line: 571, column: 8, scope: !396)
!407 = !DILocation(line: 571, column: 44, scope: !403)
!408 = !DILocation(line: 571, column: 38, scope: !403)
!409 = !DILocation(line: 572, column: 23, scope: !410)
!410 = distinct !DILexicalBlock(scope: !396, file: !1, line: 572, column: 8)
!411 = !DILocation(line: 572, column: 8, scope: !410)
!412 = !DILocation(line: 572, column: 28, scope: !410)
!413 = !DILocation(line: 572, column: 8, scope: !396)
!414 = !DILocation(line: 572, column: 44, scope: !410)
!415 = !DILocation(line: 572, column: 38, scope: !410)
!416 = !DILocation(line: 575, column: 6, scope: !396)
!417 = !DILocation(line: 577, column: 25, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !1, line: 577, column: 10)
!419 = distinct !DILexicalBlock(scope: !420, file: !1, line: 576, column: 4)
!420 = distinct !DILexicalBlock(scope: !396, file: !1, line: 575, column: 6)
!421 = !DILocation(line: 577, column: 10, scope: !418)
!422 = !DILocation(line: 577, column: 30, scope: !418)
!423 = !DILocation(line: 577, column: 10, scope: !419)
!424 = !DILocation(line: 577, column: 46, scope: !418)
!425 = !DILocation(line: 577, column: 40, scope: !418)
!426 = !DILocation(line: 578, column: 25, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !1, line: 578, column: 10)
!428 = !DILocation(line: 578, column: 10, scope: !427)
!429 = !DILocation(line: 578, column: 30, scope: !427)
!430 = !DILocation(line: 578, column: 10, scope: !419)
!431 = !DILocation(line: 578, column: 46, scope: !427)
!432 = !DILocation(line: 578, column: 40, scope: !427)
!433 = !DILocation(line: 579, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !419, file: !1, line: 579, column: 10)
!435 = !DILocation(line: 579, column: 10, scope: !434)
!436 = !DILocation(line: 579, column: 30, scope: !434)
!437 = !DILocation(line: 579, column: 10, scope: !419)
!438 = !DILocation(line: 579, column: 46, scope: !434)
!439 = !DILocation(line: 579, column: 40, scope: !434)
!440 = !DILocation(line: 583, column: 7, scope: !345)
!441 = !DILocation(line: 585, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 584, column: 5)
!443 = distinct !DILexicalBlock(scope: !345, file: !1, line: 583, column: 7)
!444 = !DILocation(line: 586, column: 28, scope: !445)
!445 = distinct !DILexicalBlock(scope: !442, file: !1, line: 586, column: 11)
!446 = !DILocation(line: 586, column: 11, scope: !442)
!447 = !DILocation(line: 587, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !1, line: 587, column: 11)
!449 = !DILocation(line: 587, column: 11, scope: !442)
!450 = !DILocation(line: 587, column: 28, scope: !448)
!451 = !DILocation(line: 587, column: 22, scope: !448)
!452 = !DILocation(line: 588, column: 11, scope: !453)
!453 = distinct !DILexicalBlock(scope: !442, file: !1, line: 588, column: 11)
!454 = !DILocation(line: 588, column: 11, scope: !442)
!455 = !DILocation(line: 588, column: 28, scope: !453)
!456 = !DILocation(line: 588, column: 22, scope: !453)
!457 = !DILocation(line: 589, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !442, file: !1, line: 589, column: 11)
!459 = !DILocation(line: 589, column: 11, scope: !442)
!460 = !DILocation(line: 589, column: 28, scope: !458)
!461 = !DILocation(line: 589, column: 22, scope: !458)
!462 = !DILocation(line: 591, column: 7, scope: !345)
!463 = !DILocation(line: 593, column: 13, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 592, column: 5)
!465 = distinct !DILexicalBlock(scope: !345, file: !1, line: 591, column: 7)
!466 = !DILocation(line: 594, column: 28, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 594, column: 11)
!468 = !DILocation(line: 594, column: 11, scope: !464)
!469 = !DILocation(line: 595, column: 11, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !1, line: 595, column: 11)
!471 = !DILocation(line: 595, column: 11, scope: !464)
!472 = !DILocation(line: 595, column: 28, scope: !470)
!473 = !DILocation(line: 595, column: 22, scope: !470)
!474 = !DILocation(line: 596, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !464, file: !1, line: 596, column: 11)
!476 = !DILocation(line: 596, column: 11, scope: !464)
!477 = !DILocation(line: 596, column: 28, scope: !475)
!478 = !DILocation(line: 596, column: 22, scope: !475)
!479 = !DILocation(line: 597, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !464, file: !1, line: 597, column: 11)
!481 = !DILocation(line: 597, column: 11, scope: !464)
!482 = !DILocation(line: 597, column: 28, scope: !480)
!483 = !DILocation(line: 597, column: 22, scope: !480)
!484 = !DILocation(line: 603, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !345, file: !1, line: 603, column: 7)
!486 = !DILocation(line: 603, column: 18, scope: !485)
!487 = !DILocation(line: 603, column: 28, scope: !485)
!488 = !DILocation(line: 603, column: 32, scope: !485)
!489 = !DILocation(line: 603, column: 42, scope: !485)
!490 = !DILocation(line: 603, column: 64, scope: !485)
!491 = !DILocation(line: 603, column: 51, scope: !485)
!492 = !DILocation(line: 604, column: 13, scope: !485)
!493 = !DILocation(line: 604, column: 7, scope: !485)
!494 = !DILocation(line: 605, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !345, file: !1, line: 605, column: 7)
!496 = !DILocation(line: 605, column: 18, scope: !495)
!497 = !DILocation(line: 605, column: 28, scope: !495)
!498 = !DILocation(line: 605, column: 32, scope: !495)
!499 = !DILocation(line: 605, column: 42, scope: !495)
!500 = !DILocation(line: 605, column: 64, scope: !495)
!501 = !DILocation(line: 605, column: 51, scope: !495)
!502 = !DILocation(line: 606, column: 13, scope: !495)
!503 = !DILocation(line: 606, column: 7, scope: !495)
!504 = !DILocation(line: 614, column: 23, scope: !505)
!505 = distinct !DILexicalBlock(scope: !345, file: !1, line: 614, column: 7)
!506 = !DILocation(line: 614, column: 7, scope: !505)
!507 = !DILocation(line: 614, column: 38, scope: !505)
!508 = !DILocation(line: 616, column: 13, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 615, column: 5)
!510 = !DILocation(line: 617, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !1, line: 617, column: 11)
!512 = !DILocation(line: 617, column: 11, scope: !509)
!513 = !DILocation(line: 618, column: 15, scope: !511)
!514 = !DILocation(line: 618, column: 8, scope: !511)
!515 = !DILocation(line: 618, column: 2, scope: !511)
!516 = !DILocation(line: 620, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !345, file: !1, line: 620, column: 7)
!518 = !DILocation(line: 620, column: 23, scope: !517)
!519 = !DILocation(line: 620, column: 7, scope: !517)
!520 = !DILocation(line: 620, column: 38, scope: !517)
!521 = !DILocation(line: 622, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 621, column: 5)
!523 = !DILocation(line: 623, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !522, file: !1, line: 623, column: 11)
!525 = !DILocation(line: 623, column: 11, scope: !522)
!526 = !DILocation(line: 624, column: 15, scope: !524)
!527 = !DILocation(line: 624, column: 8, scope: !524)
!528 = !DILocation(line: 624, column: 2, scope: !524)
!529 = !DILocation(line: 630, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !345, file: !1, line: 630, column: 7)
!531 = !DILocation(line: 630, column: 29, scope: !530)
!532 = !DILocation(line: 630, column: 79, scope: !530)
!533 = !DILocation(line: 630, column: 7, scope: !345)
!534 = !DILocation(line: 632, column: 11, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 632, column: 11)
!536 = distinct !DILexicalBlock(scope: !530, file: !1, line: 631, column: 5)
!537 = !DILocation(line: 632, column: 21, scope: !535)
!538 = !DILocation(line: 632, column: 11, scope: !536)
!539 = !DILocation(line: 632, column: 37, scope: !535)
!540 = !DILocation(line: 632, column: 31, scope: !535)
!541 = !DILocation(line: 633, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !1, line: 633, column: 11)
!543 = !DILocation(line: 633, column: 11, scope: !536)
!544 = !DILocation(line: 633, column: 37, scope: !542)
!545 = !DILocation(line: 633, column: 31, scope: !542)
!546 = !DILocation(line: 634, column: 42, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !1, line: 634, column: 16)
!548 = !DILocation(line: 634, column: 36, scope: !547)
!549 = !DILocation(line: 636, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !345, file: !1, line: 636, column: 7)
!551 = !DILocation(line: 636, column: 29, scope: !550)
!552 = !DILocation(line: 636, column: 79, scope: !550)
!553 = !DILocation(line: 636, column: 7, scope: !345)
!554 = !DILocation(line: 638, column: 11, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 638, column: 11)
!556 = distinct !DILexicalBlock(scope: !550, file: !1, line: 637, column: 5)
!557 = !DILocation(line: 638, column: 21, scope: !555)
!558 = !DILocation(line: 638, column: 11, scope: !556)
!559 = !DILocation(line: 638, column: 37, scope: !555)
!560 = !DILocation(line: 638, column: 31, scope: !555)
!561 = !DILocation(line: 639, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !1, line: 639, column: 11)
!563 = !DILocation(line: 639, column: 11, scope: !556)
!564 = !DILocation(line: 639, column: 37, scope: !562)
!565 = !DILocation(line: 639, column: 31, scope: !562)
!566 = !DILocation(line: 640, column: 42, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 640, column: 16)
!568 = !DILocation(line: 640, column: 36, scope: !567)
!569 = !DILocation(line: 645, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !345, file: !1, line: 645, column: 7)
!571 = !DILocation(line: 645, column: 7, scope: !345)
!572 = !DILocation(line: 646, column: 17, scope: !570)
!573 = !DILocation(line: 646, column: 11, scope: !570)
!574 = !DILocation(line: 646, column: 5, scope: !570)
!575 = !DILocation(line: 647, column: 12, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !1, line: 647, column: 12)
!577 = !DILocation(line: 647, column: 12, scope: !570)
!578 = !DILocation(line: 648, column: 17, scope: !576)
!579 = !DILocation(line: 648, column: 11, scope: !576)
!580 = !DILocation(line: 648, column: 5, scope: !576)
!581 = !DILocation(line: 653, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !345, file: !1, line: 653, column: 7)
!583 = !DILocation(line: 653, column: 17, scope: !582)
!584 = !DILocation(line: 653, column: 7, scope: !345)
!585 = !DILocation(line: 655, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !582, file: !1, line: 654, column: 5)
!587 = !DILocation(line: 656, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !1, line: 656, column: 11)
!589 = !DILocation(line: 656, column: 11, scope: !586)
!590 = !DILocation(line: 656, column: 37, scope: !588)
!591 = !DILocation(line: 656, column: 31, scope: !588)
!592 = !DILocation(line: 657, column: 11, scope: !593)
!593 = distinct !DILexicalBlock(scope: !586, file: !1, line: 657, column: 11)
!594 = !DILocation(line: 657, column: 21, scope: !593)
!595 = !DILocation(line: 657, column: 11, scope: !586)
!596 = !DILocation(line: 657, column: 37, scope: !593)
!597 = !DILocation(line: 657, column: 31, scope: !593)
!598 = !DILocation(line: 658, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !586, file: !1, line: 658, column: 11)
!600 = !DILocation(line: 658, column: 21, scope: !599)
!601 = !DILocation(line: 658, column: 11, scope: !586)
!602 = !DILocation(line: 658, column: 39, scope: !599)
!603 = !DILocation(line: 658, column: 33, scope: !599)
!604 = !DILocation(line: 660, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !345, file: !1, line: 660, column: 7)
!606 = !DILocation(line: 660, column: 17, scope: !605)
!607 = !DILocation(line: 660, column: 7, scope: !345)
!608 = !DILocation(line: 662, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !1, line: 661, column: 5)
!610 = !DILocation(line: 663, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !1, line: 663, column: 11)
!612 = !DILocation(line: 663, column: 11, scope: !609)
!613 = !DILocation(line: 663, column: 37, scope: !611)
!614 = !DILocation(line: 663, column: 31, scope: !611)
!615 = !DILocation(line: 664, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !609, file: !1, line: 664, column: 11)
!617 = !DILocation(line: 664, column: 21, scope: !616)
!618 = !DILocation(line: 664, column: 11, scope: !609)
!619 = !DILocation(line: 664, column: 37, scope: !616)
!620 = !DILocation(line: 664, column: 31, scope: !616)
!621 = !DILocation(line: 665, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !609, file: !1, line: 665, column: 11)
!623 = !DILocation(line: 665, column: 21, scope: !622)
!624 = !DILocation(line: 665, column: 11, scope: !609)
!625 = !DILocation(line: 665, column: 38, scope: !622)
!626 = !DILocation(line: 665, column: 32, scope: !622)
!627 = !DILocation(line: 671, column: 8, scope: !628)
!628 = distinct !DILexicalBlock(scope: !345, file: !1, line: 671, column: 7)
!629 = !DILocation(line: 671, column: 18, scope: !628)
!630 = !DILocation(line: 671, column: 44, scope: !628)
!631 = !DILocation(line: 671, column: 30, scope: !628)
!632 = !DILocation(line: 673, column: 13, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !1, line: 672, column: 5)
!634 = !DILocation(line: 674, column: 21, scope: !635)
!635 = distinct !DILexicalBlock(scope: !633, file: !1, line: 674, column: 11)
!636 = !DILocation(line: 674, column: 11, scope: !633)
!637 = !DILocation(line: 676, column: 10, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !1, line: 675, column: 2)
!639 = !DILocation(line: 677, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !1, line: 677, column: 8)
!641 = !DILocation(line: 677, column: 18, scope: !640)
!642 = !DILocation(line: 677, column: 40, scope: !640)
!643 = !DILocation(line: 677, column: 27, scope: !640)
!644 = !DILocation(line: 677, column: 62, scope: !640)
!645 = !DILocation(line: 678, column: 14, scope: !640)
!646 = !DILocation(line: 678, column: 8, scope: !640)
!647 = !DILocation(line: 681, column: 8, scope: !648)
!648 = distinct !DILexicalBlock(scope: !345, file: !1, line: 681, column: 7)
!649 = !DILocation(line: 681, column: 18, scope: !648)
!650 = !DILocation(line: 681, column: 44, scope: !648)
!651 = !DILocation(line: 681, column: 30, scope: !648)
!652 = !DILocation(line: 683, column: 13, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !1, line: 682, column: 5)
!654 = !DILocation(line: 684, column: 21, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !1, line: 684, column: 11)
!656 = !DILocation(line: 684, column: 11, scope: !653)
!657 = !DILocation(line: 686, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !1, line: 685, column: 2)
!659 = !DILocation(line: 687, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !1, line: 687, column: 8)
!661 = !DILocation(line: 687, column: 18, scope: !660)
!662 = !DILocation(line: 687, column: 40, scope: !660)
!663 = !DILocation(line: 687, column: 27, scope: !660)
!664 = !DILocation(line: 687, column: 62, scope: !660)
!665 = !DILocation(line: 688, column: 12, scope: !660)
!666 = !DILocation(line: 688, column: 6, scope: !660)
!667 = !DILocation(line: 693, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !13, file: !1, line: 693, column: 7)
!669 = !DILocation(line: 693, column: 7, scope: !13)
!670 = !DILocation(line: 733, column: 13, scope: !13)
!671 = !DILocation(line: 733, column: 9, scope: !13)
!672 = !DILocation(line: 368, column: 15, scope: !13)
!673 = !DILocation(line: 368, column: 7, scope: !13)
!674 = !DILocation(line: 698, column: 19, scope: !675)
!675 = distinct !DILexicalBlock(scope: !668, file: !1, line: 694, column: 3)
!676 = !DILocation(line: 699, column: 19, scope: !675)
!677 = !DILocation(line: 700, column: 19, scope: !675)
!678 = !DILocation(line: 699, column: 16, scope: !675)
!679 = !DILocation(line: 701, column: 19, scope: !675)
!680 = !DILocation(line: 700, column: 16, scope: !675)
!681 = !DILocation(line: 702, column: 19, scope: !675)
!682 = !DILocation(line: 701, column: 16, scope: !675)
!683 = !DILocation(line: 703, column: 19, scope: !675)
!684 = !DILocation(line: 702, column: 16, scope: !675)
!685 = !DILocation(line: 704, column: 19, scope: !675)
!686 = !DILocation(line: 703, column: 16, scope: !675)
!687 = !DILocation(line: 705, column: 19, scope: !675)
!688 = !DILocation(line: 704, column: 16, scope: !675)
!689 = !DILocation(line: 705, column: 16, scope: !675)
!690 = !DILocation(line: 707, column: 31, scope: !675)
!691 = !DILocation(line: 369, column: 29, scope: !13)
!692 = !DILocation(line: 708, column: 30, scope: !693)
!693 = distinct !DILexicalBlock(scope: !675, file: !1, line: 708, column: 9)
!694 = !DILocation(line: 708, column: 9, scope: !675)
!695 = !DILocation(line: 707, column: 48, scope: !675)
!696 = !DILocation(line: 709, column: 35, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !1, line: 709, column: 14)
!698 = !DILocation(line: 709, column: 14, scope: !693)
!699 = !DILocation(line: 711, column: 15, scope: !675)
!700 = !DILocation(line: 715, column: 19, scope: !675)
!701 = !DILocation(line: 716, column: 19, scope: !675)
!702 = !DILocation(line: 717, column: 19, scope: !675)
!703 = !DILocation(line: 716, column: 16, scope: !675)
!704 = !DILocation(line: 718, column: 19, scope: !675)
!705 = !DILocation(line: 717, column: 16, scope: !675)
!706 = !DILocation(line: 719, column: 19, scope: !675)
!707 = !DILocation(line: 718, column: 16, scope: !675)
!708 = !DILocation(line: 720, column: 19, scope: !675)
!709 = !DILocation(line: 719, column: 16, scope: !675)
!710 = !DILocation(line: 721, column: 19, scope: !675)
!711 = !DILocation(line: 720, column: 16, scope: !675)
!712 = !DILocation(line: 722, column: 19, scope: !675)
!713 = !DILocation(line: 721, column: 16, scope: !675)
!714 = !DILocation(line: 722, column: 16, scope: !675)
!715 = !DILocation(line: 724, column: 29, scope: !675)
!716 = !DILocation(line: 369, column: 7, scope: !13)
!717 = !DILocation(line: 725, column: 30, scope: !718)
!718 = distinct !DILexicalBlock(scope: !675, file: !1, line: 725, column: 9)
!719 = !DILocation(line: 725, column: 9, scope: !675)
!720 = !DILocation(line: 724, column: 45, scope: !675)
!721 = !DILocation(line: 726, column: 35, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !1, line: 726, column: 14)
!723 = !DILocation(line: 726, column: 14, scope: !718)
!724 = !DILocation(line: 728, column: 15, scope: !675)
!725 = !DILocation(line: 728, column: 12, scope: !675)
!726 = !DILocation(line: 730, column: 11, scope: !675)
!727 = !DILocation(line: 731, column: 3, scope: !675)
!728 = !DILocation(line: 733, column: 31, scope: !13)
!729 = !DILocation(line: 733, column: 29, scope: !13)
!730 = !DILocation(line: 735, column: 3, scope: !13)
!731 = !DILocation(line: 738, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !13, file: !1, line: 738, column: 7)
!733 = !DILocation(line: 738, column: 21, scope: !732)
!734 = !DILocation(line: 739, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !1, line: 738, column: 27)
!736 = !DILocation(line: 742, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !1, line: 741, column: 8)
!738 = !DILocation(line: 738, column: 7, scope: !13)
!739 = !DILocation(line: 745, column: 1, scope: !13)
