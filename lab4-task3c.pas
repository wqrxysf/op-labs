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
      IF W1 = 'l'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'n'
          THEN
            IF W4 = 'd'
            THEN {'land' �������}
              Looking := 'L';
      IF W1 = 's'
      THEN
        IF W2 = 'e'
        THEN
          IF W3 = 'a'
          THEN {'sea' �������}
            Looking := 'S';
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W2 = '#'
      THEN {����� ������}
        Looking := 'N'     
    END; {while}
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {SarahRevere}