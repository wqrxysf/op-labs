PROGRAM LastChar(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
  IF NOT(EOLN)
  THEN
    BEGIN
      WHILE NOT(EOLN)
      DO
        READ(Ch);
      WRITE(Ch)
    END;
  WRITELN
END.
