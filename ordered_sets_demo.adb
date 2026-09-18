pragma Ada_2022;

package body Ordered_Sets_Demo is

   procedure Include_All
     (S : in out Int_Sets.Set; First, Last : Integer)
   is
   begin
      for I in First .. Last loop
         S.Include (I);
      end loop;
   end Include_All;

   function Length (S : Int_Sets.Set) return Natural is
   begin
      return Natural (S.Length);
   end Length;

   function Min_Element (S : Int_Sets.Set) return Integer is
   begin
      return S.First_Element;
   end Min_Element;

   function Max_Element (S : Int_Sets.Set) return Integer is
   begin
      return S.Last_Element;
   end Max_Element;

   function Is_Sorted_Ascending (S : Int_Sets.Set) return Boolean is
      use Int_Sets;
      C : Cursor := S.First;
   begin
      if not Has_Element (C) then
         return True;
      end if;
      declare
         Prev : Integer := Element (C);
      begin
         Next (C);
         while Has_Element (C) loop
            declare
               E : constant Integer := Element (C);
            begin
               if E < Prev then
                  return False;
               end if;
               Prev := E;
            end;
            Next (C);
         end loop;
      end;
      return True;
   end Is_Sorted_Ascending;

   function Floor_Of (S : Int_Sets.Set; Item : Integer) return Integer is
      use Int_Sets;
      C : constant Cursor := S.Floor (Item);
   begin
      if not Has_Element (C) then
         raise Constraint_Error with "no floor";
      end if;
      return Element (C);
   end Floor_Of;

end Ordered_Sets_Demo;
