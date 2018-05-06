import std.stdio;
import JackTokenizer;
import std.conv;
import Terminals;
import std.xml;
import CompilationEngine;


import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;

int main(string[] argv)
{
	/*
	auto Files = dirEntries(chomp("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil4\\project 10\\firstCheck"), SpanMode.shallow).filter!(f => f.name.endsWith(".jack") && f.isFile);
	foreach (file; Files)
	{
		writeln("tokenazing - ",baseName(file.name));
		JackTokenizer a=new JackTokenizer(file.name);
		File outFile =File(chainPath(chomp(dirName(file.name)),baseName(file.name,".jack")~"Check.xml"),"w");
		auto doc = new Document(new Tag("tokens"));

		while(a.hasMoreTokens()){
			a.advance();

			Element element; 
			element=new Element(to!string(a.tokenType()),a.identifier());

			doc ~=element;

		}
		
		outFile.writefln(join(doc.pretty(3),"\n"));
        outFile.close();
		
		
	}
	*/

	CompilationEngine a=new CompilationEngine(chomp("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil4\\project 10\\ArrayTest\\Main.jack"));
	a.compileClass();
	//File fileout=new File("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil4\\project 10\\firstCheck\\first.jack","w");
    File outFile =File("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil4\\project 10\\ArrayTest\\MainSCheck.xml","w");
    outFile.writefln(join((a.doc).pretty(3),"\n"));

  writeln("finished");
  outFile.close();
	readln();
    return 0;
}

