PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN {while}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      WRITELN(W1, W2, W3, W4);
      IF W4 = '#'
      THEN
        Looking := 'N'      
    END {while}
END. {SarahRevere}