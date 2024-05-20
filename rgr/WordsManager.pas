UNIT WordsManager;
{Модуль, выполняющий функцию обработки слов}


INTERFACE


USES
  ContainerManagment;
PROCEDURE StartCounting(VAR IFile: TEXT; VAR OFile: TEXT);


IMPLEMENTATION


USES
  WordCustoms;

PROCEDURE WordControl(VAR Str: STRING; VAR Root: Tree; VAR Limit: INTEGER);
{Обрабатывает пойманное слово, упаковывает его в контейнер из модуля ContainerManagment}
VAR
  TFlag: BOOLEAN; 
BEGIN {WordControl}
  TFlag := FALSE;
  IF (Str <> '') AND ((Str <> '-') OR (Str <> '- ')) {исключаем подсчёт пробелов и знака "тире"}
  THEN
    BEGIN
      FindWord(Root, Str, TFlag);     {избавиться от findword, увеличивать счётчик слова в additem}
      IF NOT(TFlag)
      THEN
        AddItem(Root, Str, Limit)
    END;
  Str := ''
END; {WordControl}

PROCEDURE StartCounting(VAR IFile: TEXT; VAR OFile: TEXT);
{Запускает процесс обработки слов и завершает его}
VAR
  Flag: BOOLEAN;
  Ch: CHAR;
  Limit: INTEGER;
  Root: Tree;
  Str: STRING;
BEGIN {StartCounting}
  Flag := FALSE;
  Limit := 0;
  Root := NIL;  {-> implementation}
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
            Str := Str + Ch {используем строку, как своеобразный контейнер для последовательности символов - будущего слова}
          ELSE
            WordControl(Str, Root, Limit)
        END;
      WordControl(Str, Root, Limit); {обрабатываем символ конца строки: слово, записанное с новой строки - новое слово}
      READLN(IFile)
    END;
  PrintContainer(Root, OFile)
END; {StartCounting}

BEGIN {WordsManager}
END. {WordsManager}
