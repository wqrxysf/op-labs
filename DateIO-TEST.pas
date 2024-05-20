PROGRAM TestDateIO(INPUT, OUTPUT);
USES 
  DateIO;
VAR
  M: Month;
BEGIN {TestDateIO}
  ReadMonth(INPUT, M);
  WriteMonth(OUTPUT, M);
  WRITELN
END. {TestDateIO}
