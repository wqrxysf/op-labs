PROGRAM Reverse(INPUT, OUTPUT);
VAR
  Ch, flag: CHAR;
  F1, F2: TEXT;
PROCEDURE Sort;
  BEGIN
    IF NOT(EOLN)
    THEN
      BEGIN
        WHILE NOT(EOLN(F1))
        DO
          BEGIN
            RESET(F1);
            READ(F1, Ch);
            IF NOT(EOLN)
            THEN
              WRITE(F2, Ch)
          END;
        WRITE(OUTPUT, Ch)
      END;
  END;
BEGIN
  REWRITE(F1);
  REWRITE(F2);
  flag := 'Y';
  WHILE NOT(EOLN)
  DO
    BEGIN
      READ(Ch);
      WRITE(F2, Ch)
    END;
  WHILE flag = 'Y'
  DO
    BEGIN
      WHILE NOT(EOLN(F2))
      DO
        BEGIN
          RESET(F2);
          REWRITE(F1);
          READ(F2, Ch);
          WRITE(F1, Ch)
        END;
      RESET(F1);
      REWRITE(F2);
      Sort() 
    END
END.
