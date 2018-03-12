module DirParserModule;
import Parser;
import CodeWriterModule;
import std.stdio;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;
import std.algorithm.mutation : SwapStrategy;

class DirParser
{

	



	void vmTOasm(string dirPath)
	{
		CodeWriter codeWriter=new CodeWriter(dirPath,baseName(dirPath));
	   if(exists(dirPath~"Sys.vm"))
		{
			File file = File(chomp(dirPath~"Sys.vm"), "r");
			writeln(file.name);
			Parser parser = new Parser(file.name);
			parser.parse(codeWriter);
		}
		auto Files = dirEntries(chomp(dirPath), SpanMode.shallow).filter!(f => f.name.endsWith(".vm") && f.isFile && baseName(f.name) != "Sys.vm");
		foreach (file; Files)
		{
				writeln(file.name);
				Parser parser = new Parser(file.name);
				parser.parse(codeWriter);
		}
		codeWriter.close();
	}
}
	
