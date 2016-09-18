PROGRAM EJER31; 
        USES CRT;
        VAR pato_donald:CHAR;

BEGIN

     ClrScr;

     WRITE ('Introduzca un caracter alfanumerico: ');   READLN
(pato_donald);
     WRITE ('El caracter introducido es -----> ' + pato_donald)
END.


{Escribir un programa en Pascal que determine si un número
leído desde el teclado es par o impar}

PROGRAM EJER34; 
        USES CRT;

        VAR num:INTEGER;

BEGIN
        ClrScr;

        WRITE ('Introduzca un numero entero: ');       READLN (num);

        IF num = 0 THEN
           WRITE ('El numero introducido no es par ni impar, es 0')
        ELSE IF ((num mod 2 = 0)) THEN
           WRITE ('El numero introducido es par')
        ELSE
            WRITE ('El numero introducido es impar')

END.


PROGRAM EJER34;
        USES CRT;
        VAR num:INTEGER;
BEGIN

     ClrScr;

     WRITE('Introduzca un numero: ');
     READLN(num);

     IF (num mod 2 = 0) THEN
        WRITE('NUMERO PAR')
     ELSE
        WRITE('NUMERO IMPAR');
END.


{Escribir un programa en Pascal que detecte si un número
leído desde el teclado es mayor o menor que 100.}

PROGRAM EJER35; 
        USES CRT;

        VAR num:INTEGER;

BEGIN
        ClrScr;

        WRITE ('Escriba un numero entero:');    READLN (num);
        WRITELN ('');


        IF num < 100 THEN
        WRITE ('El numero que ha escrito es menor de 100')
        ELSE IF num > 100 THEN
        WRITE ('El numero que ha escrito es mayor de 100')
        ELSE
        WRITE ('El numero es 100')

END.


PROGRAM EJER35;
        USES CRT;
        VAR num:REAL;

BEGIN
     ClrScr;

     WRITE('Introduzca un numero : ');  READLN(num);

     IF (num <= 100) THEN
         WRITE('NUMERO MENOR O IGUAL A 100 ')
     ELSE
         WRITE('NUMERO MAYOR DE 100')
END.

{Escribir un programa en Pascal que dado un número del 1 a 7
escriba el correspondiente nombre del día de la semana.}

PROGRAM EJER36; 
        USES CRT;

        VAR num:INTEGER;

BEGIN

     ClrScr;

     WRITE ('Escriba un numero para ver con que dia corresponde: ');
     READLN (num);

     IF num=1 THEN
     WRITE ('Lunes');
     IF num=2 THEN
     WRITE ('Martes');
     IF num=3 THEN
     WRITE ('Miercoles');
     IF num=4 THEN
     WRITE ('Jueves');
     IF num=5 THEN
     WRITE ('Viernes');
     IF num=6 THEN
     WRITE ('Sabado');
     IF num=7 THEN
     WRITE ('Domingo');

END.


PROGRAM EJER36;
        USES CRT;
        VAR num_dia_sem:INTEGER;
BEGIN
     ClrScr;

     WRITE('Dia de la semana (numero) -> ');    READLN(num_dia_sem);

     CASE num_dia_sem OF
          1: WRITELN('Lunes');
          2: WRITELN('Martes');
          3: WRITELN('Miercoles');
          4: WRITELN('Jueves');
          5: WRITELN('Viernes');
          6: WRITELN('Sabado');
          7: WRITELN('Domingo');
     ELSE
         WRITELN('No es un dia de la semana');
     END;
END.

PROGRAM EJER37; 
        USES CRT;

        VAR num1,num2:INTEGER;
BEGIN
        ClrScr;

        WRITELN ('Escriba dos numeros: ');
        READLN (num1);  WRITE ('');    READLN (num2);
        WRITELN ('');

        IF num1 > num2 THEN
        BEGIN
             WRITE(num2,' ',num1,'. El primer numero introducido
		es mayor.');
             WRITE(' Se cambia el orden.');
        END

        ELSE
        BEGIN
             WRITE(num1,' ',num2,'. El segundo numero introducido es
		mayor.');
             WRITE(' No se cambia el orden.');
        END;
END.


PROGRAM EJER37;
        USES CRT;
        VAR num1,num2,temp:INTEGER;
BEGIN
     ClrScr;

     WRITE('Numero 1: ');       READLN(num1);
     WRITE('Numero 2: ');       READLN(num2);

     IF (num1 > num2) THEN
        BEGIN
             temp:=num1;
             num1:=num2;
             num2:=temp;
             WRITELN('Numero intercambiados');
             WRITE('Numero 1: '); WRITELN(num1);
             WRITE('Numero 2: '); WRITELN(num2);
        END
     ELSE
        BEGIN
             WRITELN('Numeros sin intercambiar');
             WRITE('Numero 1: '); WRITELN(num1);
             WRITE('Numero 2: '); WRITELN(num2);
        END;
END.

// Escribir un programa en Pascal que dada una calificación en
// valor alfabético (A,B,C,D ó E) indique su equivalente en
// valor numérico (4,5,6,7 u 8).

PROGRAM EJER38; 
        USES CRT;

        VAR valor:CHAR;
BEGIN
        ClrScr;

        WRITE ('Escriba una calificacion entre a y e: ');
        READLN (valor);
        WRITELN ('');

     CASE UPCASE(valor) OF
        'A': WRITE ('El valor correspondiente es: 4');
       	'B': WRITE ('El valor correspondiente es: 5');
        'C': WRITE ('El valor correspondiente es: 6');
       	'D': WRITE ('El valor correspondiente es: 7');
        'E': WRITE ('El valor correspondiente es: 8')
     ELSE
       		 WRITE ('La calificacion no existe');
     END;
END.


PROGRAM EJER38;
        USES CRT;
        VAR cal:CHAR;
BEGIN
     ClrScr;

     WRITE('Introduzca una calificacion (A-E):');
     READLN(cal);

     CASE cal OF
          'A': WriteLn('Calificacion numerica --> 4');
          'B': WriteLn('Calificacion numerica --> 5');
          'C': WriteLn('Calificacion numerica --> 6');
          'D': WriteLn('Calificacion numerica --> 7');
          'E': WriteLn('Calificacion numerica --> 8');
     ELSE
         WriteLn('Calificacion incorrecta');
     END;
END.

// Escribir un programa en Pascal que lea desde teclado el importe
// bruto de una factura y determine el importe neto según los
// siguientes criterios.

// · Importe bruto menor de 20.000 ->		sin descuento
// · Importe bruto mayor de 20.000 -> 		15% de descuento

PROGRAM EJER39; 
        USES CRT;

        VAR importe_bruto:REAL;
        VAR descuento, total:REAL;

BEGIN
        ClrScr;

        WRITE ('Indique el importe de su factura para ver ');
        WRITELN ('si le "descontamos" algo');
        WRITELN ('');
        READLN (importe_bruto);
        WRITELN ('');

        {calcula el importe bruto con descuento del 15%}
        descuento:=importe_bruto * 0.15;

        IF importe_bruto > 20000 THEN

        BEGIN
             WRITELN ('SE MERECE UN DESCUENTO DE: ',descuento:5:2,
		' PTS');
             total:=importe_bruto - descuento;
             WRITELN ('El total es de la factura es de: ',total:5:2,
		' pts')
        END

        ELSE
             WRITE ('CON ESE DINERO NO SE MERECE UN DESCUENTO')

END.


PROGRAM EJER39;
        USES CRT;
        VAR imp_bru,imp_net:REAL;
BEGIN
     ClrScr;

     WRITE('Importe Bruto -> ');        READLN(imp_bru);

     IF imp_bru <= 20000 THEN
        imp_net:=imp_bru
     ELSE
        imp_net:=imp_bru-(0.15*imp_bru);

     WRITE('Importe a pagar: ');        WRITE(imp_net:5:2)
END.


// Escribir un programa en Pascal que una vez leída una hora
// en formato (horas, minutos, segundos) indique cual será el tiempo
// dentro de un segundo.

PROGRAM EJER40; 
        USES CRT;
        {Las variables son: horas, minutos y segundos}
        {Son las horas, minutos y segundos introducidos por el
	usuario}
        VAR h, m, s:INTEGER;
        VAR h2,m2,s2:INTEGER;
        {Son las horas, minutos y seguntos a los que se les sumara}
BEGIN
     ClrScr;

     WRITE ('Escriba en formato horas, minutos y segundos');
     WRITELN ('');
     WRITE ('Horas '); 		READLN (h);
     WRITE ('Minutos ');       	READLN (m);
     WRITE ('Segundos ');    	READLN (s);
     WRITELN ('');
     WRITELN ('Se le sumara un segundo a la hora actual.');
     WRITELN ('');

     s:= s + 1;

     IF s = 60 THEN
        s2 := 0
     ELSE
        s2 := s;

     m:= ((m * 60) + s) div 60;

     IF m = 60 THEN
        m2 := 0
     ELSE
        m2 := m;

     h2:=((h * 60) + m) div 60;

     IF h2 = 24 THEN
        h2 := 0;

     WRITELN (h2,':',m2,':',s2);
END.

PROGRAM EJER40;
        USES CRT;
        VAR h1,m1,s1:INTEGER;
        VAR h2,m2,s2:INTEGER;
BEGIN
     Clrscr;

     WRITE('Horas ------> ');   READLN(h1);
     WRITE('Minutos ----> ');   READLN(m1);
     WRITE('Segundos ---> ');   READLN(s1);

     s2:=s1+1;

     IF s2=60 THEN
     BEGIN
          s2:=0;
          m2:=m1+1;
     END;

     IF m2=60 THEN
     BEGIN
          m2:=0;
          h2:=h1+1;
     END;

     IF h2=24 THEN
     BEGIN
          s2:=0;
          m2:=0;
          h2:=0;
     END;

     WRITE(h1); WRITE(' hh ');
     WRITE(m1); WRITE(' mm ');
     WRITE(s1); WRITE(' ss ');

     WRITE(' + 1 segundo son: ');

     WRITE(h2); WRITE(' hh ');
     WRITE(m2); WRITE(' mm ');
     WRITE(s2); WRITE(' ss ');
END.