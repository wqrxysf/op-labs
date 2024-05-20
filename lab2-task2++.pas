PROGRAM CountSymb(INPUT, OUTPUT);
VAR
  Line: CHAR;
  So, De, Ed: CHAR;
  Flag: CHAR;
BEGIN
  READ(Line);
  Ed := CHR(0);
  De := CHR(0);
  So := CHR(0);
  Flag := '0';
  WHILE Line <> '#'
  DO
    BEGIN
      Ed := CHR(ORD(Ed) + 1);
      IF Ed = CHR(10)
      THEN
        BEGIN
        De := CHR(ORD(De) + 1);
        Ed := CHR(0);
        IF De = CHR(10)
        THEN
          BEGIN
            So := CHR(ORD(De) + 1);
            De := CHR(0);
            IF So = CHR(10)
            THEN
              Flag := '1'
          END;
        END;
      READ(Line)
    END;
  IF Flag <> '1'
  THEN
    WRITE(ORD(So), ORD(De), ORD(Ed))
  ELSE
    WRITE('Overflow error.');
  WRITELN
END.