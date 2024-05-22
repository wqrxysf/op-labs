UNIT WordsManager;
{������, ����������� ������� ��������� ����}


INTERFACE


USES
  ContainerManagment;
PROCEDURE StartCounting(VAR IFile: TEXT; VAR OFile: TEXT);


IMPLEMENTATION


USES
  WordCustoms;

PROCEDURE WordControl(VAR Str: STRING);
{������������ ��������� �����, ����������� ��� � ��������� �� ������ ContainerManagment}
BEGIN {WordControl}
  IF (Str <> '') AND ((Str <> '-') OR (Str <> '- ')) {��������� ������� �������� � ����� "����"}
  THEN
    AddAndFindItem(Str);
  Str := ''
END; {WordControl}

PROCEDURE StartCounting(VAR IFile: TEXT; VAR OFile: TEXT);
{��������� ������� ��������� ���� � ��������� ���}
VAR
  Flag: BOOLEAN;
  Ch: CHAR;
  Str: STRING;
BEGIN {StartCounting}
  Flag := FALSE;
  Str := '';
  WHILE NOT EOF(IFile)
  DO
    BEGIN
      WHILE NOT EOLN(IFile)
      DO
        BEGIN
          READ(IFile, Ch);
          IsLetter(Ch, Flag);
          IF Flag
          THEN
            Str := Str + Ch {���������� ������, ��� ������������ ��������� ��� ������������������ �������� - �������� �����}
          ELSE
            WordControl(Str)
        END;
      WordControl(Str); {������������ ������ ����� ������: �����, ���������� � ����� ������ - ����� �����}
      READLN(IFile)
    END;
  PrintContainer(OFile)
END; {StartCounting}

BEGIN {WordsManager}
END. {WordsManager}
