PROGRAM FormatProgram(INPUT, OUTPUT);
VAR
  W2, W3, W4: CHAR;
PROCEDURE FindArgs;
BEGIN
   READ(W4);
   WHILE W4 <> ')'
   DO
     BEGIN
       WRITE(W4);
       READ(W4)
     END;
   WRITE(W4);
   READ(W4); {after write no one END}
   IF W4 = ';'
   THEN
     WRITE(';');
   WRITELN
END;
BEGIN {formatprogram}
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  WHILE NOT EOF
  DO
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN
          W2 := W3;
          W3 := W4;
          READ(W4);
          IF (W2 = 'G') AND (W3 = 'I') AND (W4 = 'N') {for begin}
          THEN
            WRITELN('BEGIN');
          IF (W2 = 'E') AND (W3 = 'A') AND (W4 = 'D') {for read}
          THEN
            BEGIN
              WRITE('  READ');
              FindArgs
            END;        
          IF (W2 = 'I') AND (W3 = 'T') AND (W4 = 'E') {for write/ln}
          THEN
            BEGIN
              READ(W4);
              IF W4 = 'L'
              THEN
                BEGIN
                  WRITE('  WRITEL');
                  FindArgs
                END    
              ELSE
                BEGIN {write}
                  WRITE('  WRITE('); {is`nt ln, "(" skiped}
                  FindArgs
                END {write}   
            END; {write/ln}
          IF (W2 = 'E') AND (W3 = 'N') AND (W4 = 'D') {for end}
          THEN
            WRITELN('END.')
        END
    END
END. {formatprogram}
