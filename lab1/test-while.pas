PROGRAM TestCopy(INPUT, OUTPUT);
VAR
  Ch, Ch_max: CHAR;
BEGIN
  READ(Ch, Ch_max);
  Ch_max := Ch;
  WHILE CH <> '#'
  DO
    BEGIN
      WRITELN('INPUT DATA:', Ch);
      IF Ch > Ch_max
      THEN
        Ch_max := Ch;
      WRITELN('MAX OF UR DATA:', Ch_max);
      READ(Ch)
      END;
  WRITELN
END.
