PROGRAM EJER82; 
        USES CRT;
        VAR i, b:INTEGER;
BEGIN
     i:=1+i;

     WHILE i <= 10 DO
     BEGIN
          arr_num[i]:=i;

          IF (i + 2) <> 0 THEN
          BEGIN
             WRITELN(arr_num[i]);
          END;

          i := i + 1;
     END;
END.