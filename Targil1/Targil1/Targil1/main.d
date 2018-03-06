import std.stdio;
import CodeWriterModule;
import Parser;


int main(string[] argv)
{
   Parser parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   CodeWriter codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   parser.parse(codeWriter);
    return 0;
}
