generic
   type Telemento is private;
   with function ">" (Izq, Der: in Telemento) return Boolean;
   
   package Cola_prioridad is
      type Tcolap (Max: Positive) is private;
      Overflow: exception;
      Underflow: exception;
      procedure Inicializar (Colap: in out Tcolap);
      procedure Insertar (Colap: in out Tcolap; Elemento: in Telemento);
      procedure Suprimir (Colap: in out Tcolap; Elemento: out Telemento);
      function Llena (Colap: in Tcolap) return Boolean;
      function Vacia (Colap: in Tcolap) return Boolean;
      
      private
      type Veccola is array (Positive range <>) of Telemento;
      type Tcolap (Max: Positive) is record
         Final: Natural:= 0;
         Elementos: Veccola (1..Max);
      end record;
      
   end Cola_prioridad;
   
--   function mayor (X,Y: Integer) return Boolean is
--   begin
--      return x>Y;
--      end mayor;
--   package Colapinc is new Cola_Prioridad(Integer,mayor);
--   use Colapinc;
--   
--   subtype Colap is Tcolap(10);
--   Cola:Colap;
--   dimension:integer;
      
--   Cola:Colap;
--   dimension:integer;
--   
--   procedure Llenar_Cola(Cola: out Tcolap; Dim: out Integer) is
--   procedure Imprimir(Cola: in out Tcolap; Dim: in Integer) i