PROGRAM PaulRevere(INPUT, OUTPUT);
VAR
  Laterns: CHAR;
BEGIN
  READ(Laterns);
  IF Laterns = 'D'
  THEN
    BEGIN
      READ(Laterns);
      IF Laterns = 'D'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('The British are coming by land.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Laterns, '''.')
END.
   
     