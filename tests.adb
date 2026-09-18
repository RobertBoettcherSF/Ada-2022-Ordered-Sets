pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Ordered_Sets_Demo; use Ordered_Sets_Demo;

procedure Tests is
   S : Int_Sets.Set;
begin
   Include_All (S, 5, 5);
   Include_All (S, 1, 3);
   Include_All (S, 8, 10);
   Assert (Length (S) = 7);
   Assert (Min_Element (S) = 1);
   Assert (Max_Element (S) = 10);
   Assert (Is_Sorted_Ascending (S));
   Put_Line ("PASS Include / First / Last ordering");

   Assert (Floor_Of (S, 4) = 3);
   Assert (Floor_Of (S, 8) = 8);
   Put_Line ("PASS Floor");

   Put_Line ("All Ordered_Sets topic tests passed.");
end Tests;
