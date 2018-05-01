import std.stdio;
import JackTokenizer;
import std.conv;
import Terminals;
import std.xml;
import std.string;
int main(string[] argv)
{
    JackTokenizer a=new JackTokenizer("D:\\TicTacToe\\Game.jack");
	File file =File("D:\\TicTacToe\\Game.xml","w");
	auto doc = new Document(new Tag("TOKENS"));
//file.writeln("<TOKENS>");
	while(a.hasMoreTokens()){
          a.advance();

		Element element; 
		
		//
		//if(a.tokenType()==Tokens.SYMBOL){
		//     if(a.symbal()=='<')
		//         element=new Element(to!string(a.tokenType()),"&lt;");
		//            
		//else if(a.symbal()=='>')
		//    element=new Element(to!string(a.tokenType()),"&gt;");
		//    
		//else if(a.symbal()=='&')
		//    element=new Element(to!string(a.tokenType()),"&amp;");
		//
		//    
		//else 
		//    element=new Element(to!string(a.tokenType()),a.identifier());
		//
		//    
		//}
		//else 
			element=new Element(to!string(a.tokenType()),a.identifier());

        doc ~=element;

	}
		//file.writeln("</TOKENS>");
		//file.close();
	 file.writefln(join(doc.pretty(3),"\n"));
	readln();
    return 0;
}
//if(a.tokenType()==Tokens.SYMBOL){
//    if(a.symbal()=='<')
//        file.writeln("<",to!string(a.tokenType()),">","&lt;","</",to!string(a.tokenType()),">");
//    else if(a.symbal()=='>')
//        file.writeln("<",to!string(a.tokenType()),">","&gt;","</",to!string(a.tokenType()),">");
//    else if(a.symbal()=='&')
//        file.writeln("<",to!string(a.tokenType()),">","&amp;","</",to!string(a.tokenType()),">");
//    else 
//        file.writeln("<",to!string(a.tokenType()),">",a.identifier(),"</",to!string(a.tokenType()),">");
//}
//else 
//file.writeln("<",to!string(a.tokenType()),">",a.identifier(),"</",to!string(a.tokenType()),">");
