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

     WRITE('Introduzca las horas trabajadas y las pts/hora que se cobran ');
     WRITE('para calcular el salario semanal.');
     WRITE('');

     WRITE('Horas trabajadas: ');
     READLN(htrab);
     WRITE('Pts/hora: ');
     READLN(ptsh);
     WRITE('Horas extra: ');
     READLN(nhextra);
     WRITE('');

     hextra := nhextra * (ptsh * 15);
     Salario_semanal := (htrab) * (ptsh) + hextra;

     WRITE('El salario semanal son ',salario_semanal:5:0,' pts.');

     WRITELN('VALOR MAXIMO: ', 3, ' POSICION: ', 3);
     WRITELN('VALOR MINIMO: ', 3, ' POSICION: ', 3);
END.