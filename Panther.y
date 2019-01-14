/*Panther.y*/
%{
    int yylex(void);
    int yylineno;
    %}
%token EQ_OP NEWLINE STRING NUM IDENTIFIER ASSIGN_OP RECEIVE_DATA SEND_DATA RELEASE
%token POWER_OP MULT_OP DIV_OP SUB_OP ADD_OP LARGER_OR_EQ_OP SMALLER_OR_EQ_OP LARGER_OP SMALLER_OP
%token LEFT_PRN RIGHT_PRN NOTEQ_OP SCAN PRINT GRAB READ_DATA MOVE TURN VAR_TYPE RETURN RETURN_TYPE
%token BOOLEAN OR AND IF THEN ELSE END_IF WHILE END_WHILE BEGN END COMMA COMMENT
%%

program: BEGN stmts END NEWLINE;

stmts: stmt NEWLINE
| stmts stmt NEWLINE;

non_if_stmt:   /*empty*/
| COMMENT
| loop_stmt
| logical_stmt
| method_declaration
| var_declaration
| assignment_stmt
| primitive_func
| io_stmt;

io_stmt: print_stmt
| scan_stmt;

print_stmt: PRINT LEFT_PRN IDENTIFIER RIGHT_PRN;

scan_stmt: SCAN LEFT_PRN IDENTIFIER RIGHT_PRN;

loop_stmt: while_stmt;

logical_stmt: and_stmt
| or_stmt;

primitive_func: MOVE
| GRAB
| RELEASE
| turn_func
| readData_func
| sendData_func
| receiveData_func;

assignment_stmt: IDENTIFIER ASSIGN_OP nonlogical_expr
| IDENTIFIER ASSIGN_OP assignment_stmt;

stmt: matched
| unmatched;

matched: IF logical_expr THEN NEWLINE matched ELSE NEWLINE matched END_IF
| non_if_stmt;

unmatched: IF logical_expr THEN NEWLINE stmts END_IF
| IF logical_expr THEN NEWLINE matched ELSE NEWLINE unmatched END_IF;

while_stmt: WHILE logical_expr THEN NEWLINE stmts END_WHILE;

nonlogical_expr: arithmetic_expr
| func_call;

expr: logical_expr
| nonlogical_expr;

and_stmt: logical_expr AND logical_expr;

or_stmt: logical_expr OR logical_expr;

logical_expr: nonlogical_expr logical_op nonlogical_expr
| nonlogical_expr logical_op BOOLEAN
| BOOLEAN;
logical_op: LARGER_OR_EQ_OP
| SMALLER_OR_EQ_OP
| LARGER_OP
| SMALLER_OP
| NOTEQ_OP
| EQ_OP;

arithmetic_expr: term  ADD_OP arithmetic_expr
| term SUB_OP arithmetic_expr
| term;

term: factor MULT_OP term
| factor  DIV_OP term
| factor;

factor: IDENTIFIER POWER_OP factor
| num_ident;

var_declaration: VAR_TYPE IDENTIFIER;

method_declaration: RETURN_TYPE IDENTIFIER LEFT_PRN parameter_list RIGHT_PRN BEGN NEWLINE stmts return_stmt END;

return_stmt: RETURN expr
| RETURN;

parameter_list: parameter
| parameter COMMA parameter_list;

parameter: VAR_TYPE IDENTIFIER;

func_call: IDENTIFIER LEFT_PRN args RIGHT_PRN NEWLINE;

args: all_ident
| all_ident COMMA args;

turn_func: TURN LEFT_PRN num_ident RIGHT_PRN;

sendData_func: SEND_DATA LEFT_PRN num_ident COMMA string_ident RIGHT_PRN;

receiveData_func: RECEIVE_DATA LEFT_PRN num_ident RIGHT_PRN;

readData_func: READ_DATA LEFT_PRN num_ident RIGHT_PRN;

num_ident: IDENTIFIER | NUM;

string_ident: IDENTIFIER | STRING;

all_ident: IDENTIFIER | NUM | STRING | BOOLEAN;

%%
#include "lex.yy.c"
yyerror(char *s) {
    printf( "Line %d does not belong to Panther! %s\n", yylineno, s );
}
main() {
    return yyparse();
}




