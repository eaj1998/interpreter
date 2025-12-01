{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token 
    num             { TokenNum $$ }
    var             { TokenVar $$ }
    true            { TokenTrue }
    false           { TokenFalse }
    int             { TokenIntType }
    bool            { TokenBoolType }
    '+'             { TokenPlus }
    '-'             { TokenSub }
    '*'             { TokenTimes }
    "&&"            { TokenAnd }
    "||"            { TokenOr }
    "=="            { TokenEq }
    '<'             { TokenLess }
    '>'             { TokenGreater }
    '!'             { TokenNot }
    '('             { TokenLParen }
    ')'             { TokenRParen }
    '\\'            { TokenLam }
    "->"            { TokenArrow }
    ':'             { TokenColon }
    ','             { TokenComma }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }
    fst             { TokenFst }
    snd             { TokenSnd }

%right "->"
%left "||"
%left "&&"
%nonassoc "==" '<' '>'
%left '+' '-'
%left '*'
%left fst snd '!'

%% 

Exp     : '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
        | if Exp then Exp else Exp  { If $2 $4 $6 }
        | Form                      { $1 }

Form    : Form '+' Form             { Add $1 $3 }
        | Form '-' Form             { Sub $1 $3 }
        | Form '*' Form             { Mult $1 $3 }
        | Form "&&" Form            { And $1 $3 }
        | Form "||" Form            { Or $1 $3 }
        | Form "==" Form            { Eq $1 $3 }
        | Form '<' Form             { Less $1 $3 }
        | Form '>' Form             { Greater $1 $3 }
        | App                       { $1 }

App     : App Atom                  { App $1 $2 }
        | fst Atom                  { Fst $2 }
        | snd Atom                  { Snd $2 }
        | '!' Atom                  { Not $2 }
        | Atom                      { $1 }

Atom    : '(' Exp ')'               { Paren $2 }
        | '(' Exp ',' Exp ')'       { Pair $2 $4 }
        | num                       { Num $1 }
        | var                       { Var $1 }
        | true                      { BTrue }
        | false                     { BFalse }

Type    : int                       { TNum }
        | bool                      { TBool }
        | '(' Type ',' Type ')'     { TPair $2 $4 }
        | Type "->" Type            { TArrow $1 $3 }
        | '(' Type ')'              { $2 }

{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}