PROGRAM CountSymbols(INPUT, OUTPUT);
VAR
  Ch, X100, X10, X1: CHAR;
USES
  Count3;
BEGIN {CountSymbols}
  Start;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Bump
    END;
  Value(X100, X10, X1);
  WRITELN('���������� �������� � INPUT: ', X100, X10, X1)
END. {CountSymbols}
