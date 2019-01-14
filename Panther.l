/*Panther.l*/
%{
#include "y.tab.h"
extern int yylineno;
%}
digit [0-9]
upper [A-Z]
lower [a-z]
alphabetic ({upper}|{lower}|_)
alphanumeric ({alphabetic}|{digit})
%%
begin                                  return( BEGN );
end                                    return( END );
while                                  return( WHILE );
end_while                              return( END_WHILE );
if                                     return( IF );
then                                   return( THEN );
else                                   return( ELSE );
end_if                                 return( END_IF );
and                                    return( AND );
or                                     return( OR );
true                                   return( BOOLEAN );
false                                  return( BOOLEAN );
void                                   return( RETURN_TYPE );
return                                 return( RETURN );
num                                    return( VAR_TYPE );
string                                 return( VAR_TYPE );
boolean                                return( VAR_TYPE );
move                                   return( MOVE );
turn                                   return( TURN );
readData                               return( READ_DATA );
grab                                   return( GRAB );
print                                  return( PRINT );
scan                                   return( SCAN );
,                                      return( COMMA );
\(                                     return( LEFT_PRN );
\)                                     return( RIGHT_PRN );
!\=                                    return( NOTEQ_OP );
\<                                     return( SMALLER_OP );
\>                                     return( LARGER_OP );
\<\=                                   return( SMALLER_OR_EQ_OP );
\>\=                                   return( LARGER_OR_EQ_OP );
\+                                     return( ADD_OP );
-                                      return( SUB_OP );
\/                                     return( DIV_OP );
\*                                     return( MULT_OP );
\*\*                                   return( POWER_OP );
release                                return( RELEASE );
sendData                               return( SEND_DATA );
receiveData                            return( RECEIVE_DATA );
\=                                     return( ASSIGN_OP );
{lower}{alphanumeric}*                 return( IDENTIFIER );
{digit}*(\.)?{digit}+                  return( NUM );
"\""(.|\n)*"\""                        return( STRING );
\n                                     { yylineno++; return( NEWLINE );}
\=\=                                   return( EQ_OP );
"#"({alphanumeric}|[ ])*"#"            return( COMMENT );
%%
int yywrap(void){ return 1; }
