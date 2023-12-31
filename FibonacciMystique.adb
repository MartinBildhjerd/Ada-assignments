with Ada.Text_IO;             use Ada.Text_IO;
with Ada.Integer_Text_IO;     use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;       use Ada.Float_Text_IO;

procedure Rek is
   
-----------------------------------------------------------------------------   
   function Leca(HH : in Natural) return Natural is
      
   begin
      
      if HH = 0 then
	 return 0;
      elsif HH = 1 then
	return 0;
      else
	 return (HH - 1) * ((2*HH)-3) + Leca(HH - 1);
      end if;
      
   end Leca;
-----------------------------------------------------------------------------   
   function Fib(N : in Natural) return Natural is
      
   begin
      
      if N = 0 then
	 return 0;
      elsif N = 1 then
	 return 1;
      else
	 return Fib(N - 1) + Fib(N - 2);
      end if;
      
   end Fib;
-----------------------------------------------------------------------------   
   
   N, HH : Natural;
   
begin
   
   Put("Mata in N och HH: ");
   Get(N);
   Get(HH);
   Put("Fibonacci-tal nummer ");
   Put(N, Width => 1);
   Put(" är ");
   Put(Fib(N), Width => 1);
   Put(".");
   
   New_Line;
   Put("Det behövs ");
   Put(Leca(HH), Width => 1);
   Put(" stenar för att bygga trappan.");
   
end Rek;
