PROGRAM BubbleSortProgram(INPUT, OUTPUT);
VAR                          
  F1, F2: TEXT;
PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR
  Ch1, Ch2: CHAR;
BEGIN {CopyAndSwap}
  IF NOT EOLN(F1)
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
    END
END; {CopyAndSwap}
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
PROCEDURE BubbleSort(VAR InFile, OutFile: TEXT);
VAR
  Sorted: CHAR;
BEGIN { BubbleSort }
  { input in f1 }
  REWRITE(InFile);
  CopyFile(INPUT, InFile);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN { sorted f1 in f2}
      Sorted := 'Y';
      RESET(InFile);
      REWRITE(OutFile);
      CopyAndSwap(InFile, OutFile, Sorted);
      { f2 in F1}
      REWRITE(InFile);
      RESET(OutFile);
      CopyFile(OutFile, InFile)
    END;
  {f1 -> output}
  RESET(InFile);
  CopyFile(InFile, OUTPUT)
END; { BubbleSort }
BEGIN { BubbleSortProgram }
  BubbleSort(F1, F2)
END.{ BubbleSortProgram }
