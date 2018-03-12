
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

	void setFileName(string fileName)
	{
		this.fileName=fileName;
		asmFile.writeln("//________________________"~fileName~"______________");
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
	void incRegister(string register ,int index)
	{
		asmFile.writeln("@"~register);
		asmFile.writeln("M=M+"~to!string(index));
	}
	void decRegister(string register ,int index)
	{
		asmFile.writeln("@"~register);
		asmFile.writeln("M=M-"~to!string(index));
	}
	void binaryOp()
	{
		decRegister("SP",1);
		asmFile.writeln("A=M");//A=RAM[SP] - addr of the top of the stock
		asmFile.writeln("D=M");//D=RAM[RAM[SP]] -the value at the top of the stock -first arg
		decRegister("SP",1);
		asmFile.writeln("A=M");
	}
	void unaryOp()
	{
		decRegister("SP",1);
		asmFile.writeln("A=M");
	}
    void add()
	{
		binaryOp();
		asmFile.writeln("M=D+M");
		incRegister("SP",1);
	}
	void sub()
	{
		binaryOp();
		asmFile.writeln("M=M-D");
		incRegister("SP",1);
	}
	void and()
	{
		binaryOp();
		asmFile.writeln("M=M&D");
		incRegister("SP",1);
	}
	void or()
	{
		binaryOp();
		asmFile.writeln("M=D|M");
		incRegister("SP",1);
	}
	void not()
	{
		unaryOp();
		asmFile.writeln("M=!M");
		incRegister("SP",1);
	}
	void neg()
	{
		unaryOp();
		asmFile.writeln("M=-M");
		incRegister("SP",1);
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
		incRegister("SP",1);
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


		decRegister("SP",1);
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
		incRegister("SP",1);

	}

	void popTemp(int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@5");
		asmFile.writeln("D=A+D");//D =5 + index
		asmFile.writeln("@R15");
		asmFile.writeln("M=D");//R15 =5 + index

		decRegister("SP",1);
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
		incRegister("SP",1);
	}

	void pushConstent(int value)
	{
		asmFile.writeln("@"~to!string(value));
		asmFile.writeln("D=A");// D=value
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=value
		incRegister("SP",1);
	}
	void popPointer(int index)
	{
		
		decRegister("SP",1);
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
		    asmFile.writeln("@THIS");//A =THIS
		else
			asmFile.writeln("@THAT");//A =THAT

		asmFile.writeln("D=M");// D=RAM[THIS/THAT]
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");// RAM[SP]=RAM[THIS/THAT]
		incRegister("SP",1);
	}
	void pushStatic(int index)
	{
		// push static index from 'fileName.vm' in asm:
		asmFile.writeln("@"~fileName~"."~to!string(index));  
		asmFile.writeln("D=M");
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("M=D");
		incRegister("SP",1);
	}
	void popStatic(int index)
	{
		// pop static 0 from 'ClassA.vm' in asm:
		decRegister("SP",1);
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");
		asmFile.writeln("@"~fileName~"."~to!string(index));  
		asmFile.writeln("M=D");

	}

	
}