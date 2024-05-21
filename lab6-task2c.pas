PROGRAM Split_3(INPUT, OUTPUT);
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
      IF Next = 'O'
      THEN
        BEGIN
          WRITE(Odds, Ch);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(Evens, Ch);
          Next := 'O'
        END;
      READ(INPUT, Ch)  
    END;
  WRITELN(Odds, '#');
  RESET(Odds);
  READ(Odds, Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Odds, Ch)
    END;
  WRITELN(Evens, '#');
  RESET(Evens);
  READ(Evens, Ch);
  WRITELN(OUTPUT, '');
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(OUTPUT, Ch);
      READ(Evens, Ch)
    END 
END.