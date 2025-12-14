#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
mouseon=0
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_exists(obj_contrbutton)
 {
 exit
 }
if (mouse_x>=x && mouse_x<=x+sprite_get_width(sprite_index)) && (mouse_y>=y && mouse_y<=y+sprite_get_height(sprite_index))
 {
 mouseon=1
 if mouse_check_button_pressed(mb_left)
  {
  switch obj_main.screen
   {
   case 1:
   with obj_main
    {
    swap_screen(7)
    }
   break

   case 7:
   with obj_main
    {
    swap_screen(1)
    }
   break
   }
  }
 }
else
 {
 mouseon=0
 }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_halign(fa_middle)

draw_sprite(sprite_index,mouseon,x,y)
switch obj_main.screen
 {
 case 1:
 draw_text(x+58,y,"Extra#Patches")
 break

 case 7:
 draw_text(x+58,y+6,"Back")
 break
 }

draw_set_halign(fa_left)
