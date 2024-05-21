PROCEDURE CompareWithFLetter(W1, W2: STRING; I: INTEGER; VAR Ans: BOOLEAN);
VAR
  J: INTEGER;
  NW1, NW2: STRING;
BEGIN {CompareWithFLetter}
  NW1 := '';
  NW2 := '';
  writeln(I, ' ', LENGTH(W1), ' ', LENGTH(W2));
  IF (LENGTH(W1) >= I) AND (LENGTH(W2) >= I)
  THEN
    BEGIN
      FOR J := 1 TO (I - 1)
      DO
        BEGIN
          NW1 := NW1 + W1[J];
          NW2 := NW2 + W2[J]
        END;
      IF NW1 <> NW2
      THEN
        IF NW1 > NW2
        THEN
          Ans := TRUE
        ELSE
          Ans := FALSE
      ELSE
        BEGIN
          IF (W1[I] = '¸') AND (W2[I] IN ['à' .. 'å'])
          THEN
            Ans := TRUE {true - >/ false - <}
          ELSE
            IF (W1[1] = '¸') AND (W2[I] IN ['æ' .. 'ÿ'])
            THEN
              Ans := FALSE
            ELSE
              IF (W1[I] IN ['à' .. 'å']) AND (W2[I] = '¸')
              THEN
                Ans := FALSE
              ELSE
                IF (W1[I] IN ['æ' .. 'ÿ']) AND (W2[I] = '¸')
                THEN
                  Ans := TRUE
        END 
    END
  ELSE
    BEGIN
      IF I > LENGTH(W1) {ñðàâíåíèå ÄÎ áóêâû /¸/}
      THEN
        BEGIN
          FOR J := 1 TO LENGTH(W1)
          DO
            BEGIN
              NW1 := NW1 + W1[J];
              NW2 := NW2 + W2[J]
            END;
          IF NW1 > NW2
          THEN
            Ans := TRUE
          ELSE
            Ans := FALSE
        END
      ELSE
        BEGIN
          FOR J := 1 TO LENGTH(W2)
          DO
            BEGIN
              NW1 := NW1 + W1[J];
              NW2 := NW2 + W2[J]
            END;
          IF NW1 > NW2
          THEN
            Ans := TRUE
          ELSE
            Ans := FALSE
        END 
    END;
  writeln(NW1, '(', W1, ')', '; ', NW2, '(', W2, ')', '; ', Ans)   
END; {CompareWithFLetter}

PROCEDURE CompareWords(VAR Ans: BOOLEAN; W1, W2: STRING);
VAR
  I: INTEGER;
  F: BOOLEAN; 
BEGIN {CompareWords}
  F := FALSE;
  FOR I := 1 TO LENGTH(W1)
  DO
    IF W1[I] = '¸'
    THEN
      W1[I] := 'å';
  FOR I := 1 TO LENGTH(W2)
  DO
    IF W2[I] = '¸'
    THEN
      W2[I] = 'å';
  IF W1 >= W2
  THEN
    Ans := TRUE
END; {CompareWords}




















PROCEDURE CompareWords(VAR Ans: BOOLEAN; W1, W2: STRING);
VAR
  I: INTEGER;
  F: BOOLEAN; 
BEGIN {CompareWords}
  F := FALSE;
  FOR I := 1 TO LENGTH(W1)
  DO
    IF W1[I] = '¸'
    THEN
      BEGIN
        CompareWithFLetter(W1, W2, I, Ans);
        F := TRUE
      END;
  F := FALSE;
  FOR I := 1 TO LENGTH(W2)
  DO
    IF W2[I] = '¸'
    THEN
      BEGIN
        CompareWithFLetter(W1, W2, I, Ans);
        F := TRUE
      END;
  IF NOT(F)
  THEN
    IF W1 > W2
    THEN
      Ans := TRUE
    ELSE
      Ans := FALSE
END; {CompareWords}




PROCEDURE CompareWords(VAR Ans: BOOLEAN; W1, W2: STRING); {<-----------------------------------ÍÓÆÄÀÅÒÑß Â ÄÎÐÀÁÎÒÊÅ----------------------------------}
{Ñðàâíèâàåò äâå ñòðîêè, ñ ó÷¸òîì îñîáåííîñòè áóêâû "¸" â ascii}
BEGIN {CompareWords}
  IF (W1[1] = '¸') AND (W2[1] IN ['à' .. 'å'])
  THEN
    Ans := TRUE {true - >/ false - <}
  ELSE
    IF (W1[1] = '¸') AND (W2[1] IN ['æ' .. 'ÿ'])
    THEN
      Ans := FALSE
    ELSE
      IF (W1[1] IN ['à' .. 'å']) AND (W2[1] = '¸')
      THEN
        Ans := FALSE
      ELSE
        IF (W1[1] IN ['æ' .. 'ÿ']) AND (W2[1] = '¸')
        THEN
          Ans := TRUE
        ELSE
          IF W1 > W2
          THEN
            Ans := TRUE
          ELSE
            Ans := FALSE
END; {CompareWords}



