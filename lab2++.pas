PROGRAM CountSymb(INPUT, OUTPUT);
VAR
  Line, Flag, Ed, De, So: CHAR;
BEGIN
  Ed := '0';
  De := '0'; 
  So := '0';
  Flag := '0';
  READ(Line);
  WHILE Line <> '#'
  DO
    BEGIN
      IF Ed = '0'
      THEN 
        Ed := '1'
      ELSE
        IF Ed = '1'
        THEN
          Ed := '2'
        ELSE
          IF Ed = '2'
          THEN
            Ed := '3'
          ELSE
            IF Ed = '3'
            THEN
              Ed := '4'
            ELSE
              IF Ed = '4'
              THEN
                Ed := '5'
              ELSE
                IF Ed = '5'
                THEN
                  Ed := '6'
                ELSE
                  IF Ed = '6'
                  THEN
                    Ed := '7'
                  ELSE
                    IF Ed = '7'
                    THEN
                      Ed := '8'
                    ELSE
                      IF Ed = '8'
                      THEN
                        Ed := '9'
                      ELSE
                        IF Ed = '9'
                        THEN
                          BEGIN
                            Ed := '0';
                            IF De = '0'
                            THEN
                              De := '1'
                            ELSE
                              IF De = '1'
                              THEN
                                De := '2'
                              ELSE
                                IF De = '2'
                                THEN
                                  De := '3'
                                ELSE
                                  IF De = '3'
                                  THEN
                                    De := '4'
                                  ELSE
                                    IF De = '4'
                                    THEN
                                      De := '5'
                                    ELSE
                                      IF De = '5'
                                      THEN
                                        De := '6'
                                      ELSE
                                        IF De = '6'
                                        THEN
                                          De := '7'
                                        ELSE
                                          IF De = '7'
                                          THEN
                                            De := '8'
                                          ELSE
                                            IF De = '8'
                                            THEN
                                              De := '9'
                                            ELSE
                                              IF De = '9'
                                              THEN
                                                BEGIN
                                                  De := '0';
                                                  IF So = '0'
                                                  THEN
                                                    So := '1'
                                                  ELSE
                                                    IF So = '1'
                                                    THEN
                                                      So := '2'
                                                    ELSE
                                                      IF So = '2'
                                                      THEN
                                                        So := '3'
                                                      ELSE
                                                        IF So = '3'
                                                        THEN
                                                          So := '4'
                                                        ELSE
                                                          IF So = '4'
                                                          THEN
                                                            So := '5'
                                                          ELSE
                                                            IF So = '5'
                                                            THEN
                                                              So := '6'
                                                            ELSE
                                                              IF So = '6'
                                                              THEN
                                                                So := '7'
                                                              ELSE
                                                                IF So = '7'
                                                                THEN
                                                                  So := '8'
                                                                ELSE
                                                                  IF So = '8'
                                                                  THEN
                                                                    So := '9'
                                                                  ELSE
                                                                    IF So = '9'
                                                                    THEN
                                                                      Flag := '1'
                                                END;
                          END;
      READ(Line)
    END;
  IF Flag <> '1'
  THEN
    WRITE('Number of characters is: ', So, De, Ed, '.')
  ELSE
    WRITE('Overflow error.');
  WRITELN          
END. 