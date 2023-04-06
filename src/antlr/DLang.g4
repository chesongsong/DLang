grammar DLang;

program : statement* EOF;

statement : assignment
          | expression
          ;

expression : '(' expression ')'
           | expression op=('*' | '/' | '+' | '-') expression
           | IDENTIFIER
           | NUMBER
           ;

assignment : IDENTIFIER ASSIGN expression;

variable : IDENTIFIER;

NUMBER : (DIGIT+ '.' DIGIT* | '.' DIGIT+ | DIGIT+);

fragment DIGIT : [0-9];

ASSIGN : '=';
MULTIPLY : '*';
DIVIDE : '/';
ADD : '+';
SUBTRACT : '-';

IDENTIFIER : [a-zA-Z_\u4e00-\u9fa5][a-zA-Z0-9_\u4e00-\u9fa5]*;

WS : [ \t\r\n]+ -> skip;
