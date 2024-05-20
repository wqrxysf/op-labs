PROGRAM TestRemove(INPUT, OUTPUT);
{������ ������ �� ����� ,���������� �� ����� RemoveExtraBlanks}
USES Queue;
VAR
  Ch: CHAR;
PROCEDURE RemoveExtraBlanks;
{������� �����e ������� ����� ������� �� ����� ������}
VAR
  Ch, Blank, LineEnd: CHAR;
BEGIN {RemoveExtraBlanks}
  Blank := ' ';
  LineEnd := '$';
  AddQ(LineEnd); {�������� ����� ������ � �������}
  HeadQ(Ch);
  {������� �������}
  WHILE Ch <> LineEnd
  DO
    BEGIN
      WHILE (Ch <> Blank) AND (Ch <> LineEnd)
      DO
        BEGIN
          AddQ(Ch);
          DelQ;
          HeadQ(Ch)
        END;
      WHILE Ch = Blank
      DO
        BEGIN
          DelQ;
          HeadQ(Ch)
        END;
      IF Ch <> LineEnd
      THEN
        AddQ(Blank)
    END;
  DelQ {������ LineEnd �� �������}
END; {RemoveExtraBlanks}
BEGIN {TestRemove}
  EmptyQ;
  WRITE('����:');
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(Ch);
      AddQ(Ch);
    END;
  WRITELN;
  RemoveExtraBlanks;
  WRITE('�����:');
  HeadQ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(Ch);
      DelQ;
      HeadQ(Ch)
    END;
  WRITELN('#')
END. {TestRemove}
