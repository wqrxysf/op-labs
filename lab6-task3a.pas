PROGRAM SelectSort(INPUT, OUTPUT);
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  REWRITE(F1);
  WRITE(OUTPUT, 'INPUT DATA:');
  READ(INPUT, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN {while}
      WRITE(F1, Ch);
      READ(INPUT, Ch)
    END; {while}
  WRITELN(OUTPUT);
  WRITELN(F1, '#');
  RESET(F1);
  READ(F1, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN {while}
      WRITE(OUTPUT, Ch);
      READ(F1, Ch)
    END {while}
END. {SelectSort}
