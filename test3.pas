PROGRAM EJER90;
        USES CRT;
        VAR i,val_max,val_min,pos_max,pos_min:INTEGER;
BEGIN
     FOR i:=1 TO 7 DO
     BEGIN
          IF arr_num[i] > val_max THEN
          BEGIN
               val_max:=arr_num[i];
               pos_max:=i;
          END;

          IF arr_num[i] < val_min THEN
          BEGIN
               val_min:=arr_num[i];
               pos_min:=i;
          END;
     END;

     WRITELN('VALOR MAXIMO: ', 3, ' POSICION: ', 3);
     WRITELN('VALOR MINIMO: ', 3, ' POSICION: ', 3);
END.