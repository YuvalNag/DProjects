import std.stdio;
import CodeWriterModule;
import Parser;


int main(string[] argv)
{
   Parser parser=new Parser("C:\\Users\\USER\\Documents\\GitHub\\DProjects\\DProjects\\Targil1\\Targil1\\SimpleAdd.vm");
   CodeWriter codeWriter =new CodeWriter("C:\\Users\\USER\\Documents\\GitHub\\DProjects\\DProjects\\Targil1\\Targil1\\","SimpleAdd");
   parser.parse(codeWriter);
    return 0;
}
