PROGRAM BubbleSortC(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Q1: CHAR;
BEGIN {CopyFile}
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Q1);
      WRITE(OutFile, Q1)
    END;
  WRITELN(OutFile)
END; {CopyFile}
BEGIN { BubbleSort }
  { input in f1 }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN { sorted f1 in f2}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOF(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO 
            BEGIN
              READ(F1, Ch2);
              { min ch1 and ch2 in f2 }
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(F2, Ch1) 
        END;
      { f2 in F1}
      REWRITE(F1);
      RESET(F2);
      CopyFile(F2, F1)
    END;
  {f1 -> output}
  RESET(F1);
  CopyFile(F1, OUTPUT)
END.{ BubbleSort }
