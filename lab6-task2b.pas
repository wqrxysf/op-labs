PROGRAM Split_2(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Evens, Odds: TEXT;
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
        BEGIN
          WRITE(Odds, Ch);
          Next := 'E'
        END
      ELSE
        Next := 'O';
      READ(INPUT, Ch)  
    END;
  WRITELN(OUTPUT);
  WRITELN(Odds, '#');
  RESET(Odds);
  READ(Odds, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Odds, Ch)
    END 
END.
