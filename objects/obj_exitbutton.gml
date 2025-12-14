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
  game_end()
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
draw_text(x+58,y+6,"Exit")

draw_set_halign(fa_left)
