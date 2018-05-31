module CompilationEngine;

import std.stdio;
import JackTokenizer;
import VMWriter;
import SymbolTable;
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
	string className;
	SymbolTable symbolTable;
	VMWriter vmWriter;
	this(string path)
	{
		this.path =path;
		auto Files = dirEntries(chomp(path), SpanMode.shallow).filter!(f => f.name.endsWith(".jack") && f.isFile);
		foreach (file; Files)
		{
			writeln("anylazing - ",baseName(file.name));
			jackTokenizer=new JackTokenizer(file.name);
			jackTokenizer.advance();

            vmWriter=new VMWriter(path);
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
			symbolTable=new SymbolTable();
			
			//class

			advance();

			//className
			className=jackTokenizer.identifier();
		
			advance();

			//{

			advance();

            //classVarDec*
			while(jackTokenizer.keyWord() =="static" || jackTokenizer.keyWord() =="field")
			{
				//doc ~= compileClassVerDec();
				compileClassVerDec();
				
				advance();
			}

            //classVarDec*
			while(jackTokenizer.keyWord() =="constructor" || jackTokenizer.keyWord() =="function" || jackTokenizer.keyWord() =="method")
			{
				compileSubroutineDec();
				
				advance();
			}
			
		}
	}
  
  	void compileClassVerDec()
	{	
		Kind kind;
		string type;

		//(static | field)
		if(jackTokenizer.keyWord() =="static") 
			kind =Kind.STATIC;		
		if (jackTokenizer.keyWord() =="field")
			kind =Kind.FIELD;		
	
		
		advance();
        
		//type
		type =jackTokenizer.keyWord();
	
		advance();
		
		//varName
		symbolTable.Define(jackTokenizer.identifier(),type,kind);
		
		advance();
			
       //(,varName*)
		while(jackTokenizer.symbol() ==',')
		{
			
            // ,
			advance();

			//varName
            symbolTable.Define(jackTokenizer.identifier(),type,kind);
			
			advance();
				
		}
		
	}
  
  	void compileSubroutineDec()
	{
		string subroutineName;
		symbolTable.startSubroutine();


		if(jackTokenizer.keyWord() =="method")
			symbolTable.Define("this",className,Kind.ARG);

		advance();

		//(void | type)

		advance();

		//subroutineName
		subroutineName =jackTokenizer.identifier();

		advance();

		// (

		advance();

		//parameterList
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
			parameterList();
		

		// )



		//compile subroutineBody


		advance();

		// {

		advance();

		//varDec*
		while(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="var")
		{
			compileVarDec();

			advance();
		}

		vmWriter.writeFunction(className~"."~subroutineName,symbolTable.VarCount(Kind.VAR));

        //subroutineBody
		compileStatements();



		// }



	}
  
  	void parameterList()
	{
		Kind kind=Kind.ARG;
		string type;
		

        //type
		type=jackTokenizer.identifier();

		advance();

		//varName
		symbolTable.Define(jackTokenizer.identifier(),type,kind);
		
		advance();

        //(, type varName)*
		while(jackTokenizer.symbol() ==',')
		{
			// ,

			advance();

			//type

			type=jackTokenizer.identifier();

			advance();

			//varName
			symbolTable.Define(jackTokenizer.identifier(),type,kind);

			advance();
		}

      
	}
  
	//void subroutineBody(){
	//    
	//
	//    advance();
	//
	//    // {
	//    
	//    advance();
	//    
	//    //varDec*
	//    while(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="var")
	//    {
	//        compileVarDec();
	//        
	//        advance();
	//    }
	//
	//    vmWriter.writeFunction(className~"."~subroutineName,symbolTable.VarCount(Kind.VAR));
	//
	//    //subroutineBody
	//    compileStatements();
	//    
	//
	//
	//    // }
	//
	//
	//
	//}
  
    void compileStatements(){
		//("let" "if" "while" "do" "return")
		while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="let" || jackTokenizer.keyWord() =="if" || jackTokenizer.keyWord() =="while" || jackTokenizer.keyWord() =="do"||jackTokenizer.keyWord() =="return"))
		{

			string keyWord=jackTokenizer.keyWord();
		    switch(keyWord){
		    	case "let":
		    		compileLet();
		    		break;
		    	case "do":
		    		compileDo();
		    		break;
		    	case "if":
		    		compileIf();
		    		break;
		    	case "while":
		    		compileWhile();
		    		break;
		    	case "return":
		    		compileReturn();
		    		break;
		    	default:
		    		break;
			}


		if(keyWord != "if"){
			advance();
		}
			
		}


  }
  
    void compileIf(){
	
		//if

		advance();
	
		// (
	
	
		advance();
	
	    //expression
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==')'))
				 compileExpression();
		
	
	
		// )
	
		advance();
	
		// {
	
	
		advance();
	
	    //statements
		compileStatements();
	
	
		//}
	
	
		advance();
	
	
	   //else
		if(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord()=="else"){
			
			advance();
	
			// {


			advance();

			//statements
			compileStatements();


			//}
	
			advance();
	
	
		}
	
		

  }
  
    void compileReturn(){

		//return

		advance();

		//expression?
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==';'))
			compileExpression();


		// ;

  }
  
  	void compileVarDec()
	{	
		Kind kind=Kind.VAR;
		string type;
		
        //var

		advance();

		//type
		type=jackTokenizer.identifier();
		
		advance();
		
		//varName
		
		symbolTable.Define(jackTokenizer.identifier(),type,kind);

		advance();

		//(, varName)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			// , 
			
			advance();

			//varName
			
			symbolTable.Define(jackTokenizer.identifier(),type,kind);

			advance();
		
		}
		
		// ;
		

	}
  
  	void compileLet()
	{	
		//let

		advance();

		//varName

		advance();


		//[ expression ]
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='[')
		{	
			// [
			advance();
		

			//expression
			compileExpression();


			//]
			
			advance();
		}

		//=
		
		advance();

		//expression
		compileExpression();
		
		//;
		
	}
  
  	void compileWhile()
	{	
		//while

		advance();

		    // (
		

			advance();


			//expression
			compileExpression();
			
			//)
			advance();
		

		    //{
		
			advance();


			//Statements
			compileStatements();


			//}
			
	}
  
  	void compileDo()
	{	

		//do

		advance();
		
		//subroutineCall
		compileSubroutineCall();


		//;
	

		
	}
  
  	void compileSubroutineCall(string PrevIdentifier=null)
	{
		if(PrevIdentifier==null)
		{
			
			//subroutineName || className || varName

			advance();

		}


        //(expressionList)
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
		{
			// (


	        advance();
	         
	         //expressionList
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	compileExpressionList();
			

	         
	         
	        // )
	             
	       	
		}

         //(className |varName)
		else if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='.')
		{
			//.
			advance();

            //subroutineName

			advance();

			// (


	     	advance();  


			//expressionList
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	compileExpressionList();




	        // )

			
		}



		advance();
			
	
		
	}

	void compileExpression()
	{
   
		//term
		compileTerm();

        //(op term)*
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
            
			//op

			advance();

			//term
			compileTerm();


		}
		
	}

	void compileExpressionList()
	{
		//expression
		compileExpression();

		//(, expression)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			//,
			advance();

			//expression
			compileExpression();

		}

		
	}

	void compileTerm()
	{	
		//first token of term
		
		switch(jackTokenizer.tokenType())
		{
			case Tokens.integerConstant:
				//integerConstent
				advance();
				break;
			case Tokens.stringConstant:
				//stringConstent
				advance();
				break;
			case Tokens.keyword :
				//keywordConstent
				advance();
				break;
			case Tokens.symbol :

				//unaryOp term
				if( jackTokenizer.symbol() =='-' || jackTokenizer.symbol() =='~')
				{
					//unaryOp
					advance();

					//term
					compileTerm();
					break;
				}
				//(expression)
				else if( jackTokenizer.symbol() =='(')
				{
					// (

					advance();

					//expression
					compileExpression();
					
					// )

					advance();
					break;
				}
				else
					break;
			case Tokens.identifier:
				//look ahead
				string tempTokenValue=jackTokenizer.identifier();
				
				advance();
				
				//varName[expression]
				if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='[')
				{					
					//[
					

					advance();

					//expression
					compileExpression();

					//]
					
					advance();

					break;
				}
				//subroutineCall
				else if(jackTokenizer.tokenType() == Tokens.symbol && (jackTokenizer.symbol() =='.' || jackTokenizer.symbol() =='(') )
				{	
					compileSubroutineCall(tempTokenValue);
					
					break;
				}
			break;

			default:
				break;
		}
		//;?????

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
