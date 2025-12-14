#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//available patches
name="Hydro Thunder - QoL Patch Tool"
set_application_title(name)
patchapply=0

applied=0
backupmade=0
backupexists=0

ping=-1

currentfile=0

exetarget=0
exe[0]="No EXE selected"
exe[1]="PC - Eurocom"
exe[2]="PC - Arc. Treasures"
exe[3]="Arcade - v1.01b"
exe[4]="Arcade - v1.00d"
exe[6]="PC - Eurocom"

exehaspractice[0]=0
exehaspractice[1]=0
exehaspractice[2]=0
exehaspractice[3]=0

button_x=15
button_y=5

cont=""

screen=0

swap_screen(0)
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if applied>0
 {
 applied-=1
 }

if backupexists>0
 {
 backupexists-=1
 }

if backupmade>0
 {
 backupmade-=1
 }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(font0)
draw_set_color(c_lime)

draw_text(0,365,exe[exetarget])
if applied>0
 {
 draw_text(0,345,"Applied successfully.")
 }
else if backupmade>0
 {
 draw_text(0,345,"Backup saved as .bak.")
 }
else if backupexists>0
 {
 draw_text(0,345,"Backup already exists.")
 }
switch screen
 {
 case 0:
 draw_sprite(spr_splash,0,5,45)
 draw_text(190,250,"Version: 1.1")
 draw_text(60,285,"Check the readme for more details#on what each patch does.")
 break

 case 3:
 case 4:
 draw_text(60,275,"No patches available for this version#...yet!")
 break
 }
