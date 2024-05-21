PROGRAM FormatProgram(INPUT, OUTPUT);
VAR
  Ch, flag: CHAR;
PROCEDURE WriteArguments;
BEGIN
  WHILE (Ch <> ')') AND (NOT EOLN)
  DO
    BEGIN
      IF Ch <> ' '
      THEN
        BEGIN
          WRITE(Ch);
          IF Ch = ','
          THEN
            WRITE(' ')
        END;
      READ(Ch)
    END
END;
BEGIN
  flag := 'F';
  WHILE (NOT(EOLN)) OR (NOT(EOF))
  DO
    BEGIN
      WHILE flag = 'F'
      DO
        BEGIN
          READ(Ch);
          IF (Ch = ' ') OR (Ch = ';')
          THEN
            BEGIN
              flag := 'T';
              IF Ch = ';'
              THEN
                WRITE(Ch)
            END;
          IF Ch = '('
          THEN
            BEGIN
              WriteArguments;
              WRITE(Ch);
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
                      READ(Ch);
                      READ(Ch);
                      READ(Ch);
                      READ(Ch);
                      flag := 'e';
                    END
                  ELSE
                    WRITE('  ')
                END
              ELSE
                BEGIN
                  flag := 'T';
                  IF Ch = ';'
                  THEN
                    WRITE(Ch)
                END 
            END;
          IF flag = 'F'
          THEN
            IF (Ch = 'B') OR (Ch = 'b')
            THEN
              BEGIN
                WRITE(Ch);
                READ(Ch);
                WRITE(Ch);
                READ(Ch);
                WRITE(Ch);
                READ(Ch);
                WRITE(Ch);
                READ(Ch);
                WRITELN(Ch);
                WRITE('  ');
              END
            ELSE
              WRITE(Ch)
        END;
      WHILE flag = 'T' {Ch = ' '/' e'/' <command>'}
      DO
        BEGIN
          READ(Ch);
          {writeln(Ch);}
          IF (Ch = 'E') OR (Ch = 'e')
          THEN
            BEGIN
              WRITELN;
              IF Ch = 'E'
              THEN
                WRITELN('END.')
              ELSE
                WRITELN('end.')
              {flag := 'e'}
            END
          ELSE
            IF Ch = ' '
            THEN
              flag := 'T'
            ELSE
              IF Ch = '('
              THEN
                BEGIN
                  WriteArguments;
                  WRITE(Ch);
                  flag := 'F' 
                END  
              ELSE
                IF Ch = 'B'
                THEN
                  BEGIN                                       
                    WRITE(Ch);
                    flag := 'F'
                  END
                ELSE
                  IF Ch = ';'
                  THEN
                    WRITE(Ch)
                  ELSE
                    BEGIN
                      IF (Ch = 'B') OR (Ch = 'b')
                      THEN
                        BEGIN
                          WRITE(Ch);
                          READ(Ch);
                          WRITE(Ch);
                          READ(Ch);
                          WRITE(Ch);
                          READ(Ch);
                          WRITE(Ch);
                          READ(Ch);
                          WRITELN(Ch);
                          WRITE('  ')
                        END
                      ELSE
                        BEGIN
                          {WRITELN;}
                          WRITE('  ', Ch);
                          flag := 'F'
                        END
                    END   
        END
    END
END.
