PROGRAM IfSymbIsDigit(INPUT, OUTPUT); 
VAR 
  Ch: CHAR;
BEGIN
  READ(Ch);
  WRITELN('Input Data:', ' ', Ch);
  IF '0' <= Ch 
  THEN 
    IF Ch <= '9' 
    THEN 
      WRITELN('YES, ', Ch, ' IS DIGIT.') 
    ELSE 
      WRITELN('NO, ', Ch, ' IS''NT DIGIT.')
  ELSE 
    WRITELN('NO, ', Ch, ' IS DIGIT.' ) 
END.
