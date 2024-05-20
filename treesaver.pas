UNIT TreeSaver;

INTERFACE


TYPE    {»«¡¿¬»“‹—ﬂ Œ“ ƒ≈–≈¬¿ ¬ »Õ“≈–‘≈…—≈, Õ¿«¬¿Õ»≈ ÃŒƒ”Àﬂ}
  Tree = ^NodeType;
  NodeType = RECORD
               Key: STRING;
               Index: INTEGER;
               LLink, RLink: Tree
             END;
PROCEDURE AddTree(VAR Ptr: Tree; Element: STRING);
PROCEDURE PrintTree(Ptr: Tree; VAR OFile: TEXT);
PROCEDURE FindWord(VAR Ptr: Tree; Word: STRING; VAR Flag: BOOLEAN);



IMPLEMENTATION

USES
  WordCustoms;
CONST
  LetterRange = 32;
  
PROCEDURE AddTree(VAR Ptr: Tree; Element: STRING);
BEGIN {AddTree}
  IF (Ptr = NIL) AND (Element <> '-')
  THEN
    BEGIN
      NEW(Ptr);
      Ptr^.Key := Element;
      Ptr^.Index := 1;
      Ptr^.RLink := NIL;
      Ptr^.LLink := NIL
    END
  ELSE
    IF Element <> '-'
    THEN
      IF Ptr^.Key > Element {if 0}
      THEN
        AddTree(Ptr^.LLink, Element)
      ELSE
        AddTree(Ptr^.RLink, Element)
END; {AddTree}

PROCEDURE PrintTree(Ptr: Tree; VAR OFile: TEXT);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN
    BEGIN
      PrintTree(Ptr^.LLink, OFile);
      WRITELN(OFile, Ptr^.Key, ' ', Ptr^.Index);
      PrintTree(Ptr^.RLink, OFile)
    END
END; {PrintTree}

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

