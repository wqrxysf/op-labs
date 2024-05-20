UNIT WordCustoms;     {WordsProcessor}
{������, ��������������� ��� ���������� ����������� �� �������: ���������, ���������� � ������� ��������}


INTERFACE


PROCEDURE IsLetter(VAR Symb: CHAR; VAR F: BOOLEAN);
PROCEDURE CompareWords(VAR Ans: BOOLEAN; W1, W2: STRING);


IMPLEMENTATION


CONST
  LetterRange = 32; {� ascii ������� �/� ����������� ������� ������� �������� = 32(�� ����. �/�)}

PROCEDURE CompareWords(VAR Ans: BOOLEAN; W1, W2: STRING);
{���������� ��� ������, � ������ ����������� ����� "�" � ascii}
VAR
  I: INTEGER;
BEGIN {CompareWords}
  FOR I := 1 TO LENGTH(W1)
  DO
    IF W1[I] = '�'
    THEN
      W1[I] := '�';
  FOR I := 1 TO LENGTH(W2)
  DO
    IF W2[I] = '�'
    THEN
      W2[I] := '�';
  IF W1 >= W2
  THEN
    Ans := TRUE
END; {CompareWords}

PROCEDURE IsLetter(VAR Symb: CHAR; VAR F: BOOLEAN);
{���������, �������� �� ���������� ������ - ������(�������), �������� � � ������ �������}
BEGIN {IsLetter}
  F := FALSE;
  IF Symb IN ['A' .. 'Z', '�' .. '�', '�']
  THEN
    BEGIN
      IF Symb in ['�']  {ascii '�' = 240; ascii '�' = 241}
      THEN
        BEGIN
          Symb := '�'; 
          F := TRUE
        END
      ELSE
        BEGIN
          Symb := CHR(ORD(Symb) + LetterRange); {��������� �/� ����������� ������� � ascii = LetterRange = 32} 
          F := TRUE
        END
    END
  ELSE
    IF Symb IN ['-', 'a' .. 'z', '�' .. '�', '�']
    THEN
      F := TRUE  
END; {IsLetter}

BEGIN {WordCustoms}
END. {WordCustoms}
