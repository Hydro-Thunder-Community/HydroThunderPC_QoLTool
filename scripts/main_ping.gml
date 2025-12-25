with obj_main
 {
 switch screen
  {
  case 0:
  if argument0=4
   {

   }
  break

  case 1: //pc, eurocom main screen
  if argument0<8
   {
   //for patches that do multiple things
   if argument0=2
    {
    apply_patch(9)
    }
   else if argument0=4
    {
    apply_patch(11)
    apply_patch(12)
    apply_patch(13)
    }
   apply_patch(argument0)
   //for patches that do multiple things and must come after the main patch
   if argument0=5
    {
    apply_patch(14)
    }
   }
  else if argument0=8
   {
   apply_patch(0)
   apply_patch(1)
   apply_patch(2)
   apply_patch(3)
   apply_patch(4)
   apply_patch(5)
   apply_patch(9)
   apply_patch(11)
   apply_patch(12)
   apply_patch(13)
   apply_patch(14)
   }
  break

  case 7: //pc, eurocom extra screen
  if argument0<8
   {
   apply_patch(argument0)
   }
  else if argument0=8
   {
   apply_patch(0)
   apply_patch(1)
   apply_patch(2)
   apply_patch(3)
   apply_patch(4)
   apply_patch(5)
   }
  break

  case 2:
  if argument0<8
   {
   apply_patch(argument0)
   }
  else if argument0=8
   {
   apply_patch(0)
   }
  break

  case 6:
  if argument0<8
   {
   apply_patch(argument0)
   }
  break
  }
 }
