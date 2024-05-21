PROGRAM FormatProgram(INPUT, OUTPUT);
VAR
  Ch, flag: CHAR;
BEGIN
  flag := '0';
  READ(Ch);
  WHILE NOT(EOLN)
  DO
    BEGIN
      WHILE Ch <> '('
      DO
        BEGIN {<> (}
          IF Ch <> ' '
          THEN
            BEGIN
              WRITE(Ch);
              READ(Ch)
            END
          ELSE
            BEGIN {= ' '}
              WRITELN;         
              WRITE('  ')        
            END; {= ' '}          
        END; {<> (}
      WHILE Ch <> ')' { = )}
      DO
        BEGIN
          WRITE(Ch);
          READ(Ch)
        END
    END {not eoln}
END.  
