module CodeWriter;
import CommandType;
import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;


class CodeWriter
{
	File asmFile;
	string currentCommand;

public:
	this(string path,string fileName)
	{
		asmFile=File(chainPath(chomp(path),fileName~".asm"), "w");
	}
	
	void writeArithmetic(string command)
	{
		switch(command)
		{
			case "add":
				add();
				break;
			case "sub":
				sub();
				break;
		    case "neg":
				neg();
				break;
			case "eq":
			case "qt":
			case "lt":
			case "and":
				and();
				break;
			case "or":
				or();
				break;
			case "not":
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
						popGroup1("ARG", index);
					else
                       pushGroup1("ARG", index);
					break;
				}
		    case "local":
				{
					if(commandType==CommandType.C_POP)
						popGroup1("LCL", index);
					else
						pushGroup1("LCL", index);
					break;
				}
			case "this":
				{
					if(commandType==CommandType.C_POP)
						popGroup1("THIS", index);
					else
						pushGroup1("THIS", index);
					break;
				}
			case "that":
				{
					if(commandType==CommandType.C_POP)
						popGroup1("THAT", index);
					else
						pushGroup1("THAT", index);
					break;
				}
			//Group 2 (temp)
			case "temp":
				{
					if(commandType==CommandType.C_POP)
						popTemp(index);
					else
						pushTemp(index);
					break;
				}
			//Group 3 (static)
			case "static":
				{
					if(commandType==CommandType.C_POP)
						popArgument( segment, index);
					else
						pushArgument( segment, index);
					break;
				}
			//Group 4 (pointer 0, pointer 1)
			case "pointer":
				{
					if(commandType==CommandType.C_POP)
						popPointer( index);
					else
						pushPointer( index);
					break;
				}
			//Group 5 (constant)
			case "constent":
				{
					pushConstent(index);
					break;
				}
		}
	}
	void close()
	{
		asmFile.close();
	}
private:
	//____________________________________________________________________________________________________________________________________________________________________________________________________________________________
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
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");
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
		asmFile.writeln("M=D-M");
		incRegister("SP",1);
	}
	void and()
	{
		binaryOp();
		asmFile.writeln("M=D&M");
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

	}
	void pushTemp(int index)
	{
		asmFile.writeln("@"~to!string(index));// A=index
		asmFile.writeln("D=A");// D=index
		asmFile.writeln("@5");
		asmFile.writeln("A=A+D");//A =5 + index
		asmFile.writeln("D=M");// D=RAM[5 + index]
		asmFile.writeln("@SP");
		asmFile.writeln("M=D");// RAM[SP]=RAM[5 + index]
		incRegister("SP",1);
	}

	void pushConstent(int value)
	{
		asmFile.writeln("@"~to!string(value));
		asmFile.writeln("D=A");// D=value
		asmFile.writeln("@SP");
		asmFile.writeln("M=D");// RAM[SP]=value
		incRegister("SP",1);
	}

	void popPointer(int index)
	{
		if(index==0)
		    asmFile.writeln("@THIS");
		else
			asmFile.writeln("@THAT");

		asmFile.writeln("D=M");// D=RAM[THIS/THAT]
		asmFile.writeln("@R15");
		asmFile.writeln("M=D");//R15 =RAM[THIS/THAT]

		decRegister("SP",1);
		asmFile.writeln("@SP");
		asmFile.writeln("A=M");
		asmFile.writeln("D=M");//D=RAM[SP]
		asmFile.writeln("@R15");
		asmFile.writeln("A=M");//A =RAM[THIS/THAT]
		asmFile.writeln("M=D");//RAM[THIS/THAT]=RAM[SP]
	}

}