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

			vmWriter.close();
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
				compileSubroutine();
				
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
  
  	void compileSubroutine()
	{
		string subroutineName;
		symbolTable.startSubroutine();
       
		//(constructor | method | function)

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


		//*!* if constructor
		//** puse constent #ofFields
        //** call Memory.alloc 1
		//** pop pointer 0

		//*!* if method
		//**push argument 0
		//**pop pointer 0
		 
	




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
	    //**counter for label?
		//**if-goto IF_TRUE0
		//**goto IF_FALSE0
	    //**label IF_TRUE0
	
	
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
			
			//**goto IF_END0
			//**label IF_FALSE0

			advance();
	
			// {


			advance();

			//statements
			compileStatements();

            //**label IF_END0


			//}
	
			advance();
	
	
		}
		else
		{
			//**label IF_FALSE0

		}
	
		

  }
  
    void compileReturn(){

		//return

		advance();

		//expression?
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==';'))
			compileExpression();

		//**return

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
		bool isArray=false; 
		string type,varName;

		//let

		advance();

		//varName
        varName=jackTokenizer.identifier();

		advance();


		//[ expression ]
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='[')
		{	
			isArray=true; 
			// [
			advance();
		

			//expression
			compileExpression();


			//]

			//**push varName
			//**add
			
			advance();
		}

		//=
		
		advance();

		//expression
		compileExpression();

		if(isArray)
		{
			//**pop temp 0
			//**pop pointer 1
			//**push temp 0
			//**pop that 0
		}
		else
		{
			//**pop varName
		}
		
		//;
		
	}
  
  	void compileWhile()
	{	
		//while

		advance();

		    // (
		
		    //**label WHILE_EXP0

			advance();


			//expression
			compileExpression();
	
			//**not
			//**if-goto WHILE_END0
			
			
			//)
			advance();
		

		    //{
		
			advance();


			//Statements
			compileStatements();

			//**goto WHILE_EXP0
			//**label WHILE_END0

			//}
			
	}
  
  	void compileDo()
	{	

		//do

		advance();
		
		//subroutineCall
		compileSubroutineCall();


		//;

		//**pop temp 0
	

		
	}
  
  	void compileSubroutineCall(string PrevIdentifier=null)
	{
		if(PrevIdentifier==null)
		{
			
			//subroutineName || className || varName

			advance();

		}

		//*!* save name as firstVAR


        //(expressionList)
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
		{
			// (
 
            //** push pointer 0
			


	        advance();
	         
	         //expressionList
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	compileExpressionList();
			
            //**  call className.subName nArgs+1
			
	         
	         
	        // )


			
	             
	       	
		}

         //(className |varName)
		else if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='.')
		{
			//** if firstVAR is in symboltable  
			//** push firstVAR
			
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

			//** if firstVAR is in symboltable  
			//** call (typeOf(verName).verName) nArgs+1
			//**
			//** if firstVAR is not symboltable 
			//** call (firstVAR.verName) nArgs
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

			//**if op==* -> call Math.multiply 2
            //**if op==/ -> call Math.divide 2
			//**else write op
		
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
				//**push consternt (value)
				advance();
				break;
			case Tokens.stringConstant:
				//stringConstent
				//**push constant length of string
				//**call String.new 1
				//**push constant 97
				//**call String.appendChar 2
				//**push constant 98
				//**call String.appendChar 2
				//**push constant 99
				//**call String.appendChar 2
                //** .
				//** .
				//** .
				advance();
				break;
			case Tokens.keyword :
				//keywordConstent
				//**if this -> push pointer 0
                //**if false || null -> push constent 0
				//**if true -> push constent 0
				//**           not
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

					//**unary Op
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

					//**push varName
                    //**add
                    //**pop pointer 1
					//**push that 0
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
