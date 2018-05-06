module CompilationEngine;

import std.stdio;
import JackTokenizer;
import std.conv;
import Terminals;
import std.xml;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;


public class CompilationEngine{
	public:
	Document doc;
	JackTokenizer jackTokenizer;
	string path;

	this(string path)
	{
		jackTokenizer =new JackTokenizer(path);
        jackTokenizer.advance();
		this.path=path;

	}

	
	void compileClass()
	{
		if(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="class")
		{
			doc = new Document(new Tag(jackTokenizer.keyWord()));
			
			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				doc ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='{')
				doc ~=new Element(to!string(jackTokenizer.tokenType()),to!string(to!string(to!string(jackTokenizer.symbol()))));

			if(!advance())
				return;

			while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="static" || jackTokenizer.keyWord() =="field"))
			{
				doc ~= compileClassVerDec();
				if(!advance())
					return;
			}

			while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="constructor" || jackTokenizer.keyWord() =="function" || jackTokenizer.keyWord() =="method"))
			{
				doc ~= compileSubroutine();
				if(!advance())
					return;
			}
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
				doc ~=new Element(to!string(jackTokenizer.tokenType()),to!string(to!string(jackTokenizer.symbol())));
		}
	}


	Element compileClassVerDec()
	{	

		Element classVerDecElement=new Element("ClassVerDec");
		classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
		
		if(!advance())
			return classVerDecElement;
		
		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean"))
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
	
		if(jackTokenizer.tokenType() == Tokens.identifier)
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return classVerDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return classVerDecElement;

		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(to!string(jackTokenizer.symbol())));

			if(!advance())
				return classVerDecElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return classVerDecElement;
		}
		
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return classVerDecElement;
	}

	Element compileSubroutine()
	{
		Element subroutineDecElement=new Element("subroutineDec");
		subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean" ||jackTokenizer.keyWord() =="void"))
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());
		
		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement ~= parameterList();


		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


		subroutineDecElement ~= subroutineBody();

		return subroutineDecElement;
	}

	Element parameterList()
	{
		Element parameterListElement=new Element("parameterList");
		parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return parameterListElement;

       	if(jackTokenizer.tokenType() == Tokens.identifier)
			parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return parameterListElement;

		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			parameterListElement ~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return parameterListElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				parameterListElement ~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return parameterListElement;
		}

       return parameterListElement;
		
	}

	Element subroutineBody(){

        Element subroutineBodyElement= new Element("subroutineBody");

		if(!advance())
			return subroutineBodyElement;
	
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='{')
			subroutineBodyElement ~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
		
		if(!advance())
			return subroutineBodyElement;

		while(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="var")
		{
			subroutineBodyElement ~= compilevarDec();
			
			if(!advance())
				return subroutineDecElement;

		}

		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
			subroutineDecElement~= compileStatements();
        


		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
			subroutineBodyElement ~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		
		
		return subroutineBodyElement;


	}


  Element compileStatements(){
	
	Element statementsElement= new Element("statements");

	while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
	{

		string keyWord=jackTokenizer.keyWord();
	    switch(keyWord){
	    	case "let":
	    		statementsElement ~= compileLet();
	    		break;
	    	case "do":
	    		statementsElement ~= compileDo();
	    		break;
	    	case "if":
	    		statementsElement ~= compileIf();
	    		break;
	    	case "while":
	    		statementsElement ~= compileWhile();
	    		break;
	    	case "return":
	    		statementsElement ~= compileReturn();
	    		break;
	    	default:
	    		break;
		}


	if(keyWord != "if"){
		if(!advance()){
			return compileStatements;
		}
	}
		
	}

	return statementsElement;
  }


  Element compileIf(){
	Element ifStatementElement= new Element("ifStatement");

	ifStatementElement ~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());


	if(!advance())
		return ifStatementElement;

	if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()=='(')
		ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


	if(!advance())
		return ifStatementElement;


	if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==')'))
			 ifStatementElement~=compileExpression();
	


	if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==')')
	   ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

	if(!advance())
		return ifStatementElement;

	if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()=='{')
		ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


	if(!advance())
		return ifStatementElement;


	if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
		ifStatementElement~= compileStatements();


	if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()=='}')
		ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


	if(!advance())
		return ifStatementElement;



	if(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord()=="else"){


		ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return ifStatementElement;

		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()=='{')
			ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


		if(!advance())
			return ifStatementElement;


		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
			ifStatementElement~= compileStatements();


		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()=='}')
			ifStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

 

		if(!advance())
			return ifStatementElement;


	}

	return ifStatementElement;

  }

  Element compileReturn(){

	Element returnStatementElement= new Element("returnStatement");

	returnStatementElement ~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

	if(!advance())
		return returnStatementElement;

	if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==';'))
		returnStatementElement ~= compileExpression();


	if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==';')
		returnStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

	return returnStatementElement;


  }


	Element compileVerDec()
	{	
		Element verDecElement=new Element("verDec");
		verDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return verDecElement;

		//type
		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean" ))
			verDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
		
		if(jackTokenizer.tokenType() == Tokens.identifier)
			verDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return verDecElement;
		
		//varName
		if(jackTokenizer.tokenType() == Tokens.identifier)
			verDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return verDecElement;

		//(, verName)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			verDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return verDecElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				verDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return verDecElement;
		
		}
		//;
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			verDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return verDecElement;

	}

	Element compileLet()
	{	
		Element letStatementElement=new Element("letStatement");
		letStatementElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return letStatementElement;
		//varName
		if(jackTokenizer.tokenType() == Tokens.identifier)
			letStatementElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return letStatementElement;
		//[
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='[')
		{	
			letStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return letStatementElement;
		

			//expression
			if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==']'))
				letStatementElement ~= compileExpression();
			//]
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==']')
				letStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return letStatementElement;
		}

		//=
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='=')
			letStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		if(!advance())
			return letStatementElement;

		//expression
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';'))
			letStatementElement ~= compileExpression();
		//;
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			letStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return letStatementElement;
	}

	Element compileWhile()
	{	
		Element whileStatementElement=new Element("whileStatement");
		whileStatementElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return whileStatementElement;
		//(
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
		{	
			whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return whileStatementElement;


			//expression
			if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
				whileStatementElement ~= compileExpression();
			//)
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
				whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return whileStatementElement;
		}

		//{
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='{')
		{	
			whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return whileStatementElement;


			//Statements
			if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}'))
				whileStatementElement ~= compileStatements();
			//}
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
				whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
		}
		
		return whileStatementElement;

	}

	Element compileDo()
	{	
		Element doStatementElement=new Element("doStatement");
		doStatementElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return doStatementElement;
		//subroutineCall
		if(jackTokenizer.tokenType() == Tokens.identifier)
			doStatementElement~= compileSubroutineCall();
		//;
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			doStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return doStatementElement;
	}


	bool advance()
	{
		if(jackTokenizer.hasMoreTokens())
		{
			jackTokenizer.advance();	
			return true;
		}
		return false;
	}
}
