UNIT ContainerManagment;
{Модуль управления контейнером}


INTERFACE 


PROCEDURE AddAndFindItem(Str: STRING);
PROCEDURE PrintContainer(VAR OFile: TEXT);


IMPLEMENTATION


USES
  WordCustoms;
CONST
  WordLimit = 250; {оптимальное ограничение на кол-во обрабатываемых строк(~1s)}
TYPE    
  Tree = ^NodeType;
  NodeType = RECORD
               Key: STRING;
               Index: INTEGER;
               LLink, RLink: Tree
             END;
VAR
  Root: Tree;
  Limit: INTEGER;
  FFlag: BOOLEAN;
  
PROCEDURE AddAndFindItem(Str: STRING);
PROCEDURE AddItem(VAR Ptr: Tree; Element: STRING; VAR Limit: INTEGER);
{Добавляет слово в контейнер}
VAR
  Result: BOOLEAN;
BEGIN {AddItem}
  IF Limit < WordLimit
  THEN
    IF (Ptr = NIL) AND (Element <> '-')
    THEN
      BEGIN
        NEW(Ptr);
        Ptr^.Key := Element;
        Ptr^.Index := 1;
        Ptr^.RLink := NIL;
        Ptr^.LLink := NIL;
        Limit := Limit + 1
      END
    ELSE
      IF Element <> '-'
      THEN
        BEGIN
          Result := FALSE;
          CompareWords(Result, Ptr^.Key, Element);  {если =, то инкрементировать, исключение для ё}
          IF Result {true -> '>='(from unit)}
          THEN
            AddItem(Ptr^.LLink, Element, Limit)
          ELSE
            AddItem(Ptr^.RLink, Element, Limit)
        END
END; {AddItem}

PROCEDURE FindWord(VAR Ptr: Tree; Word: STRING; VAR Flag: BOOLEAN);
{Проходимся по контейнеру в поиске слова, инкрементируем кол-во его вхождений}
BEGIN {FindWord}
  IF Ptr <> NIL
  THEN
    BEGIN
      FindWord(Ptr^.LLink, Word, Flag);
      IF Ptr^.Key = Word
      THEN
        BEGIN
          Ptr^.Index := Ptr^.Index + 1;
          Flag := TRUE
        END;
      FindWord(Ptr^.RLink, Word, Flag)
    END
END; {FindWord}

BEGIN {AddAndFindItem}
  FFlag := FALSE;
  FindWord(Root, Str, FFlag); 
  IF NOT(FFlag)
  THEN
    AddItem(Root, Str, Limit)
END; {AddAndFindItem}


PROCEDURE PrintContainer(VAR OFile: TEXT);
PROCEDURE PrintC(Ptr: Tree; VAR OFile: TEXT);
{Распечатывает содержимое контейнера в итоговый файл}
BEGIN {PrintC}
  IF Ptr <> NIL
  THEN
    BEGIN
      PrintC(Ptr^.LLink, OFile);
      WRITELN(OFile, Ptr^.Key, ' ', Ptr^.Index);
      PrintC(Ptr^.RLink, OFile)
    END
END; {PrintC}
BEGIN {PrintContainer}
  PrintC(Root, OFile)
END; {PrintContainer}

BEGIN {ContainerManagment}
  FFlag := FALSE;
  Root := NIL;
  Limit := 0
END. {ContainerManagment}
