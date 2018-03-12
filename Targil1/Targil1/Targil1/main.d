import std.stdio;
import CodeWriterModule;
import Parser;
import DirParserModule;


int main(string[] argv)
{
   //Parser parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\BasicTest\\BasicTest.vm");
   //CodeWriter codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\BasicTest\\","BasicTest");
   //parser.parse(codeWriter);
   //
   // parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\PointerTest\\PointerTest.vm");
   // codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\PointerTest\\","PointerTest");
   //parser.parse(codeWriter);
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\StaticTest\\StaticTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\MemoryAccess\\StaticTest\\","StaticTest");
   //parser.parse(codeWriter);
   //
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   //parser.parse(codeWriter);
   //
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\SimpleAdd\\SimpleAdd.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\SimpleAdd\\","SimpleAdd");
   //parser.parse(codeWriter);
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\SimpleAdd\\SimpleAdd.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\SimpleAdd\\","SimpleAdd");
   //parser.parse(codeWriter);
   //
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   //parser.parse(codeWriter);
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   //parser.parse(codeWriter);
   //
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   //parser.parse(codeWriter);
   //
   //
   //parser=new Parser("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\StackTest.vm");
   //codeWriter =new CodeWriter("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Lang\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest\\","StackTest");
   //parser.parse(codeWriter);
   //

	DirParser dir =new DirParser();
	dir.vmTOasm("D:\\לימודים\\עקרונות שפות תכנות\\Exercises\\Targil2\\project 08\\ProgramFlow\\BasicLoop");
    return 0;
}
