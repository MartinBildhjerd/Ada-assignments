with Ada.Integer_Text_IO;           use Ada.Integer_Text_IO;
with Ada.Text_IO;                   use Ada.Text_IO;
with Ada.Float_Text_IO;             use Ada.Float_Text_IO;

procedure main is
   
    type Falt_DS1_Index is range 31 .. 35;
   type Falt_DS1 is
     array (Falt_DS1_Index) of Float;

   
   
   type Inner_Falt_DS2 is
     array (Character range '5' .. '9') of String(1 .. 5);
   type Falt_DS2 is
     array (False .. True) of Inner_Falt_DS2;

   
   
   type Falt_DS3 is
     array (73 .. 74, Character range '4' .. '8') of Integer;
 procedure Get (X : out Falt_DS1) is
   begin
      For I in reverse X'Range loop
     Get(X(I));
      end loop;
      Skip_Line;
   end Get;
   
   procedure Put (X : in Falt_DS1) is
   begin
      For I in reverse X'Range loop
     Put(" ");
     Put(X(I),Fore => 0, Aft => 3, Exp => 0);
      end loop;
      New_Line;
   end Put;
   
    procedure Get (X : out Falt_DS2) is
    C : Character;
   begin
      for J in Falt_DS2'Range loop
     for I in reverse Inner_Falt_DS2'Range loop
        Get(X(J)(I));
        if I /= Inner_Falt_DS2'First or not J then
           Get(C);
        end if;
     end loop;
      end loop;
      Skip_Line;
     
   end Get;
   
   procedure Put (X : in Falt_DS2) is
   begin
      for J in Falt_DS2'Range loop
     for I in reverse Inner_Falt_DS2'Range loop
        Put(" ");
        Put(X(J)(I));
     end loop;
      end loop;
      New_Line;
   end Put;

   
   
   procedure Get (X : out Falt_DS3) is
   begin
      for I in 73..74 loop
     for J in  Character Range '4' .. '8' loop
        Get(X(I, J));
     end loop;
      end loop;
      Skip_Line;
   end Get;
 procedure Put (X : in Falt_DS3) is
   begin
      for I in 73..74 loop
     for J in Character Range '4' .. '8' loop
        Put(" ");
        Put(X(I, J), Width => 0);
     end loop;
      end loop;
   end Put;
   
   
   DS3 : Falt_DS3;            
    DS2 : Falt_DS2;
    DS1 : Falt_DS1;
begin
   Put_Line("För DS1:");
   Put("Mata in datamängd: ");
   Get(DS1);
   Put("Inmatad datamängd:");
   Put(DS1);
   
   New_Line;
   Put_Line("För DS2:");
   Put("Mata in datamängd: ");
   Get(DS2);
   Put("Inmatad datamängd:");
   Put(DS2);
   
   
   New_Line;
   Put_Line("För DS3:");
   Put("Mata in datamängd: ");
   Get(DS3);
   Put("Inmatad datamängd:");
   Put(DS3);
   
end Main;

