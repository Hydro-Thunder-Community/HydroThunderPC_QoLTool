#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for(i=0; i<32; i+=1)
 {
 if joystick_check_button(0,i)
  {
  obj_main.cont=i
  with(obj_main)
   {
   apply_patch(3)
   }
  }
 }

if keyboard_check_pressed(vk_backspace)
 {
 instance_destroy()
 }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_halign(fa_middle)

draw_sprite(spr_specialbox,0,x,y)
draw_text(x+sprite_width/2,y+6,"Press button to pause race with.#Press backspace to cancel.")

draw_set_halign(fa_left)
