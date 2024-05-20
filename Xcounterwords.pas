PROGRAM CounterWords(INPUT, OUTPUT);
USES
  readingwords, ContainerManagment;
CONST
  InputFileName = 'C:\!op-labs\rgr\input.txt';
  OutputFileName = 'C:\!op-labs\rgr\output.txt';
VAR
  IFile, OFile: TEXT;
  Str: STRING;
  Ch: CHAR;
  Flag, TFlag: BOOLEAN;
  Root: Tree;
BEGIN {ReadingWords}                                                    
  ASSIGN(IFile, InputFileName);
  ASSIGN(OFile, OutputFileName);
  Str := '';
  Root := NIL;
  RESET(IFile);
  REWRITE(OFile);
  ReadWord(IFile, OFile, Str, Root);  {НАЗВАНИЕ, ЗАВЯЗКА НА ДЕРЕВО, СТРОКА, ограничение сделать }
  WRITELN('complete')
END. {ReadWord}
