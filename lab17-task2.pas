PROGRAM TestReadNumber(INPUT, OUTPUT);
VAR
  N: INTEGER;
PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
VAR
  D, K: INTEGER;
  Overflow: BOOLEAN;
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
BEGIN {ReadNumber}
  N := 0;
  D := 0;
  K := 0;
  Overflow := False;
  WHILE D <> -1
  DO
    BEGIN
      K := K + 1;
      IF N <= ((MAXINT - N) DIV 10)
      THEN
        N := (N * 10) + D
      ELSE
        Overflow := True;  
      ReadDigit(F, D) 
    END;
  IF (K = 1) AND (N = 0)
  THEN
    N := -1;
  IF Overflow
  THEN
    N := -2  
END; {ReadNumber}
BEGIN {TestReadNumber}
  ReadNumber(INPUT, N);
  WRITELN(N)
END. {TestReadNumber}
