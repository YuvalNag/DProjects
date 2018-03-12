module DirParserModule;
import Parser;
import CodeWriterModule;
import std.path;

class DirParser
{

	void vmTOasm(string dirPath)
	{
		CodeWriter codeWriter=new CodeWriter(dirPath,baseName(dirPath));
		auto Files = dirEntries(chomp(dirPath), SpanMode.shallow).filter!(f => f.name.endsWith(".vm") && f.isFile);
		foreach (file; Files)
		{
			writeln(file.name);
			Parser parser = new Parser(file.name);
			parser.parse(codeWriter);
		}
	}
}
