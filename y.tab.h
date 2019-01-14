/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     EQ_OP = 258,
     NEWLINE = 259,
     STRING = 260,
     NUM = 261,
     IDENTIFIER = 262,
     ASSIGN_OP = 263,
     RECEIVE_DATA = 264,
     SEND_DATA = 265,
     RELEASE = 266,
     POWER_OP = 267,
     MULT_OP = 268,
     DIV_OP = 269,
     SUB_OP = 270,
     ADD_OP = 271,
     LARGER_OR_EQ_OP = 272,
     SMALLER_OR_EQ_OP = 273,
     LARGER_OP = 274,
     SMALLER_OP = 275,
     LEFT_PRN = 276,
     RIGHT_PRN = 277,
     NOTEQ_OP = 278,
     SCAN = 279,
     PRINT = 280,
     GRAB = 281,
     READ_DATA = 282,
     MOVE = 283,
     TURN = 284,
     VAR_TYPE = 285,
     RETURN = 286,
     RETURN_TYPE = 287,
     BOOLEAN = 288,
     OR = 289,
     AND = 290,
     IF = 291,
     THEN = 292,
     ELSE = 293,
     END_IF = 294,
     WHILE = 295,
     END_WHILE = 296,
     BEGN = 297,
     END = 298,
     COMMA = 299,
     COMMENT = 300
   };
#endif
/* Tokens.  */
#define EQ_OP 258
#define NEWLINE 259
#define STRING 260
#define NUM 261
#define IDENTIFIER 262
#define ASSIGN_OP 263
#define RECEIVE_DATA 264
#define SEND_DATA 265
#define RELEASE 266
#define POWER_OP 267
#define MULT_OP 268
#define DIV_OP 269
#define SUB_OP 270
#define ADD_OP 271
#define LARGER_OR_EQ_OP 272
#define SMALLER_OR_EQ_OP 273
#define LARGER_OP 274
#define SMALLER_OP 275
#define LEFT_PRN 276
#define RIGHT_PRN 277
#define NOTEQ_OP 278
#define SCAN 279
#define PRINT 280
#define GRAB 281
#define READ_DATA 282
#define MOVE 283
#define TURN 284
#define VAR_TYPE 285
#define RETURN 286
#define RETURN_TYPE 287
#define BOOLEAN 288
#define OR 289
#define AND 290
#define IF 291
#define THEN 292
#define ELSE 293
#define END_IF 294
#define WHILE 295
#define END_WHILE 296
#define BEGN 297
#define END 298
#define COMMA 299
#define COMMENT 300




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

