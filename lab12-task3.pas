PROGRAM Condition(INPUT, OUTPUT);
VAR
  Ch1, Ch2: CHAR;
BEGIN
  READ(Ch1);
  READ(Ch2);
  IF Ch1 < Ch2
  THEN
    Ch1 := Ch2
  ELSE
    Ch2 := Ch1;
  WRITELN(Ch1, Ch2)
END.