PROGRAM EJERC101; 
        USES CRT;
        VAR cadena:STRING;
        VAR i:INTEGER;
BEGIN
     cadena:="hola";

     FOR i:=1 TO LENGTH(cadena) DO
     BEGIN
           original[i]:= cadena[i];
           WRITE (original[i]);
     END;

     WRITELN ('');

     FOR i:=LENGTH(cadena) TO 1 DO
     BEGIN
          invertida[i]:=cadena[i];
          WRITE (invertida[i]);
     END;
END.