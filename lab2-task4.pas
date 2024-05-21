PROGRAM Less(INPUT, OUTPUT);
VAR
  Ch: CHAR; 
BEGIN
  READ(Ch);
  WRITE('You''r sentence w/o space: ');
  WHILE Ch <> '#'
  DO
    BEGIN 
      IF Ch <> ' '
      THEN 
        WRITE(Ch); 
      READ(Ch)
    END;
  WRITELN
END.
