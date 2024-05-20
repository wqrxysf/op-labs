PROGRAM TestReadDigit(INPUT, OUTPUT);
VAR
  Result, D, K: INTEGER;
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN {ReadDigit}
  D := 0;
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF Ch = '0' THEN D := 0 ELSE
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9 ELSE
        D := -1
    END
  ELSE
    D := -1
END; {ReadDigit}
BEGIN {TestReadDigit}
  D := 0;
  Result := 0;
  K := 0;
  WHILE D <> -1
  DO
    BEGIN
      K := K + 1;
      Result := D + Result; 
      ReadDigit(INPUT, D)
    END;
  IF (Result = 0) AND (K = 1)
  THEN
    WRITELN(-1)
  ELSE
    WRITELN(Result)
END. {TestReadDigit}
