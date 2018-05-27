import std.stdio;
enum Kind {STATIC,FIELD,VAR,ARG,NONE};

struct value
{
	string type;
	Kind kind;
	int  index;
}

int main(string[] argv)
{
    value[string] classST;
	value[string] methodST;
    value a;
	if(("a" in methodST) != null)
		a= methodST["a"];
	
    return 0;
}
