UNIT ReadingWords; {¬€Õ≈—“» ¬ Œ“ƒ≈À‹Õ€… ÃŒƒ”À‹ —–¿¬Õ≈Õ»≈ —“–Œ  » œ≈–≈ÕŒ— –≈√»—“–¿, ·ÛÍ‚‡ ∏}

INTERFACE

USES
  treesaver;
PROCEDURE ReadWord(VAR IFile: TEXT; VAR OFile: TEXT; VAR Str: STRING; VAR Root: Tree);


IMPLEMENTATION

USES
  WordCustoms;
VAR
  IFile, OFile: TEXT;
  Str: STRING;
  Ch: CHAR;
  Flag, TFlag: BOOLEAN;
  Root: Tree;
  


PROCEDURE ReadWord(VAR IFile: TEXT; VAR OFile: TEXT; VAR Str: STRING; VAR Root: Tree);
VAR
  Flag: BOOLEAN;
  Ch: CHAR;
BEGIN {ReadWord}
  Flag := FALSE;
  WHILE NOT EOF(IFile)
  DO
    BEGIN
      WHILE NOT EOLN(IFile)
      DO
        BEGIN
          READ(IFile, Ch);
          IsLetter(Ch, Flag);
          IF Flag
          THEN
            Str := Str + Ch
          ELSE
            BEGIN
              TFlag := FALSE;
              IF (Str <> '') AND ((Str <> '-') OR (Str <> '- '))
              THEN
                BEGIN
                  FindWord(Root, Str, TFlag);
                  IF NOT(TFlag)
                  THEN
                    AddTree(Root, Str);
              Str := ''
                END
            END
        END;
      TFlag := FALSE;
      IF (Str <> '') AND ((Str <> '-') OR (Str <> '- '))
      THEN
        BEGIN
          FindWord(Root, Str, TFlag);
          IF NOT(TFlag)
          THEN
            AddTree(Root, Str);
      Str := ''
        END;
      READLN(IFile)
    END;
  PrintTree(Root, OFile)
END; {ReadWord}

BEGIN {ReadingWords}
END. {ReadWord}

