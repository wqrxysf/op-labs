PROGRAM RCopyProgram(INPUT, OUTPUT);
PROCEDURE RCopy(VAR F1: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT(EOLN(F1))
  THEN
    BEGIN
      READ(F1, Ch);
      WRITE(OUTPUT, Ch);
      RCopy(F1)
    END
  ELSE
    WRITELN(OUTPUT)
END; {RCopy}
BEGIN {RCopyProgram}
  RCopy(INPUT)  
END. {RCopyProgram} 
