PROGRAM EJER41; 
        USES CRT;

        VAR htrab, ptsh:REAL; {Horas trabajadas y pts hora}
        VAR nhextra, hextra:REAL; {Numero de horas extra y horas extra}
        VAR salario_semanal:REAL;
BEGIN
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
END.