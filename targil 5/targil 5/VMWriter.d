module VMWriter;

enum SEGMENT {STATIC,THIS,CONST,LOCAL,ARG,TEMP,POINTER,THAT};

class VMWriter
{

	File vmFile;
	string[SEGMENT] segments=[
		STATIC:"static",
		THIS:"this",
		CONST:"constant",
		LOCAL:"local",
		ARG: "argument",
		TEMP:"temp",
		POINTER:"pointer",
		THAT:"that"
	];

	this(string path)
	{
		vmFile =File(chainPath(chomp(dirName(path)),baseName(path,".jack")~".vm"),"w");
	}

	void writePush()
	{

	}
}