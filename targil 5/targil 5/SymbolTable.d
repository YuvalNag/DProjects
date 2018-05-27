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


	void Define(string name,string type,Kind kind)
	{
	   value val;
	 
	   val.type=type;
	   val.kind=kind;
	 //  val.index=VarCount(kind);
      
	   methodST[name]=val;
      
	   switch(kind)
	   {
		 case Kind.FIELD:
			fieldIndex+=1;
			break;
		case Kind.STATIC:
			staticIndex+=1;
			break;
		case Kind.VAR:
			varIndex+=1;
			break;
		case Kind.ARG:
			argIndex+=1;
			break;
		default:
			break;
	   }
	}

	int VarCount (Kind kind)
	{
		switch(kind)
		{
			case Kind.STATIC:
				return staticIndex;
			case Kind.FIELD:
				return fieldIndex;
			case Kind.VAR:
				return varIndex;
			case Kind.ARG:
				return argIndex;
				break;
			default:
				return 0;
 		}
	}

	Kind KindOf(string name)
	{
		
		if(name in methodST)
			return methodST[name].kind;
		else if(name in classST)
			return classST[name].kind;
		else
			return Kind.NONE;
	}

	int KindOf(string name)
	{
		if((name in methodST)!=null)
			return methodST[name].index;
		else if((name in classST) != null)
			return classST[name].index;
		return =1;
	}


	string TypeOf(string name){
		if((name in methodST) != null)
			return methodST[name].type;
        if((name in classST) != null)
			return classST[name].type;
		return null;

	}

}

