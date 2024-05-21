PROGRAM DeleteSpaces(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN 
  IF NOT(EOLN)
  THEN
    BEGIN
      READ(Ch);
      IF Ch = ' '
      THEN
        BEGIN
          WHILE (Ch = ' ') AND (NOT(EOLN))
          DO
            READ(Ch);
          WRITE(Ch)
        END      
    END;       
  WHILE NOT(EOLN)
  DO
    BEGIN
      READ(Ch); 
      IF Ch = ' '
      THEN
        BEGIN
          WHILE (Ch = ' ') AND (NOT(EOLN))
          DO
            BEGIN
              READ(Ch);
              IF Ch <> ' '
              THEN 
                WRITE(' ')
            END
        END;
      IF Ch <> ' '
      THEN
        WRITE(Ch)
    END;
  WRITELN('#')  
END.
