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
	int ifLabelCounter;
	int whileLabelCounter;
	this(string path)
	{
		this.path =path;
		auto Files = dirEntries(chomp(path), SpanMode.shallow).filter!(f => f.name.endsWith(".jack") && f.isFile);
		foreach (file; Files)
		{
			writeln("anylazing - ",baseName(file.name));
			jackTokenizer=new JackTokenizer(file.name);
			jackTokenizer.advance();
            ifLabelCounter=0;
			whileLabelCounter=0;
            vmWriter=new VMWriter(file.name);
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
		bool method=false,ctor=false;
		symbolTable.startSubroutine();
       
		//(constructor | method | function)

		if(jackTokenizer.keyWord() =="method"){
			symbolTable.Define("this",className,Kind.ARG);
			method=true;
		}
		else if(jackTokenizer.keyWord() =="constructor")
			ctor=true;

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


		if(method){
			vmWriter.writePush(SEGMENT.ARG,0);
			vmWriter.writePop(SEGMENT.POINTER,0);
		}
		else if(ctor)
		{
			vmWriter.writePush(SEGMENT.CONST,symbolTable.VarCount(Kind.FIELD));
			vmWriter.writeCall("Memory.alloc ",1);
			vmWriter.writePop(SEGMENT.POINTER,0);
			

		}
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
		int currentIndex=ifLabelCounter++;
		//if

		advance();
	
		// (
	
	
		advance();
	
	    //expression
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==')'))
				 compileExpression();
	    
		vmWriter.writeIf("IF_TRUE"~to!string(currentIndex));
		vmWriter.writeGoto("IF_FALSE"~to!string(currentIndex));
		vmWriter.writeLabel("IF_TRUE"~to!string(currentIndex));
        
		//*!* need counter for label
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
			vmWriter.writeGoto("IF_END"~to!string(currentIndex));

			//**label IF_FALSE0
			vmWriter.writeLabel("IF_FALSE"~to!string(currentIndex));

			
			

			advance();
	
			// {


			advance();

			//statements
			compileStatements();

			

            //**label IF_END0
			vmWriter.writeLabel("IF_END"~to!string(currentIndex));


			//}
	
			advance();
	
	
		}
		else
		{
			//**label IF_FALSE0
			vmWriter.writeLabel("IF_FALSE"~to!string(currentIndex));


		}
	
		

  }
  
    void compileReturn(){

		//return

		advance();

		//expression?
		if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol()==';'))
			compileExpression();
		else
		{
			vmWriter.writePush(SEGMENT.CONST,0);

		}

		//**return
		vmWriter.writeReturn();

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
			vmWriter.writePush(kindToSegment(symbolTable.KindOf(varName)),symbolTable.IndexOf(varName));

			//**add
			vmWriter.writeArithmetic(Commands.ADD);

			advance();
		}

		//=
		
		advance();

		//expression
		compileExpression();

		if(isArray)
		{
			//**pop temp 0
			vmWriter.writePop(SEGMENT.TEMP,0);

			//**pop pointer 1
			vmWriter.writePop(SEGMENT.POINTER,1);

			//**push temp 0
			vmWriter.writePush(SEGMENT.TEMP,0);


			//**pop that 0
			vmWriter.writePop(SEGMENT.THAT,0);
		}
		else
		{

			//**pop varName
			vmWriter.writePop(kindToSegment(symbolTable.KindOf(varName)),symbolTable.IndexOf(varName));

		}
		
		//;
		
	}
  
  	void compileWhile()
	{	
		//while
        string currentCounter=to!string(whileLabelCounter++);
		advance();

		    // (
		    
		    //*!* need a counting lable
		    //**label WHILE_EXP0
		   vmWriter.writeLabel("WHILE_EXP"~currentCounter);


			advance();


			//expression
			compileExpression();
	

			//**not
			vmWriter.writeArithmetic(Commands.NOT);

			//**if-goto WHILE_END0
			vmWriter.writeIf("WHILE_END"~currentCounter);

			
			
			//)
			advance();
		

		    //{
		
			advance();


			//Statements
			compileStatements();

			//**goto WHILE_EXP0
			vmWriter.writeGoto("WHILE_EXP"~currentCounter);

			//**label WHILE_END0
			vmWriter.writeLabel("WHILE_END"~currentCounter);


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
		vmWriter.writePop(SEGMENT.TEMP,0);

	

		
	}
  
  	void compileSubroutineCall(string PrevIdentifier=null)
	{
		string firstVAR=jackTokenizer.identifier();

		if(PrevIdentifier==null)
		{
			
			//subroutineName || className || varName

			firstVAR=jackTokenizer.identifier();
			advance();
            
		}
		else
		{
			firstVAR=PrevIdentifier;
		}


		//*!* save name as firstVAR
        

        //(expressionList)
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
		{
			// (
 
            //** push pointer 0
			vmWriter.writePush(SEGMENT.POINTER,0);



	        advance();
	         
	        int  nArgs=0;
	         //expressionList
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	nArgs=compileExpressionList();
			
            //**  call className.subName nArgs+1
			vmWriter.writeCall(className~"."~firstVAR,nArgs+1);

			
	         
	         
	        // )


			
	             
	       	
		}

         //(className |varName)
		else if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='.')
		{
			bool isFunction=false;
			//** if firstVAR is in symboltable 
            if(symbolTable.KindOf(firstVAR)==Kind.NONE)
               isFunction=true;

			if(!isFunction)
				//** push firstVAR
				vmWriter.writePush(kindToSegment(symbolTable.KindOf(firstVAR)),symbolTable.IndexOf(firstVAR));

			//.
			advance();

            //subroutineName
			string subName=jackTokenizer.identifier();

			advance();

			// (


	     	advance();  


			//expressionList
			int nArgs=0;
	        if(!(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')'))
	        	nArgs=compileExpressionList();




	        // )

			//** if firstVAR is in symboltable  
			//** call (typeOf(verName).verName) nArgs+
//**
			//** if firstVAR is not symboltable 
			//** call (firstVAR.verName) nArgs
			if(!isFunction)
				vmWriter.writeCall(symbolTable.TypeOf(firstVAR)~"."~subName,nArgs+1);
			else
				vmWriter.writeCall(firstVAR~"."~subName,nArgs);


			
		}


		advance();
			
	
		
	}

	void compileExpression()
	{
   
		char op;
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
             op=jackTokenizer.symbol();
			advance();

			//term
			compileTerm();

			switch(op){
				case '+':
					vmWriter.writeArithmetic(Commands.ADD);
					break;
				case '-':
					vmWriter.writeArithmetic(Commands.SUB);
					break;
				case '*':
					vmWriter.writeCall("Math.multiply",2);
					break;
				case '/':
					vmWriter.writeCall("Math.divide",2);
					break;
				case '&':
					vmWriter.writeArithmetic(Commands.AND);
					break;
				case '|':
					vmWriter.writeArithmetic(Commands.OR);
					break;
				case '<':
					vmWriter.writeArithmetic(Commands.LT);
					break;
				case '>':
					vmWriter.writeArithmetic(Commands.GT);
					break;
				case '=':
					vmWriter.writeArithmetic(Commands.EQ);
					break;
					default:
						break;
			}



				//**if op==* -> call Math.multiply 2
				//**if op==/ -> call Math.divide 2
				//**else write op
		
		}
		
	}

	int compileExpressionList()
	{
		int count=0;
		//expression
		compileExpression();
     
		count++;
		//(, expression)*
		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			
			//,
			advance();

			//expression
			compileExpression();

			count++;

		}

		return count;

		
	}

	void compileTerm()
	{	
		//first token of term
		
		switch(jackTokenizer.tokenType())
		{
			case Tokens.integerConstant:
				//integerConstent
				//**push consternt (value)
				vmWriter.writePush(SEGMENT.CONST,jackTokenizer.intVal());
				advance();
				break;
			case Tokens.stringConstant:
				string str =jackTokenizer.stringval();
				vmWriter.writePush(SEGMENT.CONST,str.length);
				vmWriter.writeCall("String.new",1);

				for(int i=0;i<str.length;++i)
				{
					vmWriter.writePush(SEGMENT.CONST,str[i]);
					vmWriter.writeCall("String.appendChar",2);
				}
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
				switch(jackTokenizer.keyWord())
				{
					case "this":
						vmWriter.writePush(SEGMENT.POINTER,0);
						break;
					case "true":
						vmWriter.writePush(SEGMENT.CONST,0);
						vmWriter.writeArithmetic(Commands.NOT);
						break;
					case "null":						
					case "false":
						vmWriter.writePush(SEGMENT.CONST,0);
						break;
						default:
							break;
				}
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
					if(jackTokenizer.symbol() =='-')
						vmWriter.writeArithmetic(Commands.NEG);
					else
						vmWriter.writeArithmetic(Commands.NOT);

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
					vmWriter.writePush(kindToSegment(symbolTable.KindOf(tempTokenValue)),symbolTable.IndexOf(tempTokenValue));

					//**add
					 vmWriter.writeArithmetic(Commands.ADD);
					//**pop pointer 1
					 vmWriter.writePop(SEGMENT.POINTER,1);

					 //**push that 0
					 vmWriter.writePush(SEGMENT.THAT,0);
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
				else
				{
					vmWriter.writePush(kindToSegment(symbolTable.KindOf(tempTokenValue)),symbolTable.IndexOf(tempTokenValue));
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

	SEGMENT kindToSegment(Kind kind)
	{
		switch(kind)
		{
			case Kind.ARG:
				return SEGMENT.ARG;
			case Kind.VAR:
				return SEGMENT.LOCAL;
			case Kind.FIELD:
				return SEGMENT.THIS;
			case Kind.STATIC:
				return SEGMENT.STATIC;
			default:
					return SEGMENT.STATIC;
			
			
		}
	}
}
