PROGRAM CounterWords(INPUT, OUTPUT);
{��������� ������������ ������������ ���-�� ����, ����������� � �������� ����� �� ���� InputFileName}
{� ������� ���������� � ���� �� ���� OutputFileName.}
{����������� ����������� ��������� - 250 ����(~1s); (500 - ~1.15s; 1000 - ~2s)}
USES
  WordsManager;
CONST
  InputFileName = 'C:\!op-labs\rgr\input2.txt';
  OutputFileName = 'C:\!op-labs\rgr\output.txt';
VAR
  IFile, OFile: TEXT;
BEGIN {ReadingWords}                                                    
  ASSIGN(IFile, InputFileName);
  ASSIGN(OFile, OutputFileName);
  RESET(IFile);
  REWRITE(OFile);
  StartCounting(IFile, OFile);
  WRITELN('complete')
END. {ReadWord}
