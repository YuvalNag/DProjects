module CompilationEngine;

import std.stdio;
import JackTokenizer;
import std.conv;
import Terminals;
import std.xml;
import std.algorithm;
import std.array;
import std.file;
import std.string;
import std.path;
import std.uni;


public class CompilationEngine{
	Document doc;
	JackTokenizer jackTokenizer;
	string path;

	this(string path)
	{
		jackTokenizer =new JackTokenizer(path);
        jackTokenizer.advance();
		this.path=path;

	}

	
	void compileClass()
	{
		if(jackTokenizer.tokenType() == Tokens.keyword && jackTokenizer.keyWord() =="class")
		{
			doc = new Document(new Tag(jackTokenizer.keyWord()));
			
			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				doc ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return;

			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='{')
				doc ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());

			if(!advance())
				return;

			while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="static" || jackTokenizer.keyWord() =="field"))
			{
				doc ~= compileClassVerDec();
				if(!advance())
					return;
			}

			while(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="constructor" || jackTokenizer.keyWord() =="function" || jackTokenizer.keyWord() =="method"))
			{
				doc ~= compileSubroutine();
				if(!advance())
					return;
			}
			if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='}')
				doc ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());
		}
	}
	Element compileClassVerDec()
	{	

		Element classVerDecElement=new Element("ClassVerDec");
		classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
		
		if(!advance())
			return classVerDecElement;
		
		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean"))
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());
	
		if(jackTokenizer.tokenType() == Tokens.identifier)
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return classVerDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return classVerDecElement;

		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());

			if(!advance())
				return classVerDecElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return classVerDecElement;
		}
		
		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==';')
			classVerDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());
		return classVerDecElement;
	}

	Element compileSubroutine()
	{
		Element subroutineDecElement=new Element("subroutineDec");
		subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.keyword && (jackTokenizer.keyWord() =="int" || jackTokenizer.keyWord() =="char" || jackTokenizer.keyWord() =="boolean" ||jackTokenizer.keyWord() =="void"))
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.keyWord());

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());
		
		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() =='(')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());

		if(!advance())
			return subroutineDecElement;

		if(jackTokenizer.tokenType() == Tokens.identifier)
			subroutineDecElement ~= parameterList();


		if(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==')')
			subroutineDecElement ~=new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());


		subroutineDecElement ~= SubroutineBody();

		return subroutineDecElement;
	}

	Element parameterList()
	{
		Element parameterListElement=new Element("parameterList");
		parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return parameterListElement;

       	if(jackTokenizer.tokenType() == Tokens.identifier)
			parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

		if(!advance())
			return parameterListElement;

		while(jackTokenizer.tokenType() == Tokens.symbol && jackTokenizer.symbol() ==',')
		{
			parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.symbol());

			if(!advance())
				return parameterListElement;

			if(jackTokenizer.tokenType() == Tokens.identifier)
				parameterListElement~= new Element(to!string(jackTokenizer.tokenType()),jackTokenizer.identifier());

			if(!advance())
				return parameterListElement;
		}

       return parameterListElement;
		
	}

	Element SubroutineBody(){


	}
	bool advance()
	{
		if(jackTokenizer.hasMoreTokens())
		{
			jackTokenizer.advance();	
			return true;
		}
		return false;
	}
}
