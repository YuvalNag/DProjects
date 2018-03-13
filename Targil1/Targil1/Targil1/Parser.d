module Parser;
import CommandTypeEnum;

import CodeWriterModule;

import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;

//enum CommandType {C_ERROR,C_ARITHMETIC,C_PUSH,C_POP,C_LABEL,C_GOTO,C_IF,C_FUNCTION,C_RETURN,C_CALL};

class Parser
{
	File vmFile;
	string currentCommand;

   public:
	this(string path)
	{
		vmFile = File(chomp(path), "r");
	}
	

	bool hasMoreCommand()
	{
		if(vmFile.eof())
		{
			return false;
		}
		else
			return true;
		
	}
	

	void advance()
	{
	  if(hasMoreCommand())
	  
	    currentCommand=vmFile.readln().strip();
		
	
	}
	CommandType commandType()
	{
		string firstword;
		
		if(currentCommand.length!=0)
			firstword=currentCommand.split[0];
		else
			return CommandType.WHITE_SPACE;

		if(startsWith(currentCommand,"//"))
			return CommandType.COMMIT;

		switch(firstword)
		{
			case "add":
			case "sub":
			case "neg":
			case "eq":
			case "gt":
			case "lt":
			case "and":
			case "or":
			case "not":
				return CommandType.C_ARITHMETIC;

			case "push":
				return CommandType.C_PUSH;

			case "pop":
				return CommandType.C_POP;

			case "":
				return CommandType.WHITE_SPACE;
		
			case "call":
				return CommandType.C_CALL;

			case "function":
				return CommandType.C_FUNCTION;

			case "return":
                  return CommandType.C_RETURN;

			case "goto":
				return CommandType.C_GOTO;
			
			case "if-goto":
				return CommandType.C_IF;
			
			case "label":
				return CommandType.C_LABEL;
			
			default:
				return CommandType.C_ERROR;
					break;
				
		}


		return CommandType.C_ERROR;
	}


	string arg1()
	{
		if (commandType()==CommandType.C_ARITHMETIC)
			return currentCommand.split[0];
		//else if (   commandType()==CommandType.C_PUSH 
		//         || commandType()==CommandType.C_POP 
		//         || commandType()==CommandType.C_GOTO 
		//         || commandType()==CommandType.C_IF
		//         || commandType()==CommandType.C_LABEL)
			return currentCommand.split[1];
		
	}

	int arg2()
	{
		return to!int(currentCommand.split[2]);
	}
	
	void parse(CodeWriter codeWriter)
	{
		codeWriter.setFileName(baseName(vmFile.name).split('.')[0]);
		while(hasMoreCommand())
		{
			advance();

			switch(commandType())
			{
				case CommandType.C_ARITHMETIC:
					codeWriter.writeArithmetic(arg1());
					break;
				
				case CommandType.C_POP:
				case CommandType.C_PUSH:
					codeWriter.writePushPop(commandType(),arg1(),arg2());
					break;
				
				case CommandType.C_GOTO:
				case CommandType.C_IF:
				case CommandType.C_LABEL:
					codeWriter.writeFlowCommand(commandType(),arg1());
					break;

				case CommandType.C_CALL:
				case CommandType.C_FUNCTION:
					codeWriter.writeFunctionCommand(commandType(),arg1(),arg2());
					break;

                case CommandType.C_RETURN:
			     	codeWriter.writeFunctionCommand(commandType(),"",0);
					break;


			    case CommandType.COMMIT:
				case CommandType.WHITE_SPACE:
					continue;
					break;
				
				case CommandType.C_ERROR:
					writeln("error while reading the file");
					readln();
				
				default:
					break;
			}
		}

		vmFile.close();
	}
}