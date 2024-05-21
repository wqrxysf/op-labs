PROGRAM PaulRevere(INPUT, OUTPUT);
VAR
  Lanterns: CHAR;
BEGIN
  READ(Lanterns);
  IF Lanterns > '0'
  THEN
    IF Lanterns < '3'
    THEN
      WRITE('The British coming by ');
  IF Lanterns = '1'
  THEN
    WRITELN('land')
  ELSE
    IF Lanterns = '2'
    THEN
      WRITELN('see')
    ELSE
      WRITELN('The North Church shows only: ''', Lanterns, '''.')
END.
