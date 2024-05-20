PROGRAM Encryption(INPUT, OUTPUT);
CONST
  Len = 20;
  LastEncodingChar = 'Z';
  FirstEncodingChar = ' ';
  IndexNumb = 0;
  Range = [' ', 'A' .. 'Z'];
TYPE
  RangeType = 0 .. (Len - 1)
  Str = ARRAY [RangeType] OF CHAR;
  Chiper = ARRAY [FirstEncodingChar .. LastEncodingChar] OF CHAR;
VAR
  Msg: Str;
  Code: Chiper;                                             
  I: INTEGER;

PROCEDURE Initialize(VAR Code: Chiper);
BEGIN{Initialize}
  Code[' '] := '/';
  Code['A'] := 'Z';
  Code['B'] := 'Y';
  Code['C'] := 'X';
  Code['D'] := '#';
  Code['E'] := 'V';
  Code['F'] := 'U';
  Code['G'] := 'T';
  Code['H'] := 'S';
  Code['I'] := 'I';
  Code['J'] := 'Q';
  Code['K'] := 'P';
  Code['L'] := '!';
  Code['M'] := 'N';
  Code['N'] := 'M';
  Code['O'] := '2';
  Code['P'] := 'K';
  Code['Q'] := '$';
  Code['R'] := 'D';
  Code['S'] := 'H';
  Code['T'] := '*';
  Code['U'] := 'F';
  Code['V'] := 'E';
  Code['W'] := 'T';
  Code['X'] := 'C';
  Code['Y'] := 'B';
  Code['Z'] := 'A'
END;{Initialize}

PROCEDURE Encode(VAR S: Str; VAR StrLen: INTEGER);
VAR
  Index: RangeType;
BEGIN{Encode}
  FOR Index := 0 TO StrLen
  DO
    IF S[Index] IN Range
    THEN
      WRITE(Code[S[Index]])
    ELSE  
      WRITE(S[Index]);                                          
  WRITELN
END;{Encode}

BEGIN{Encryption}
  Initialize(Code);
  WHILE NOT EOF
  DO
    BEGIN
      I := IndexNumb;
      WHILE NOT EOLN AND (I < Len)
      DO
        BEGIN        
          READ(Msg[I]);
          I := I + 1
        END;
      Encode(Msg, I);  
      READLN     
    END
END.{Encryption}
