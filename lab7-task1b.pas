PROGRAM BubbleSortA(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN { BubbleSort }
  { input in f1 }
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch);
      WRITELN(Ch)
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN 
      {sorted f1 in f2}
    END
END.{ BubbleSort }
