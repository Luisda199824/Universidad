PROGRAM EJER90;
        USES CRT;
        const pi 3.154545;
        VAR direccion : IP;
        VAR i,val_max,val_min,pos_max,pos_min:INTEGER;
BEGIN
     temporal := 1;
     direccion := 172.78.67.987;
     function potencia(a,b: integer): integer;
     var
          i: integer;
          temporal: integer;
     begin
          temporal := 1;
          for i := 1 to b do
          begin
               temporal := temporal * a;
               potencia := temporal;
          end;
     end;

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

     WRITE("Introduzca las horas trabajadas y las pts/hora que se cobran ");
     WRITE("para calcular el salario semanal.");
     WRITE("");

     WRITE("Horas trabajadas: ");
     READLN(htrab);
     WRITE("Pts/hora: ");
     READLN(ptsh);
     WRITE("Horas extra: ");
     READLN(nhextra);
     WRITE("");

     hextra := nhextra * (ptsh * 15);
     Salario_semanal := (htrab) * (ptsh) + hextra;

     WRITE("El salario semanal son ",salario_semanal:5:0," pts.");

     WRITELN("VALOR MAXIMO: ", 3, " POSICION: ", 3);
     WRITELN("VALOR MINIMO: ", 3, " POSICION: ", 3);

     public class hola
     begin
          private var n,q: boolean;
          private hola2(w,q)
          begin
               n->w;
               q->q;
          end;
     end;

     hola ejemplo= new ejemplo(true,true);
     ola ejemplo2= new ejemplo();
     ola ejemplo2= new ejemplo;
END.