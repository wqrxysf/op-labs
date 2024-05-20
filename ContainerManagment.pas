UNIT ContainerManagment;

INTERFACE    {»«¡¿¬»“‹—ﬂ Œ“ ƒ≈–≈¬¿ ¬ »Õ“≈–‘≈…—≈, Õ¿«¬¿Õ»≈ ÃŒƒ”Àﬂ}

TYPE    
  Tree = ^NodeType;
  NodeType = RECORD
               Key: STRING;
               Index: INTEGER;
               LLink, RLink: Tree
             END;
PROCEDURE AddItem(VAR Ptr: Tree; Element: STRING; VAR Limit: INTEGER);
PROCEDURE PrintContainer(Ptr: Tree; VAR OFile: TEXT);
PROCEDURE FindWord(VAR Ptr: Tree; Word: STRING; VAR Flag: BOOLEAN);



IMPLEMENTATION


USES
  WordCustoms;
CONST
  WordLimit = 100;
  
PROCEDURE AddItem(VAR Ptr: Tree; Element: STRING; VAR Limit: INTEGER);
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
          CompareWords(Result, Ptr^.Key, Element);
          IF Result
          THEN
            BEGIN
              AddItem(Ptr^.LLink, Element, Limit);
              Limit := Limit + 1
            END
          ELSE
            BEGIN
              AddItem(Ptr^.RLink, Element, Limit);
              Limit := Limit + 1
            END
        END
END; {AddItem}

PROCEDURE PrintContainer(Ptr: Tree; VAR OFile: TEXT);
BEGIN {PrintContainer}
  IF Ptr <> NIL
  THEN
    BEGIN
      PrintContainer(Ptr^.LLink, OFile);
      WRITELN(OFile, Ptr^.Key, ' ', Ptr^.Index);
      PrintContainer(Ptr^.RLink, OFile)
    END
END; {PrintContainer}

PROCEDURE FindWord(VAR Ptr: Tree; Word: STRING; VAR Flag: BOOLEAN);
BEGIN {FindWord}
  IF Ptr <> NIL
  THEN
    BEGIN
      FindWord(Ptr^.LLink, Word, Flag);
      IF Ptr^.Key = Word
      THEN
        BEGIN
          Ptr^.Index := Ptr^.Index + 1;
          Flag := TRUE;
        END;
      FindWord(Ptr^.RLink, Word, Flag);
    END
END; {FindWord}

BEGIN {TreeSaver}
END. {TreeSaver}
