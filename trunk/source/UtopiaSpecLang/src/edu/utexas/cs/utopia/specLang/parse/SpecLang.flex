package edu.utexas.cs.utopia.specLang.parse;

import com.github.jhoenicke.javacup.runtime.*;
import java.math.BigInteger;

%%

%class SpecLangLexer
%unicode
%implements com.github.jhoenicke.javacup.runtime.Scanner
%type com.github.jhoenicke.javacup.runtime.Symbol
%function next_token
%line
%column
%public

%state CONSTRAINT ARGS ATOM FUNC ARGLIST CONSTRAINT2

%{
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
    private Symbol symbol(int type, String value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
  
      private Symbol symbol(int type, int value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
  
  int parens = 0;
%} 

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
ws     = {LineTerminator} | [ \t\f]

Identifier =  [_a-zA-Z~][a-zA-Z0-9_~#\.]*
Identifier2 = [_a-zA-Z~][a-zA-Z0-9_~#\.]*
Identifier3 = [_a-zA-Z~\*][a-zA-Z0-9_~#\.]*
Int = [0-9]+
hInt = [0][xX][0-9a-fA-F]+
 
%%

/**
 * LEXICAL RULES:
 */

<YYINITIAL>{ 
	"("					{ return symbol(SpecLangSymbols.LPAR); }
	")"					{ return symbol(SpecLangSymbols.RPAR); }
	
 	"started"			{ yybegin(ATOM); return symbol(SpecLangSymbols.STARTED); }
 	"willSucceed"		{ yybegin(ATOM); return symbol(SpecLangSymbols.WILL_SUCCEED); }
	"finished"			{ yybegin(ATOM); return symbol(SpecLangSymbols.FINISHED); }
	"reverted"	    	{ yybegin(ATOM); return symbol(SpecLangSymbols.REVERTED); }
	"sent" 			    { yybegin(CONSTRAINT2); return symbol(SpecLangSymbols.SENT); }

 	"call"				{ yybegin(ARGS); return symbol(SpecLangSymbols.CALL); }
	"success"			{ yybegin(ARGS); return symbol(SpecLangSymbols.SUCCESS); }
	"outOfGas"			{ yybegin(ARGS); return symbol(SpecLangSymbols.OUT_OF_GAS); }
	"revert"			{ yybegin(ARGS); return symbol(SpecLangSymbols.REVERT); }
	"require"			{ yybegin(ARGS); return symbol(SpecLangSymbols.REQUIRE); }
	"assert"			{ yybegin(ARGS); return symbol(SpecLangSymbols.ASSERT); }
	"fail"				{ yybegin(ARGS); return symbol(SpecLangSymbols.FAILL); }		
	"callSuccess"       { yybegin(ARGS); return symbol(SpecLangSymbols.CALL_SUCCESS); }			
	"INV"       		{ yybegin(ARGS); return symbol(SpecLangSymbols.INV); }

	"{"					{ yybegin(CONSTRAINT); return symbol(SpecLangSymbols.CONSTRAINT_BEGIN); }	
	
	"[]"				{ return symbol(SpecLangSymbols.ALWAYS); }
	"<>"				{ return symbol(SpecLangSymbols.EVENTUALLY); }
	"U"					{ return symbol(SpecLangSymbols.UNTIL); }
	"R"					{ return symbol(SpecLangSymbols.RELEASE); }
	"&&"				{ return symbol(SpecLangSymbols.AND); }
	"||"				{ return symbol(SpecLangSymbols.OR); }
	"==>"				{ return symbol(SpecLangSymbols.IMPLIES); }
	"X"					{ return symbol(SpecLangSymbols.NEXT); }
	"!"					{ return symbol(SpecLangSymbols.NEG); }
	";"					{ return symbol(SpecLangSymbols.SEQ); }

	{ws}    			{ /* ignore */ }
	
	{Identifier}    	{ return symbol(SpecLangSymbols.NAME, yytext()); }
 }
 <ATOM>{
  	"("					{ yybegin(FUNC); return symbol(SpecLangSymbols.LPAR); }
 	{ws}    			{ /* ignore */ }
 }
<FUNC>{
	"("					{ yybegin(ARGLIST); return symbol(SpecLangSymbols.LPAR); }
 	")"					{ yybegin(YYINITIAL); return symbol(SpecLangSymbols.RPAR); }
	{Identifier3}    	{ return symbol(SpecLangSymbols.NAME, yytext()); } 
	","					{ parens = 0; yybegin(CONSTRAINT2); return symbol(SpecLangSymbols.ARG_SEP); }
	{ws}    			{ /* ignore */ }
}
<ARGLIST>{
	")"					{ yybegin(FUNC); return symbol(SpecLangSymbols.RPAR); }
  	","					{ return symbol(SpecLangSymbols.ARG_SEP); }
  	{Identifier2}    	{ return symbol(SpecLangSymbols.NAME, yytext()); } 
  	{ws}    			{ /* ignore */ }
}
 <ARGS>{
 	"("					{ return symbol(SpecLangSymbols.LPAR); }
 	")"					{ return symbol(SpecLangSymbols.RPAR); }
	","					{ return symbol(SpecLangSymbols.ARG_SEP); }
	"{"					{ yybegin(CONSTRAINT); return symbol(SpecLangSymbols.CONSTRAINT_BEGIN); }
 	{ws}    			{ /* ignore */ }
	{Identifier3}    	{ return symbol(SpecLangSymbols.NAME, yytext()); } 	
 }
 <CONSTRAINT2>{
 	{hInt}				{ return symbol(SpecLangSymbols.INT, new BigInteger(yytext().substring(2), 16)); }
 	{Int}				{ return symbol(SpecLangSymbols.INT, new BigInteger(yytext())); }
 	
 	"true"				{ return symbol(SpecLangSymbols.TRUE); }
	"false"				{ return symbol(SpecLangSymbols.FALSE); }
	"old"				{ return symbol(SpecLangSymbols.OLD); }
	"fsum"				{ return symbol(SpecLangSymbols.FSUM); }
	"csum"				{ return symbol(SpecLangSymbols.SUM); }	
	"sum"				{ return symbol(SpecLangSymbols.SUM); }
 	 	
 	"["					{ return symbol(SpecLangSymbols.LBRACKET); }
 	"]"					{ return symbol(SpecLangSymbols.RBRACKET); }
 	 	
 	"("					{ parens++; return symbol(SpecLangSymbols.LPAR); }
	")"					{ if(parens > 0) { parens--; } else { yybegin(YYINITIAL); } return symbol(SpecLangSymbols.RPAR); }
	","					{ return symbol(SpecLangSymbols.ARG_SEP); }
	
	"+"					{ return symbol(SpecLangSymbols.PLUS); }
	"-"					{ return symbol(SpecLangSymbols.MINUS); }
	"*"					{ return symbol(SpecLangSymbols.MULTIPLY); }
	"/"					{ return symbol(SpecLangSymbols.DIVIDE); }
		
	"&&"				{ return symbol(SpecLangSymbols.AND); }
	"||"				{ return symbol(SpecLangSymbols.OR); }
	"!"					{ return symbol(SpecLangSymbols.NEG); }
	"==>"				{ return symbol(SpecLangSymbols.IMPLIES); }

	"=="				{ return symbol(SpecLangSymbols.EQ); }
	"!="				{ return symbol(SpecLangSymbols.NEQ); }
	">"					{ return symbol(SpecLangSymbols.GT); }
	">="				{ return symbol(SpecLangSymbols.GEQ); }
	"<"					{ return symbol(SpecLangSymbols.LT); }
	"<="				{ return symbol(SpecLangSymbols.LEQ); }
	
	{ws}				{ /* ignore */ }	
	{Identifier2}    	{ return symbol(SpecLangSymbols.NAME, yytext()); }
 } 
 <CONSTRAINT>{
 	"}"					{ yybegin(YYINITIAL); return symbol(SpecLangSymbols.CONSTRAINT_END); }
 	{hInt}				{ return symbol(SpecLangSymbols.INT, new BigInteger(yytext().substring(2), 16)); }
 	{Int}				{ return symbol(SpecLangSymbols.INT, new BigInteger(yytext())); }
 	
 	"true"				{ return symbol(SpecLangSymbols.TRUE); }
	"false"				{ return symbol(SpecLangSymbols.FALSE); }
	"old"				{ return symbol(SpecLangSymbols.OLD); }
	"fsum"				{ return symbol(SpecLangSymbols.FSUM); }
	"csum"				{ return symbol(SpecLangSymbols.SUM); }		
	"sum"				{ return symbol(SpecLangSymbols.SUM); }
 	 	
 	"["					{ return symbol(SpecLangSymbols.LBRACKET); }
 	"]"					{ return symbol(SpecLangSymbols.RBRACKET); }
 	 	
 	"("					{ return symbol(SpecLangSymbols.LPAR); }
	")"					{ return symbol(SpecLangSymbols.RPAR); }
	","					{ return symbol(SpecLangSymbols.ARG_SEP); }
	
	"+"					{ return symbol(SpecLangSymbols.PLUS); }
	"-"					{ return symbol(SpecLangSymbols.MINUS); }
	"*"					{ return symbol(SpecLangSymbols.MULTIPLY); }
	"/"					{ return symbol(SpecLangSymbols.DIVIDE); }
		
	"&&"				{ return symbol(SpecLangSymbols.AND); }
	"||"				{ return symbol(SpecLangSymbols.OR); }
	"!"					{ return symbol(SpecLangSymbols.NEG); }
	"==>"				{ return symbol(SpecLangSymbols.IMPLIES); }

	"=="				{ return symbol(SpecLangSymbols.EQ); }
	"!="				{ return symbol(SpecLangSymbols.NEQ); }
	">"					{ return symbol(SpecLangSymbols.GT); }
	">="				{ return symbol(SpecLangSymbols.GEQ); }
	"<"					{ return symbol(SpecLangSymbols.LT); }
	"<="				{ return symbol(SpecLangSymbols.LEQ); }
	
	{ws}				{ /* ignore */ }	
	{Identifier2}    	{ return symbol(SpecLangSymbols.NAME, yytext()); }
 } 
 
<<EOF>>                 { return symbol(SpecLangSymbols.EOF); }
 