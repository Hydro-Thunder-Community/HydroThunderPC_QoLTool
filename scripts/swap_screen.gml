screen=argument0
with (obj_button)
 {
 instance_destroy()
 }
switch screen
 {
 case 0: //start screen
 instance_deactivate_object(obj_pracbutton)
 instance_deactivate_object(obj_extrabutton)
 //make_button(4,"Open EXE")
 break

 case 1: //pc, eurocom main screen
 instance_activate_object(obj_pracbutton)
 instance_activate_object(obj_extrabutton)
 patchkind[0]=0
 patchkind[1]=2
 patchkind[2]=0
 patchkind[3]=5
 patchkind[4]=0
 patchkind[5]=0

 patchkind[9]=0
 patchkind[11]=0
 patchkind[12]=0
 patchkind[13]=0
 patchkind[14]=6

 patchstart[0]=$2A294
 patchstart[1]=$72C37
 patchstart[2]=$7DD00
 patchstart[3]=$7E155
 patchstart[4]=$639D6
 patchstart[5]=$4C2ED

 patchstart[9]=$7DC14
 patchstart[11]=$639F3
 patchstart[12]=$639F9
 patchstart[13]=$639FF
 patchstart[14]=$4C2EB

 patchend[0]=$2A29F
 patchend[1]=$7F
 patchend[2]=$7DD04
 patchend[3]=$71A55
 patchend[4]=$639DB
 patchend[5]=$4C2FC

 patchend[9]=$7DC18
 patchend[11]=$639F8
 patchend[12]=$639FE
 patchend[13]=$63A04
 patchend[14]=$4C2F0

 make_button(0,"Throttle fix")
 make_button(1,"Controller fix")
 make_button(2,"Improve DXWnd/DGVoodoo window")
 make_button(3,"Pause race with controller")
 make_button(4,"Allow persistent initials")
 make_button(5,"Last set camera error fix")
 make_button(8,"Apply all")
 break

 case 2: //pc, mat:de
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

 case 6: //pc, eurocom practice tools
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

 case 7://pc, eurocom extra screen
 instance_deactivate_object(obj_pracbutton)

 patchkind[0]=0
 patchkind[1]=1
 patchkind[2]=0
 patchkind[3]=0
 patchkind[4]=2
 patchkind[5]=0


 patchstart[0]=$7D8A0
 patchstart[1]=$74F85
 patchstart[2]=$6D178
 patchstart[3]=$71A4B
 patchstart[4]=$7E09B
 patchstart[5]=$7DC08


 patchend[0]=$7D8A4
 patchend[1]=$74F89
 patchend[2]=$6D18F
 patchend[3]=$71A55
 patchend[4]=$01
 patchend[5]=$7DC0C

 make_button(0,"Don't change mixer volume")
 make_button(1,"Allow 1% volume")
 make_button(2,"Don't move cursor on startup")
 make_button(3,"No sleep at splash screen")
 make_button(4,"Disable CD check")
 make_button(5,"Keep alive when unfocused")
 make_button(8,"Apply all")
 break

 case 3:
 instance_deactivate_object(obj_pracbutton)
 break
 }
