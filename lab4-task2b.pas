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
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N'
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN {'land' �������}
              Looking := 'L';
       IF W2 = 's'
       THEN
         IF W3 = 'e'
         THEN
           IF W4 = 'a'
           THEN {'sea' �������}
             Looking := 'S'      
    END; {while}
  WRITELN('Looking is ', Looking)
END. {SarahRevere}