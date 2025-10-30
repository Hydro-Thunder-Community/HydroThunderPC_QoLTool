screen=argument0
with (obj_button)
 {
 instance_destroy()
 }
switch screen
 {
 case 0:
 instance_deactivate_object(obj_pracbutton)
 instance_deactivate_object(obj_extrabutton)
 //make_button(4,"Open EXE")
 break

 case 1:
 instance_activate_object(obj_pracbutton)
 instance_activate_object(obj_extrabutton)
 patchkind[0]=0
 patchkind[1]=2
 patchkind[2]=0
 patchkind[3]=0
 patchkind[4]=5
 //patchkind[5]=0
 patchkind[7]=2
 patchkind[9]=0

 patchstart[0]=$2A294
 patchstart[1]=$72C37
 patchstart[2]=$7DD00
 patchstart[3]=$7DC08
 patchstart[4]=$7E155
 //patchstart[5]=$6D178
 patchstart[7]=$7E09B
 patchstart[9]=$7DC14

 patchend[0]=$2A29F
 patchend[1]=$7F
 patchend[2]=$7DD04
 patchend[3]=$7DC0C
 patchend[4]=$71A55
 //patchend[5]=$6D18F
 patchend[7]=$01
 patchend[9]=$7DC18

 make_button(0,"Throttle fix")
 make_button(1,"Controller fix")
 make_button(2,"Improve DXWnd/DGVoodoo window")
 make_button(3,"Keep alive when unfocused")
 make_button(4,"Pause race with controller")
 //make_button(5,"Don't move cursor on startup")
 make_button(7,"Disable CD check")
 make_button(8,"Apply all")
 break

 case 2:
 instance_deactivate_object(obj_pracbutton)
 instance_deactivate_object(obj_extrabutton)
 patchkind[0]=0
 patchkind[1]=1

 patchstart[0]=$CF9C3
 patchstart[1]=$CF9E0

 patchend[0]=-1
 patchend[1]=-1
 make_button(0,"Throttle fix")
 make_button(8,"Apply all")
 break

 case 6:
 instance_deactivate_object(obj_extrabutton)
 patchkind[3]=3
 patchkind[4]=4
 patchstart[3]=$339ED
 patchstart[4]=$339ED
 patchend[3]=$339EE
 patchend[4]=$339EE
 make_button(3,"Install")
 make_button(4,"Uninstall")
 break

 case 7:
 instance_deactivate_object(obj_pracbutton)

 patchkind[0]=0
 patchkind[1]=1
 patchkind[2]=0


 patchstart[0]=$7D8A0
 patchstart[1]=$74F85
 patchstart[2]=$6D178
 patchstart[3]=$71A4B


 patchend[0]=$7D8A4
 patchend[1]=$74F89
 patchend[2]=$6D18F
 patchend[3]=$71A55

 make_button(0,"Don't change mixer volume")
 make_button(1,"Allow 1% volume")
 make_button(2,"Don't move cursor on startup")
 make_button(3,"No sleep at splash screen")
 make_button(8,"Apply all")
 break

 case 3:
 instance_deactivate_object(obj_pracbutton)
 break
 }
