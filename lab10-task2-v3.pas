PROGRAM FormatProgram(INPUT, OUTPUT);
VAR
  Ch: CHAR;
BEGIN
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
            BEGIN {= (}
              READ(Ch);
              IF Ch = 'E'
              THEN
                BEGIN
                  WRITELN('END.');
                  READ(Ch);
                  READ(Ch)
                END
              ELSE
                BEGIN
                  WRITELN;
                  WRITE('  ')
                END
            END; {= (}
        END; {<> (}
      WHILE Ch <> ')' { = )}
      DO
        BEGIN
          WRITE(Ch);
          READ(Ch)
        END
    END {not eoln}
END.  
