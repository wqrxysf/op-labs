PROGRAM LetterPrint(INPUT, OUTPUT);
CONST
  Min = 1;
  WidthTable = 5;
  Max = 25;          
  PrintChar = '#';
TYPE
  Table = SET OF Min .. Max;
  Chars = (OutOfRange, A, B, C, D);
VAR
  Value: Table;
  Letters: Chars;
  Letter: CHAR;
PROCEDURE PrintL(VAR Letters: Chars; VAR Value: Table);
VAR
  Numb: INTEGER;
PROCEDURE InitL(VAR Letters: Chars; VAR Value: Table);
BEGIN {InitL}                 
  CASE Letters OF
    A: Value := [2, 3, 4, 6, 10, 11, 12, 13, 14, 15, 16, 20, 21, 25];
    B: Value := [1, 2, 3, 4, 6, 10, 11, 12, 13, 14, 16, 20, 21, 22, 23, 24];
    C: Value := [2, 3, 4, 6, 10, 11, 16, 20, 22, 23, 24];
    D: Value := [1, 2, 3, 4, 6, 10, 11, 15, 16, 20, 21, 22, 23, 24];
  END
END; {InitL}
BEGIN {PrintL}
  InitL(Letters, Value);
  FOR Numb := Min TO Max
  DO
    BEGIN
      IF Numb IN Value
      THEN
        WRITE(PrintChar)
      ELSE
        WRITE(' ');
      IF Numb MOD WidthTable = 0
      THEN
        WRITELN
    END
END; {PrintL}                                                                     
BEGIN {LetterPrint}
  Letter := 'C';                
  CASE Letter OF
    'A': Letters := A;
    'B': Letters := B;
    'C': Letters := C; 
    'D': Letters := D;
  ELSE
    Letters := OutOfRange;
  END;
  CASE Letters OF
    A, B, C, D: PrintL(Letters, Value);
  ELSE
    WRITELN('WARNING!')
  END 
END. {LetterPrint}

