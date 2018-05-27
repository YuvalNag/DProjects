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


immutable enum SEGMENT {STATIC,THIS,CONST,LOCAL,ARG,TEMP,POINTER,THAT};
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

	void writePush()
	{

	}

	void writeArithmetic(Commands command)
	{
       vmFile.writeln(to!string(command).toLower());
	}

aw

	void close(){
		vmFile.close();
	}


}