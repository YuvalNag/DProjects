module JackTokenizer;
import Terminals;
import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;



public class JackTokenizer{

	File jackFile;
	Tokens currentTokenKind;
	string currentTokenValue;
	char[] buff;
	char currentChar;


public:
	this(string path)
	{
		jackFile=File(chomp(path),"r");
		buff=new char[1];
		nextChar();
	}

	void nextChar(){

		buff=jackFile.rawRead(buff);
		if(buff.length==1)
			currentChar=buff[0];
	}
 bool hasMoreTokens(){

	while(!jackFile.eof()&&isWhite(currentChar))
		nextChar();

	if(jackFile.eof())
		return false;

	return true;
	
 }

 void advance()
 {
	
    currentTokenValue="";

	while(hasMoreTokens())
	{
		 if(currentChar=='/')
		{
			getComment();
			continue;
			
		}
		else if(isSymbol()){
			getSymbolTok();
			break;
		}
		else if(isNumeric(to!string(currentChar)))
		{
			getNumberTok();
			break;
		}
		else if(currentChar == '"')
		{
			getStringTok();
			break;
		}
		else if(currentChar == '_')
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
	
		//writeln("<",to!string(currentTokenKind),">",currentTokenValue,"</",to!string(currentTokenKind),">");
		
	
 }

 Tokens tokenType(){return currentTokenKind;}

 string keyWord(){return toUpper(currentTokenValue);}

 char symbal(){return currentTokenValue[0];}

 string identifier(){return currentTokenValue;}

 int intVal(){return to!int(currentTokenValue);}

 string stringval(){return currentTokenValue;}

 private:
 void accumulateTokenValue()
 {
   currentTokenValue ~= to!string(currentChar);
 }
 void getComment()
 {
	accumulateTokenValue();
	nextChar();
	if(currentChar=='/')
	{
		jackFile.readln();
		nextChar();
		currentTokenValue="";
		
	}
	else if(currentChar=='*')
	{
		readComment();
		nextChar();
		currentTokenValue="";
		

	}
	
 }
 void readComment(char[] oldChar=null)
 {
	char[] endOfComment;
	string buf;
	if(oldChar==null)
	{
		endOfComment=new char[1];
	}
	else 
		endOfComment=oldChar;

	while(endOfComment[0] != '*')
		endOfComment=jackFile.rawRead(endOfComment);
	endOfComment=jackFile.rawRead(endOfComment);
	if(endOfComment[0] == '/')
		return;
	readComment(endOfComment);
	
 }

 void getSymbolTok()
 {
 	currentTokenKind=Tokens.SYMBOL;
	accumulateTokenValue();
	nextChar();
 }
 void getNumberTok()
 {
	currentTokenKind=Tokens.INT_CONST;
	while(isNumeric(to!string(currentChar)))
	{
		accumulateTokenValue();
		nextChar();
	}
 }
 void getStringTok()
 {
	currentTokenKind=Tokens.STRING_CONST;
	nextChar();
	while(currentChar != '"')
	{
		accumulateTokenValue();
		nextChar();
	}
    nextChar();
	
 }

 void getIDTok()
 {
	currentTokenKind=Tokens.IDENTIFIER;
	while(!isSymbol() && !isWhite(currentChar))
	{
		accumulateTokenValue();
		nextChar();
	}
 }

 void getKeywordTok()
 {
	while(!isSymbol() && !isWhite(currentChar))
	{
		accumulateTokenValue();
		nextChar();
		if(currentChar == '_' || isNumeric(to!string(currentChar)))
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
	switch(currentChar)
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




}
