PROGRAM IFSort3(INPUT, OUTPUT);
{������� 3-��ப� �� INPUT � OUTPUT}
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('�室�� ����� ', Ch1, Ch2, Ch3);
  WRITE('C���஢���� ����� ');
  BEGIN {����㥬 Ch1, Ch2, Ch3 � OUTPUT }
    IF Ch1 < Ch2
    THEN
      {Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch1 < Ch2 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN(Ch1, Ch2, Ch3)
      ELSE
        {Ch1 < Ch2, Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch1 < Ch3
        THEN {Ch1 < Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch1, Ch3, Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch3, Ch1, Ch2)
    ELSE
      {Ch2 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch1 < Ch3
      THEN {Ch2 <= Ch1 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN(Ch2, Ch1, Ch3)
      ELSE
        {Ch2 <= Ch1, Ch3 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch2 < Ch3
        THEN {Ch2 < Ch3 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch2, Ch3, Ch1)
        ELSE {Ch3 <= Ch2 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch3, Ch2, Ch1)
  END
END. {IFsort3}