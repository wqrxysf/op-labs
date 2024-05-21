PROGRAM ProgramFormatter(INPUT, OUTPUT);
VAR
  Ch, flag: CHAR;
BEGIN
  flag := 'F';
  WHILE (NOT(EOLN)) OR (NOT(EOF))
  DO
    BEGIN
      WHILE flag = 'F'
      DO
        BEGIN
          READ(Ch);
              IF (Ch <> ' ') AND (Ch <> ';')
              THEN
                BEGIN
                  WRITELN;
                  IF (Ch = 'E') OR (Ch = 'e')
                  THEN
                    BEGIN
                      WRITE(Ch);
                      READ(Ch);
                      WRITE(Ch);
                      READ(Ch);
                      WRITE(Ch);
                      READ(Ch);
                      WRITE(Ch);
                      flag := 'e'
                    END
                END    
        END
    END
END.
