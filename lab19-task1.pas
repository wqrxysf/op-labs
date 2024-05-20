PROGRAM Prime(INPUT, OUTPUT);
CONST
  Min = 2;
  Max = 10;
TYPE
  Numbers = Min .. Max;
VAR
  Sieve: SET OF Min .. Max;
  Count: Numbers;
  Element: Numbers;
BEGIN {PRIME}
  Sieve := [Min .. Max];
  Count := Min;
  WHILE Count <= Max
  DO
    BEGIN
      IF (Count IN Sieve)
      THEN
        BEGIN
          WRITE(Count, ' ');
          Element := Count;
          WHILE Element <= Max
          DO
            BEGIN
              IF ((Element MOD Count = 0) OR (Element MOD 2 = 0) OR (Element MOD 3 = 0) OR (Element MOD 5 = 0) OR (Element MOD 7 = 0)) AND (Element IN Sieve)
              THEN
                Sieve := Sieve - [Element];
              Element := SUCC(Element) 
            END
        END;
      Count := SUCC(Count)  
    END;
  WRITELN
END. {PRIME}

