module SymbolTable;


enum Kind {STATIC,FIELD,VAR,ARG,NONE};

struct value
{
	string type;
	Kind kind;
	int  index;
}

class SymbolTable
{

	value[string] classST;
	value[string] methodST;
	int fieldIndex=0;
	int staticIndex=0;
	int varIndex;
	int argIndex;

	void startSubroutine()
	{
		varIndex=0;
		argIndex=0;
		methodST.clear();
	}

	void define(string name,string type,Kind kind)
	{
       switch(kind)
	   {
		 case Kind.STATIC:

	   }

	}

}

