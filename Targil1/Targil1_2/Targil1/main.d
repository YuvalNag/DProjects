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



	////targil 1
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\MemoryAccess\\Basictest");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\MemoryAccess\\PointerTest");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\MemoryAccess\\StaticTest");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\SimpleAdd");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\StackArithmetic\\SimpleAdd");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil1\\project 07\\StackArithmetic\\StackTest");
	//
	////targil 2															
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil2\\project 08\\FunctionCalls\\FibonacciElement");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil2\\project 08\\FunctionCalls\\SimpleFunction");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil2\\project 08\\FunctionCalls\\StaticsTest");
	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil2\\project 08\\ProgramFlow\\FibonacciSeries");
	dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil2\\project 08\\ProgramFlow\\BasicLoop");

	//dir.vmTOasm("C:\\Users\\nissy34\\OneDrive - g.jct.ac.il\\semester B\\Language princibls\\Exercises\\Targil3\\project 09\\TicTacToe");


    return 0;
}
