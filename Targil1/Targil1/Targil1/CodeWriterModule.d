
module CodeWriterModule;

import CommandTypeEnum;
import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;
import std.ascii;



class CodeWriter
{
	File asmFile;
	//string currentCommand;
    int labelCount=0;
	string fileName;


public:
	this(string path,string fileName)
	{
		asmFile=File(chainPath(chomp(path),fileName~".asm"), "w");

	}

	void init()
	{
		asmFile.writeln("//________________________init______________");

		asmFile.writeln("//init");
		asmFile.writeln("//SP=256");
		asmFile.writeln("@256");
		asmFile.writeln("D=A");
		asmFile.writeln("@SP");
		asmFile.writeln("M=D");


		asmFile.writeln("\n//call function Sys.init 0");
        call("Sys.init",0);


	}

	void setFileName(string fileName)
	{
		this.fileName=fileName;
		asmFile.writeln("//________________________"~fileName~"______________");
	}

	void writeFunctionCommand(CommandType commandType,string funcName,int num)
	{
		
		switch(commandType)
		{
			case CommandType.C_CALL:
				asmFile.writeln("\n//call ",funcName~" "~to!string(num));
				call(funcName,num);
				break;
			
			case CommandType.C_FUNCTION:
				asmFile.writeln("\n//function ",funcName~" "~to!string(num));
				declareFunction(funcName,num);
				break;
			
			case CommandType.C_RETURN:
				asmFile.writeln("\n//return");
				writeReturn();
				break;
			
			default:
				break;
		}

	}
	void writeFlowCommand(CommandType commandType,string label)
	{
		label~="_"~fileName;
		switch(commandType)
		{
			case CommandType.C_GOTO:
				asmFile.writeln("\n//GOTO");
				writeGoto(label);
				break;
			
			case CommandType.C_IF:
				asmFile.writeln("\n//IF");
				writeIf(label);
				break;
			
			case CommandType.C_LABEL:
				asmFile.writeln("\n//LABEL");
				writeLabel(label);
				break;
			
			default:
				break;
		}
	
	}
	void writeArithmetic(string command)
	{
		switch(command)
		{
			case "add":
				asmFile.writeln("\n//add");
				add();
				break;
		
			case "sub":
				asmFile.writeln("\n//sub");
				sub();
				break;
		    
			case "neg":
				asmFile.writeln("\n//neg");
				neg();
				break;
			
			case "eq":
				asmFile.writeln("\n//eq");
				booleanOp(toUpper(command));
				break;
			
			case "gt":
				asmFile.writeln("\n//gt");
				booleanOp(toUpper(command));
				break;
			
			case "lt":
				asmFile.writeln("\n//lt");
				booleanOp(toUpper(command));
				break;
			
			case "and":
				asmFile.writeln("\n//and");
				and();
				break;
			
			case "or":
				asmFile.writeln("\n//or");
				or();
				break;
			
			case "not":
				asmFile.writeln("\n//not");
				not();
				break;
			
			default:
				break;
		}
	}
	void writePushPop(CommandType commandType,string segment,int index)
	{

        switch(segment)
		{
			//Group 1 (local, argument, this, that)
			case "argument":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop argument "~to!string(index));
						popGroup1("ARG", index);
					}
					else
					{
                        asmFile.writeln("\n//push argument "~to!string(index));
						pushGroup1("ARG", index);
					}
					break;
				}
		    case "local":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop local "~to!string(index));
						popGroup1("LCL", index);
					}
					else
					{
                        asmFile.writeln("\n//push local "~to!string(index));
						pushGroup1("LCL", index);
					}
					break;
				}
			case "this":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop this "~to!string(index));
						popGroup1("THIS", index);
					}
					else
					{
                        asmFile.writeln("\n//push this "~to!string(index));
						pushGroup1("THIS", index);
					}
					break;
				}
			case "that":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop that "~to!string(index));
						popGroup1("THAT", index);
					}
					else
					{
                        asmFile.writeln("\n//push that "~to!string(index));
						pushGroup1("THAT", index);
					}
					break;
				}
				//Group 2 (temp)
			case "temp":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop temp "~to!string(index));
						popTemp(index);
					}
					else
					{
                        asmFile.writeln("\n//push temp "~to!string(index));
						pushTemp(index);
					}	
					break;
				}
				//Group 3 (static)
			case "static":
				{
					if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop static "~to!string(index));
						popStatic( index);
					}
					else
					{
                        asmFile.writeln("\n//push static "~to!string(index));
						pushStatic( index);
					}	

					break;


				}
				//Group 4 (pointer 0, pointer 1)
			case "pointer":
				{
                    if(commandType==CommandType.C_POP)
					{
						asmFile.writeln("\n//pop pointer "~to!string(index));
						popPointer( index);
					}
					else
					{
                        asmFile.writeln("\n//push pointer "~to!string(index));
						pushPointer( index);
					}	
					break;
				}
				//Group 5 (constant)
			case "constant":
				{
                    asmFile.writeln("\n//push constant "~to!string(index));
					pushConstent(index);
					break;
				}
			default:
				break;
		}
	}
	
	void close()
	{
		asmFile.close();
	}

private:
	//_________________________________________________

	void incSP()
	{
		asmFile.writeln("@SP");
		asmFile.writeln("M=M+1");
	}

	void decSP()
	{
		asmFile.writeln("@SP");
		asmFile.writeln("M=M-1");
	}

	void binaryOp()
	{
		decSP();
		asmFile.writeln("A=M");//A=RAM[SP] - addr of the top of the stock
		asmFile.writeln("D=M");//D=RAM[RAM[SP]] -the value at the top of the stock -first arg
		decSP();
		asmFile.writeln("A=M");
	}

	void unaryOp()
	{
		decSP();
		asmFile.writeln("A=M");
	}

    void add()
	{
		binaryOp();
		asmFile.writeln("M=D+M");
		incSP();
	}

	void sub()
	{
		binaryOp();
		asmFile.writeln("M=M-D");
		incSP();
	}

	void and()
	{
		binaryOp();
		asmFile.writeln("M=M&D");
		incSP();
	}

	void or()
	{
		binaryOp();
		asmFile.writeln("M=D|M");
		incSP();
	}

	void not()
	{
		unaryOp();
		asmFile.writeln("M=!M");
		incSP();
	}

	void neg()
	{
		unaryOp();
		asmFile.writeln("M=-M");
		incSP();
	}

	void booleanOp(string op)
	{
		int label=labelCount++;

		binaryOp();
		asmFile.writeln("D=M-D");
		asmFile.writeln("@IfTrue_"~to!string(label));
		asmFile.writeln("D;J"~op);
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=0");
		asmFile.writeln("@END_"~to!string(label));
		asmFile.writeln("0;JMP");
		asmFile.writeln("(IfTrue_"~to!string(label)~")");
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=-1");
		asmFile.writeln("(END_"~to!string(label)~")");
		incSP();
	}
	
	//____________________________________________________________________________________________________________________________________________________________________________________________________________________________


	void popGroup1(string regSagment ,int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@"~regSagment);
		asmFile.writeln("A=M");//A =RAM[Sagment] 
		asmFile.writeln("D=A+D");//D =RAM[Sagment] + index
		asmFile.writeln("@R15");
		asmFile.writeln("M=D");//R15 =RAM[Sagment] + index


		decSP();
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");//D=RAM[SP]
		asmFile.writeln("@R15");
		asmFile.writeln("A=M");//A =RAM[Sagment] + index
		asmFile.writeln("M=D");//RAM[RAM[Sagment] + index]=RAM[SP]
		asmFile.writeln("@R15");
		asmFile.writeln("M=0");

	}

	void pushGroup1(string regSagment ,int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@"~regSagment);
		asmFile.writeln("A=M");//A =RAM[Sagment] 
		asmFile.writeln("A=A+D");//A =RAM[Sagment] + index
		asmFile.writeln("D=M");// D=RAM[RAM[Sagment] + index]
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");

		asmFile.writeln("M=D");// RAM[SP]=RAM[RAM[Sagment] + index]
		incSP();

	}

	void popTemp(int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@5");
		asmFile.writeln("D=A+D");//D =5 + index
		asmFile.writeln("@R15");
		asmFile.writeln("M=D");//R15 =5 + index

		decSP();
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");//D=RAM[SP]
		asmFile.writeln("@R15");
		asmFile.writeln("A=M");//A =5 + index
		asmFile.writeln("M=D");//RAM[5 + index]=RAM[SP]
		asmFile.writeln("@R15");
		asmFile.writeln("M=0");
	}

	void pushTemp(int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@5");
		asmFile.writeln("A=A+D");//A =5 + index
		asmFile.writeln("D=M");// D=RAM[5 + index]
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=RAM[5 + index]
		incSP();
	}

	void pushConstent(int value)
	{
		asmFile.writeln("@"~to!string(value));
		asmFile.writeln("D=A");// D=value
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=value
		incSP();
	}

	void popPointer(int index)
	{
		
		decSP();
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");
	
		if(index==0)
		    asmFile.writeln("@THIS");
		else
			asmFile.writeln("@THAT");

	
		asmFile.writeln("M=D");
		
	}
	void pushPointer(int index)
	{
		if(index==0)
		    push("THIS");
		else
			push("THAT");

	}
	void pushStatic(int index)
	{
		// push static index from 'fileName.vm' in asm:
		asmFile.writeln("@"~fileName~"."~to!string(index));  
		asmFile.writeln("D=M");
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");
		incSP();
	}

	void popStatic(int index)
	{
		// pop static 0 from 'ClassA.vm' in asm:
		decSP();
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");
		asmFile.writeln("@"~fileName~"."~to!string(index));  
		asmFile.writeln("M=D");

	}

	void writeGoto(string label)
	{
		asmFile.writeln("@"~label);
		asmFile.writeln("0;JMP");
	}

	void writeLabel(string label)
	{	 
		asmFile.writeln("("~label~")");
	}
		

	void writeIf(string label)
	{	 
		decSP();
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");
		asmFile.writeln("@",label);
		asmFile.writeln("D;JNE");
	}
	
	void push(string addr)
	{
		asmFile.writeln("@"~addr);//A =addr
		asmFile.writeln("D=M");// D=RAM[addr]
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=RAM[addr]
		incSP();
	}

	void call(string funcName,int argNumber)
	{
		asmFile.writeln("\n","//push return addr");
		string returnLabel ="return_"~funcName~to!string(labelCount++);  
		asmFile.writeln("@"~returnLabel);
		asmFile.writeln("D=A");// D=value
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=value
		incSP();

		asmFile.writeln("\n","//push LCL");
		push("LCL");

		asmFile.writeln("\n","//push ARG");
		push("ARG");

		asmFile.writeln("\n","//push THIS");
		push("THIS");

		asmFile.writeln("\n","//push THAT");
		push("THAT");
		
		asmFile.writeln("\n","//ARG=SP-5-n");
		argAssiment(argNumber);//ARG=SP-5-n
		
		asmFile.writeln("\n","//LCL=SP");
		asmFile.writeln("@SP");//A =SP
		asmFile.writeln("D=M");// D=SP
		asmFile.writeln("@LCL");//A =LCL
		asmFile.writeln("M=D");// RAM[LCL]=SP

		asmFile.writeln("\n","//goto ",funcName);
		
		writeGoto(funcName);

		writeLabel(returnLabel);
	}

	void argAssiment(int argNumber)
	{
		asmFile.writeln("@5");//A =5
		asmFile.writeln("D=A");// D=5
		asmFile.writeln("@"~to!string(argNumber));//A =n
		asmFile.writeln("D=A+D");// D=5+n
		asmFile.writeln("@SP");//A =SP
		asmFile.writeln("D=M-D");// D=SP-(5+n)
		asmFile.writeln("@ARG");//A =ARG
		asmFile.writeln("M=D");// RAM[ARG]=D
	}

	void declareFunction(string funcName,int localNumber)
	{
		writeLabel(funcName);
		for(int i=0 ;i< localNumber;++i)
			pushConstent(0);

	}

	void writeReturn()
	{
		//string temp="temp"~to!string(labelCount++);
		//string ret ="ret"~to!string(labelCount++);
		string temp="R13";
		string ret ="R14";

		asmFile.writeln("\n","//FRAME=LCL");
		asmFile.writeln("@LCL");//A =LCL
		asmFile.writeln("D=M");// D=RAM[LCL]
		asmFile.writeln("@"~temp);//A =frame
		asmFile.writeln("M=D");// RAM[frame]=RAM[LCL]
		

		asmFile.writeln("\n","//RET=*(FRAME-5)");
		restoreSagment(ret,5,temp);//RET=*(frame-5)	

		asmFile.writeln("\n","//*ARG=pop ARG 0");
		popGroup1("ARG",0);

		asmFile.writeln("\n","//SP=ARG+1");
		asmFile.writeln("@ARG");//A =ARG
		asmFile.writeln("D=M+1");// D=RAM[ARG]+1
		asmFile.writeln("@SP");//A =SP
		asmFile.writeln("M=D");// RAM[SP]=RAM[ARG]+1

		asmFile.writeln("\n","//THAT=*(FRAME-1)");
		restoreSagment("THAT",1,temp);//THAT=*(frame-1)	

		asmFile.writeln("\n","//ARG=*(FRAME-2)");
		restoreSagment("THIS",2,temp);//THIS=*(frame-2)	

		asmFile.writeln("\n","//ARG=*(FRAME-3)");
		restoreSagment("ARG",3,temp);//ARG=*(frame-3)	

		asmFile.writeln("\n","//LCL=*(FRAME-4)");
		restoreSagment("LCL",4,temp);//LCL=*(frame-4)	

		
       asmFile.writeln("\n","//goto RET");
		asmFile.writeln("@"~ret);
		asmFile.writeln("A=M");
		asmFile.writeln("0;JMP");

	
	}

	void restoreSagment(string sagment,int index,string temp)
	{
		asmFile.writeln("@"~temp);//A =frame
		asmFile.writeln("D=M");// D=RAM[frame]
		asmFile.writeln("@"~to!string(index));//A =index
		asmFile.writeln("A=D-A");// A=RAM[frame]-index
		asmFile.writeln("D=M");// D=RAM[RAM[frame]-index]
		asmFile.writeln("@"~sagment);//A =sagment
		asmFile.writeln("M=D");// RAM[sagment]=RAM[RAM[frame]-index]

	}
}