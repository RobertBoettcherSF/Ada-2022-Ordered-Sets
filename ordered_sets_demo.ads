--  Ada 2022 topic: Ada.Containers.Ordered_Sets.
pragma Ada_2022;

with Ada.Containers.Ordered_Sets;

package Ordered_Sets_Demo is

   package Int_Sets is new Ada.Containers.Ordered_Sets
     (Element_Type => Integer);

   procedure Include_All
     (S : in out Int_Sets.Set; First, Last : Integer);
   function Length (S : Int_Sets.Set) return Natural;
   function Min_Element (S : Int_Sets.Set) return Integer
     with Pre => not S.Is_Empty;
   function Max_Element (S : Int_Sets.Set) return Integer
     with Pre => not S.Is_Empty;
   function Is_Sorted_Ascending (S : Int_Sets.Set) return Boolean;
   function Floor_Of (S : Int_Sets.Set; Item : Integer) return Integer;
   --  Greatest element <= Item; raises Constraint_Error if none.

end Ordered_Sets_Demo;
