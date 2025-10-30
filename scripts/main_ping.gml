with obj_main
 {
 switch screen
  {
  case 0:
  if argument0=4
   {

   }
  break

  case 1:
  if argument0<8
   {
   if argument0=2
    {
    apply_patch(9)
    }
   apply_patch(argument0)
   }
  else if argument0=8
   {
   apply_patch(0)
   apply_patch(1)
   apply_patch(2)
   apply_patch(3)
   apply_patch(4)
   apply_patch(7)
   apply_patch(9)
   }
  break

  case 7:
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
   apply_patch(9)
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
