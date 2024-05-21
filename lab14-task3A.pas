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
PROCEDURE RecursiveSort(VAR F1: TEXT);
VAR
  F2, F3: TEXT;
  Ch: CHAR;
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
BEGIN {RecursiveSort}
  RESET(F1);
  IF NOT(EOLN(F1))
  THEN
    BEGIN
      Split(F1, F2, F3);
      RecursiveSort(F2);
      RecursiveSort(F3);
      Merge(F1, F2, F3)
    END
END; {RecursiveSort}
BEGIN {ReversiveSortA}
  REWRITE(F1);
  RCopy(INPUT, F1);
  RecursuiveSort(F1);
  RESET(F1);
  RCopy(F1, OUTPUT)
END. {ReversiveSortA}


