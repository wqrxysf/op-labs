PROGRAM LexicoProgram(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Result, Ch: CHAR;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 если лексикографический порядок F1 =, <, > чем F2       
соответственно. Фактические параметры, соответствующие F1 и F2,
должны быть различными}
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (((Result = '0') OR (Result = '3')))
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 или F1 короче F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 или F2 короче F1}
          Result := '2'
        ELSE
          Result := '3'
    END; {WHILE}
  IF (NOT EOLN(F1) AND EOLN(F2)) AND (Result = '0')
  THEN
    Result := '1';
  IF (EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  THEN
    Result := '2';
  IF (Result = '3') AND (EOLN(F1) AND NOT EOLN(F2))
  THEN
    Result := '1';
  IF (Result = '3') AND (NOT EOLN(F1) AND EOLN(F2))
  THEN
    Result := '2' 
END; {Lexico}
BEGIN {LexicoProgram}
  Result := ' ';
  REWRITE(F1);
  REWRITE(F2);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(INPUT, Ch);
      WRITE(F1, Ch)
    END;
  READLN;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F2, Ch)
    END;
  Lexico(F1, F2, Result);
  WRITE(Result)
END. {LexicoProgram}
