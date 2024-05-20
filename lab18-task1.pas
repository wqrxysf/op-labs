PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 3;
  ClassSize = 5;
TYPE
  Score = 0 .. 100;
VAR
  WhichScore: 0 .. NumberOfScores;
  Student: 0 .. ClassSize;    {}
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Students averages:');
  Student := 0;
  WHILE Student <> ClassSize
  DO
    BEGIN
      TotalScore := 0;
      WhichScore := 0;
      WHILE WhichScore < 3
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1 {}
        END;
      READLN;
      TotalScore := TotalScore * 10;  {*10?}
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD 10 >= 5  {}
      THEN
        WRITELN(Ave DIV 10 + 1)
      ELSE
        WRITELN(Ave DIV 10);
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1  {}
    END;
  WRITELN;
  WRITELN('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV 10, '.', ClassTotal MOD 10:1)
END. {AverageScore}
