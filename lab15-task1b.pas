PROGRAM CountReverse(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, X1, X10, X100: CHAR;
USES
  Count3;
BEGIN {CountReverse}
  Start;
  IF NOT EOLN
  THEN
    READ(Ch2);
  IF NOT EOLN
  THEN
    READ(Ch3);
  WHILE NOT EOLN
  DO
    BEGIN
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      IF ((Ch1 < Ch2) AND (Ch2 > Ch3) OR (Ch1 > Ch2) AND (Ch2 < Ch3))
      THEN
        Bump
    END;
  Value(X100, X10, X1);
  WRITELN('Количество реверсов: ', X100, X10, X1)
END. {CountReverse}









