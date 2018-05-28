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

		auto Files = dirEntries(chomp(path), SpanMode.shallow).filter!(f => f.name.endsWith(".jack") && f.isFile);
		foreach (file; Files)
		{
			writeln("anylazing - ",baseName(file.name));
			jackTokenizer=new JackTokenizer(file.name);
			 jackTokenizer.advance();
            compileClass();
			File outFile =File(chainPath(chomp(dirName(file.name)),baseName(file.name,".jack")~"SCheck.xml"),"w");
	

			outFile.writefln(join(doc.pretty(3),"\n"));
			outFile.close();
		}

	}
	
  	void compileClass()
	{
		if(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="class")
		{
			doc = new Document(new Tag(jackTokenizer.keyWord()));
			doc ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
			
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
				//לכתוב this אם צריך
				doc ~= compileSubroutine();
				if(!advance())
					return;
			}
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
				doc ~=new Element(to!string(jackTokenizer.tokenType()),to!string(to!string(jackTokenizer.symbol())));
		}
	}
  
	// הכנסה לטבלת הסמלים כל הצהרה
  	Element compileClassVerDec()
	{	

		Element classVerDecElement=new Element("classVarDec");
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
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

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

		else if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return subroutineDecElement;

		//לשמור
		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());
		
		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		if(!advance())
			return subroutineDecElement;

		if((jackTokenizer.tokenType() == Tokens.identifier)||(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean")))
			subroutineDecElement ~= parameterList();
		else 
			subroutineDecElement ~= new Element("parameterList","\n");


		

		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


		subroutineDecElement ~= subroutineBody();

		return subroutineDecElement;
	}
  

	//כל אחד לארגומנט
  	Element parameterList()
	{
		Element parameterListElement=new Element("parameterList");


		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean"))
			parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(jackTokenizer.tokenType() == Tokens.identifier)
			parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

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

			if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean"))
				parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

			if(jackTokenizer.tokenType() == Tokens.identifier)
				parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

			if(!advance())
				return parameterListElement;


			if(jackTokenizer.tokenType() == Tokens.identifier)
				parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

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
			subroutineBodyElement ~= compileVarDec();
			
			if(!advance())
				return subroutineBodyElement;

		}

        //לכתוב function class.name nLocals

		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
			subroutineBodyElement~= compileStatements();
        


		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
			subroutineBodyElement ~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		
		
		return subroutineBodyElement;


	}
  //לכתוב גוף הפונקציה
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
  //הוספה לוקאלי
  	Element compileVarDec()
	{	
		Element varDecElement=new Element("varDec");
		varDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return varDecElement;

		//type
		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean" ))
			varDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
		
		if(jackTokenizer.tokenType() == Tokens.identifier)
			varDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return varDecElement;
		
		//varName
		if(jackTokenizer.tokenType() == Tokens.identifier)
			varDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return varDecElement;

		//(, varName)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			varDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return varDecElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				varDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return varDecElement;
		
		}
		//;
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			varDecElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return varDecElement;

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
		

		//{
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='{')	
			whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return whileStatementElement;


			//Statements
			if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}'))
				whileStatementElement ~= compileStatements();


			//}
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
				whileStatementElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
		
		
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
			compileSubroutineCall(doStatementElement);


		//;
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			doStatementElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

		return doStatementElement;
	}
  
  	void compileSubroutineCall(Element fatherElement,string PrevIdentifier=null)
	{
		if(PrevIdentifier==null)
		{
			
			if(jackTokenizer.tokenType() == Tokens.identifier)
				fatherElement ~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return;

		}



		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
		{
			fatherElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


	        if(!advance())
	        	return;
	         
	         
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	fatherElement~= compileExpressionList();
			else 
				fatherElement~= new Element("expressionList","\n");

	         
	         
	        if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
	        	fatherElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
	             
	       	
		}


		else if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='.')
		{
			fatherElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));


			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				fatherElement ~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());


			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
				fatherElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return;


			if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
				fatherElement~= compileExpressionList();
			else 
				fatherElement~= new Element("expressionList","\n");


			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
				fatherElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			
		}



		if(!advance())
			return;
		return;

		
	}

	Element compileExpression()
	{

		Element expressionElement=new Element("expression");
		expressionElement ~= compileTerm();


		while(jackTokenizer.tokenType() == Tokens.symbol && (jackTokenizer.symbol() =='+' || 
															 jackTokenizer.symbol() =='-' ||
															 jackTokenizer.symbol() =='*' ||
															 jackTokenizer.symbol() =='/' ||
															 jackTokenizer.symbol() =='&' ||
															 jackTokenizer.symbol() =='|' ||
															 jackTokenizer.symbol() =='<' ||
															 jackTokenizer.symbol() =='>' ||
															 jackTokenizer.symbol() =='=' ))
		{
            expressionElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
			
			if(!advance())
				return expressionElement;

			expressionElement ~= compileTerm();


		}
		return expressionElement;
	}

	Element compileExpressionList()
	{
		Element expressionListElement=new Element("expressionList");
		expressionListElement~=compileExpression();

		//(, expression)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			expressionListElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

			if(!advance())
				return expressionListElement;

			expressionListElement~=compileExpression();

		}

		return expressionListElement;
	}

	Element compileTerm()
	{	
		Element termElement=new Element("term");
		
		switch(jackTokenizer.tokenType())
		{
			case Tokens.integerConstant:
				termElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.intVal()));
				if(!advance())
					return termElement;
				break;
			case Tokens.stringConstant:
				termElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.stringval());
				if(!advance())
					return termElement;
				break;
			case Tokens.keyword :
				if(jackTokenizer.keyWord() =="true" || jackTokenizer.keyWord() =="false"|| jackTokenizer.keyWord() =="null" || jackTokenizer.keyWord() =="this" )
					termElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
				if(!advance())
					return termElement;
				break;
			case Tokens.symbol :
				if( jackTokenizer.symbol() =='-' || jackTokenizer.symbol() =='~')
				{
					termElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
					if(!advance())
						return termElement;
					termElement~=compileTerm();
					break;
				}
				else if( jackTokenizer.symbol() =='(')
				{
					termElement~= new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));
					if(!advance())
						return termElement;

					//expression
					if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
						termElement ~= compileExpression();
					

					//)
					if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
						termElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

					if(!advance())
						return termElement;
					break;
				}
				else
					break;
			case Tokens.identifier:
				termElement ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());
				string tempTokenValue=jackTokenizer.identifier();
				if(!advance())
					return termElement;
				
				if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='[')
				{					
					//[
					termElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

					if(!advance())
						return termElement;

					//expression
					if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==']'))
						termElement ~= compileExpression();
					//]
					if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==']')
						termElement ~=new Element(to!string(jackTokenizer.tokenType()),to!string(jackTokenizer.symbol()));

					if(!advance())
						return termElement;
					break;
				}
				else if(jackTokenizer.tokenType() == Tokens.symbol && (jackTokenizer.symbol() =='.' || jackTokenizer.symbol() =='(') )
				{	
					compileSubroutineCall(termElement,tempTokenValue);
					
					break;
				}
			break;

			default:
				break;
		}
		return termElement;

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
