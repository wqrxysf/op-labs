PROGRAM ReverseProgram(INPUT, OUTPUT);
PROCEDURE Reverse(VAR F1: TEXT);
VAR
  Ch: CHAR;
BEGIN {Reverse}
  IF NOT(EOLN(F1))
  THEN
    BEGIN
      READ(F1, Ch);
      Reverse(F1);
      WRITE(OUTPUT, Ch)
    END
END; {Reverse}
BEGIN {ReverseProgram}
  Reverse(INPUT);
  WRITELN(OUTPUT)
END. {ReverseProgram} 
