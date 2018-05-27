module VMWriter;

import std.conv;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;

enum SEGMENT {STATIC,THIS,CONST,LOCAL,ARG,TEMP,POINTER,THAT};

class VMWriter
{

	File vmFile;
	string[SEGMENT] segments=[
		SEGMENT.STATIC:"static",
		SEGMENT.THIS:"this",
		SEGMENT.CONST:"constant",
		SEGMENT.LOCAL:"local",
		SEGMENT.ARG: "argument",
		SEGMENT.TEMP:"temp",
		SEGMENT.POINTER:"pointer",
		SEGMENT.THAT:"that"
	];

	this(string path)
	{
		vmFile =File(chainPath(chomp(dirName(path)),baseName(path,".jack")~".vm"),"w");
	}

	void writePush(SEGMENT segment,int index)
	{
		vmFile.writeln("push ",segments[segment]," "~to!string(index));
	}

	void writePop(SEGMENT segment,int index)
	{
		vmFile.writeln("pop ",segments[segment]," "~to!string(index));
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