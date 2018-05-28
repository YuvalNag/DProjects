module VMWriter;


import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;
import std.ascii;


 enum SEGMENT {STATIC,THIS,CONST,LOCAL,ARG,TEMP,POINTER,THAT};
enum Commands {ADD,SUB ,NEG ,EQ, GT, LT ,AND ,OR ,NOT};

 




class VMWriter
{

	File vmFile;


	 string[SEGMENT] segments;
		

	this(string path)
	{
		vmFile =File(chainPath(chomp(dirName(path)),baseName(path,".jack")~".vm"),"w");
        segments[SEGMENT.STATIC ]="static";
		segments[SEGMENT.THIS   ]="this";
		segments[SEGMENT.CONST  ]="constant";
		segments[SEGMENT.LOCAL  ]="local";
		segments[SEGMENT.ARG    ]="argument";
		segments[SEGMENT.TEMP   ]="temp";
		segments[SEGMENT.POINTER]="pointer";
		segments[SEGMENT.THAT   ]="that";
	}

	void writePush(SEGMENT segment,int index)
	{
		vmFile.writeln("push ",segments[segment]," "~to!string(index));
	}

	void writePop(SEGMENT segment,int index)
	{
		vmFile.writeln("pop ",segments[segment]," "~to!string(index));
	}


	void writeArithmetic(Commands command)
	{
       vmFile.writeln(to!string(command).toLower());
	}



	void close(){
		vmFile.close();
	}


	void writeLabel(string label)
	{
		vmFile.writeln("label ",label);
	}

	void writeGoto(string label)
	{
		vmFile.writeln("goto",label);
	}

	void writeIf(string label)
	{
		vmFile.writeln("if-goto",label);
	}

	void writeCall(string name,int nArgs)
	{
		vmFile.writeln("call",name," "~to!string(nArgs));
	}

	void writeFunction(string name,int nLocals)
	{
		vmFile.writeln("function",name," "~to!string(nLocals));
	}

	void writeReturn()
	{
		vmFile.writeln("return");
	}





}