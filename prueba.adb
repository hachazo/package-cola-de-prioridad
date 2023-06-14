with Ada.Text_Io, Ada.Integer_Text_Io, Cola_prioridad;
use Ada.Text_Io, Ada.Integer_Text_Io;
procedure Prueba is
   function mayor (X,Y: Integer) return Boolean is
   begin
      return x>Y;
      end mayor;
   package Colapinc is new Cola_Prioridad(Integer,mayor);
   use Colapinc;
   
   subtype Colap is Tcolap(10);
   
   Cola:Colap;
   dimension:integer;
   procedure Llenar_Cola(Cola: out Tcolap; Dim: out Integer) is
   Numero: Integer;
   begin
      dim:=0;
      while not Llena(Cola) loop
           
         Get(Numero);
         Insertar(Cola,Numero);
         dim:=dim+1;
         end loop;
   end llenar_cola;
   procedure Imprimir(Cola: in out Tcolap; Dim: in Integer) is
   numero: integer;
   begin
      new_line;
      for I in 1..Dim loop
         suprimir(cola,numero);
         put_line(integer'image(numero));
         end loop;
      end imprimir;
begin
   
   Llenar_Cola(Cola,Dimension);
   imprimir(cola,dimension);
   end prueba;

