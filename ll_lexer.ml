# 1 "ll_lexer.mll"
 
open Ll_parser        (* The type token is defined in ll_parser.mli *)

# 6 "ll_lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\236\255\237\255\238\255\012\000\240\255\241\255\242\255\
    \243\255\244\255\245\255\247\255\248\255\249\255\250\255\251\255\
    \014\000\015\000\252\255\000\000\001\000\254\255\255\255\253\255\
    \000\000\239\255\011\000\016\000";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \004\000\004\000\255\255\255\255\009\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\255\255\000\000\000\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255\255\255\000\000\255\255\255\255\000\000\000\000\000\000\
    \255\255\000\000\255\255\255\255";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\022\000\021\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \022\000\003\000\000\000\000\000\000\000\000\000\010\000\000\000\
    \014\000\013\000\011\000\009\000\018\000\004\000\023\000\000\000\
    \005\000\008\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\
    \000\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\006\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\000\000\000\000\000\000\012\000\007\000\
    \000\000\015\000\017\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\015\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\015\000\016\000\015\000\015\000\015\000\
    \015\000\015\000\015\000\025\000\020\000\027\000\026\000\007\000\
    \006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\024\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\009\000\000\000\011\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\023\000\000\000\006\000\007\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\019\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\000\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\020\000\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\255\255\255\255\000\000\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\004\000\000\000\016\000\017\000\026\000\
    \027\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\019\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\024\000\255\255\024\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\024\000\255\255\024\000\024\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \024\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 5 "ll_lexer.mll"
                                     ( token lexbuf )
# 116 "ll_lexer.ml"

  | 1 ->
# 6 "ll_lexer.mll"
                                     ( EOL )
# 121 "ll_lexer.ml"

  | 2 ->
# 7 "ll_lexer.mll"
                                       ( THESIS )
# 126 "ll_lexer.ml"

  | 3 ->
# 8 "ll_lexer.mll"
                                     ( COMMA )
# 131 "ll_lexer.ml"

  | 4 ->
let
# 9 "ll_lexer.mll"
                                   l
# 137 "ll_lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 9 "ll_lexer.mll"
                                     ( LITT (String.make 1 l) )
# 141 "ll_lexer.ml"

  | 5 ->
# 10 "ll_lexer.mll"
                                     ( LPAREN )
# 146 "ll_lexer.ml"

  | 6 ->
# 11 "ll_lexer.mll"
                                     ( RPAREN )
# 151 "ll_lexer.ml"

  | 7 ->
# 12 "ll_lexer.mll"
                                     ( ORTH )
# 156 "ll_lexer.ml"

  | 8 ->
# 13 "ll_lexer.mll"
                                       ( TENSOR )
# 161 "ll_lexer.ml"

  | 9 ->
# 14 "ll_lexer.mll"
                                     ( PAR )
# 166 "ll_lexer.ml"

  | 10 ->
# 15 "ll_lexer.mll"
                                     ( WITH )
# 171 "ll_lexer.ml"

  | 11 ->
# 16 "ll_lexer.mll"
                                       ( PLUS )
# 176 "ll_lexer.ml"

  | 12 ->
# 17 "ll_lexer.mll"
                                     ( ONE )
# 181 "ll_lexer.ml"

  | 13 ->
# 18 "ll_lexer.mll"
                                       ( BOTTOM )
# 186 "ll_lexer.ml"

  | 14 ->
# 19 "ll_lexer.mll"
                                       ( TOP )
# 191 "ll_lexer.ml"

  | 15 ->
# 20 "ll_lexer.mll"
                                     ( ZERO )
# 196 "ll_lexer.ml"

  | 16 ->
# 21 "ll_lexer.mll"
                                       ( LOLLIPOP )
# 201 "ll_lexer.ml"

  | 17 ->
# 22 "ll_lexer.mll"
                                     ( OFCOURSE )
# 206 "ll_lexer.ml"

  | 18 ->
# 23 "ll_lexer.mll"
                                     ( WHYNOT )
# 211 "ll_lexer.ml"

  | 19 ->
# 24 "ll_lexer.mll"
                                     ( EOL )
# 216 "ll_lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

