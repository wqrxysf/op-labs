PROGRAM Split_1(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  REWRITE(Evens);
  REWRITE(Odds);
  READ(INPUT, Ch);
  Next := 'O';
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITELN(Next, ' ');
      IF Next = 'O'
      THEN
        Next := 'E'
      ELSE
        Next := 'O';
      READ(Ch)  
    END
END.
  
  

