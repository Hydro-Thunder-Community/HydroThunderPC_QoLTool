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
  if obj_main.screen=1 && buttonid=2
   {
   var que;
   que=show_question
   ("This patch is intended to be used with DXWnd and DGVoodoo.
   It will have unintended consequences if not used with a window hooker.
   
   Do you wish to proceed?
   ")

   if que=0
    {
    exit
    }
   }
  main_ping(buttonid)
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

draw_sprite(spr_box,mouseon,x,y)
draw_text(x+sprite_width/2,y+6,text)

draw_set_halign(fa_left)
