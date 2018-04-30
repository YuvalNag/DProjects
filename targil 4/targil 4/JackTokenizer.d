module JackTokenizer;
import Terminals;

import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;

import std.ascii;

public class JackTokenizer{

	File jackFile;
	Tokens currentTokenKind;
	string currentTokenValue;
	string buf;
	char[] currentChar;


public:
	this(string path)
	{
		jackFile=File(chomp(path),"r");
		currentChar=new char[1];
		currentTokenValue="";
		currentChar=jackFile.rawRead(currentChar);
		while(hasMoreTokens())
			advance();
		readln();
	}
 bool hasMoreTokens(){

	return !jackFile.eof();
	
 }

 void advance()
 {
//	buf ="";
	//buf=join([buf,to!string(currentChar[0])]);
	while(!jackFile.eof())
	{
		if(isWhite(currentChar[0])){
			currentChar=jackFile.rawRead(currentChar);
		}
		else if(isSymbol()){
			currentTokenKind=Tokens.SYMBOL;
			currentTokenValue=join([currentTokenValue,to!string(currentChar[0])]);
			currentChar=jackFile.rawRead(currentChar);
			break;
		}
		else if(isNumeric(to!string(currentChar[0])))
		{
			getNumberTok();
			break;
		}
		else if(currentChar[0] == '"')
		{
			getStringTok();
			break;
		}
		else if(currentChar[0] == '_')
		{
			getIDTok();
			break;
		}
		else
		{	
			getKeywordTok();
			break;
		}
	}
	writeln(to!string(currentTokenKind)," ->  ", currentTokenValue);
	currentTokenValue="";
 }
 
 void getNumberTok()
 {
	currentTokenKind=Tokens.INT_CONST;
	while(isNumeric(to!string(currentChar[0])))
	{
		currentTokenValue=join([currentTokenValue,to!string(currentChar[0])]);
		currentChar=jackFile.rawRead(currentChar);
	}
 }
 void getStringTok()
 {
	currentTokenKind=Tokens.STRING_CONST;
	currentChar=jackFile.rawRead(currentChar);
	while(currentChar[0] != '"')
	{
		currentTokenValue=join([currentTokenValue,to!string(currentChar[0])]);
		currentChar=jackFile.rawRead(currentChar);
	}
    currentChar=jackFile.rawRead(currentChar);
	
 }

 void getIDTok()
 {
	currentTokenKind=Tokens.IDENTIFIER;
	while(!isSymbol() && !isWhite(currentChar[0]))
	{
		currentTokenValue=join([currentTokenValue,to!string(currentChar[0])]);
		currentChar=jackFile.rawRead(currentChar);
	}
 }

 void getKeywordTok()
 {
	while(!isSymbol() && !isWhite(currentChar[0]))
	{
		currentTokenValue=join([currentTokenValue,to!string(currentChar[0])]);
		currentChar=jackFile.rawRead(currentChar);
		if(currentChar[0] == '_' || isNumeric(to!string(currentChar[0])))
		{
			getIDTok();
			break;
		}
	}
	
	if(isKeyword())
	{
		currentTokenKind=Tokens.KEYWORD;
	}
	else
		currentTokenKind=Tokens.IDENTIFIER;
}

 bool isSymbol()
 {
	switch(currentChar[0])
	{
		case '{':
		case '}':
		case '(':
		case ')':
		case '[':
		case ']':
		case '.':
		case ',':
		case ';':
		case '+':
		case '-':
		case '*':
		case '/':
		case '&':
		case '|':
		case '<':
		case '>':
		case '=':
		case '~':	
			return true;
			break;
		
		default: 
			return false;
			break;
	}
		
 }

 bool isKeyword()
 {
	switch(currentTokenValue)
	{
	 case "class":
	 case "constructor":
	 case "function":
	 case "method":
	 case "field":
	 case "static":
	 case "var":
	 case "int":
	 case "char":
	 case "boolean":
	 case "void":
	 case "true":
	 case "false":
	 case "null":
	 case "this":
	 case "let":
	 case "do":
	 case "if":
	 case "else":
	 case "while":
	 case "return":
		return true;
		break;
	 default: 
		return false;
		break;
	}
 }
Tokens tokenType(){return currentTokenKind;}

KeyWords keyWord(){return KeyWords.BOOLEAN;}

char symbal(){return currentTokenValue[0];}

string identifier(){return currentTokenValue;}

int intVal(){return to!int(currentTokenValue);}

string stringval(){return currentTokenValue;}



}
