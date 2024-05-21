PROGRAM ReversiveSortA(INPUT, OUTPUT);
VAR
  F1, F2, F3: TEXT;
PROCEDURE RCopy(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT(EOLN(F1))
  THEN
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch);
      RCopy(F1, F2)
    END
  ELSE
    WRITELN(F2)
END; {RCopy}
PROCEDURE CopyO(VAR F1, F2: TEXT);
VAR
  Ch: CHAR;
BEGIN {CopyO}
  WHILE NOT(EOLN(F1))
  DO
    BEGIN
      WRITE(F2, Ch);
      READ(F1, Ch)
    END
END; {CopyO}
PROCEDURE Split(VAR F1, F2, F3: TEXT);
{Разбивает F1 на F2, F3}
VAR
  Ch, Switch: CHAR;
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  Switch := '0';
  WHILE NOT(EOLN(F1))
  DO
    BEGIN
      READ(F1, Ch);
      IF Switch = '0'
      THEN
        BEGIN
          WRITE(F2, Ch);
          Switch := '1'
        END
      ELSE
        BEGIN
          WRITE(F3, Ch);
          Switch := '0'
        END
    END;
  WRITELN(F1);
  WRITELN(F3);
END; {Split}
PROCEDURE Merge(VAR F1, F2, F3: TEXT);
VAR Ch2, Ch3: CHAR;
BEGIN {Merge}
  RESET(F2);
  RESET(F3);
  REWRITE(F1);
  IF NOT(EOLN(F2))
  THEN
    READ(F2, Ch2);
  IF NOT(EOLN(F3))
  THEN
    READ(F3, Ch3);
  WHILE (NOT(EOLN(F2))) AND (NOT(EOLN(F3)))
  DO
    BEGIN
      IF Ch2 < Ch3
      THEN
        BEGIN
          WRITE(F1, Ch2);
          READ(F2, Ch2)
        END
      ELSE
        BEGIN
          WRITE(F1, Ch3);
          READ(F3, Ch3)
        END
    END;
  CopyO(F2, F1);
  CopyO(F2, F1);
  WRITELN(F1)
END; {Merge}
BEGIN {ReversiveSortA}
  REWRITE(F1);
  RCopy(INPUT, F1);
  RecursiveSort(F1);
  RESET(F1);
  RCopy(F1, OUTPUT)
END. {ReversiveSortA}


