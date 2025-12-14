# Hydro Thunder(PC) QoL Patch Tool

A program created and written in Game Maker 8.2 by AxlThunder, to address issues in the PC port of Hydro Thunder, as well as introduce some quality of life improvements.

It is designed primarily for the Eurocom 2001 release(the one that's less than 70mb and has like 3-4 files). As of the current verison, it can detect the Midway Arcade Treasures Deluxe Edition version(only the European release EXE is tested as detectable), but it can only apply the Throttle Fix to it.

Hydro Thunder community Discord server, as this is where testing is done for future stable builds, and where i post about what i'm working on: https://discord.gg/yxKT6EP

**NOTE: This tool takes the EXE modification approach to patching. There is currently no injection based option, but I plan to make one available in the future(if i can motivate myself enough to learn another language lol, but don't let that stop you from creating one of your own if you wish to). It's simply me doing my best with what I know.**

**i also apologize for the lack of comments i'll fix this later lol**

You can choose which patches you want, or hit "Apply all" on the relevant pages. A copy of your EXE is made automatically before any patching is done.

A video of the tool in action: https://www.youtube.com/watch?v=VeKZQSPKi10

# What each patch does in more detail:
**Throttle fix** - When no throttle input is given, it will sit at 25.9% on the gas, meaning that the boat will always have throttle input even when it shouldn't. This is because the game intentionally takes the input from your controls, subtracts 35% from it, and multiplies that result by 0.7407407. The result of that is then written to the value which the game depends on for throttle input. What that means, is that the throttle's "pivot" is not perfectly centered like it should be, being shifted back a bit. This is likely a leftover from the original arcade, where the same pivot shift is present on the throttle controller. This off-center pivot messes with a super start trick where the throttle has to sit perfectly neutral when not using it, to pop off the starting line without jumping, saving a bit of time. A workaround existed, but only with the analog throttle by holding it about 30-60% down to put it at neutral. Having to use analog inputs puts keyboard players at an unecessary disadvantage for speedrun competition. This patch nops out that unecessary math, correcting the throttle pivot to be centered as it should be.

**Controller fix** - When a controller is selected to be used, un-focusing the game will seemingly "unlatch" the controller from it. However, something goes wrong when it's supposed to be restored upon re-focusing, specific values do not line up correctly as the code expects. This causes your controller to not only no longer work, but the game is stuck believing a controller is there, when in fact it's just receiving invalid inputs. The only fixes for this were to restart the game, or going into the joystick menu and re-selecting your controller manually. This patch changes one asm opcode, to allow the routine to accept higher values, which fixes the issue.

**Improve DXWnd/DGVoodoo window** - Intended for use with DXWnd/dgVoodoo2. If the game detects that anything could happen to put it out of fullscreen, it'll fall back to it's 320x240 software rendered window mode. Even with forcing, simply touching the game window will cause it to happen. And having to switch back can cause graphical glitches, or even a crash. This patches that out, making the window far more stable, now being able to be moved around and clicked out of/back into like a normal game.

**Pause race with controller** - In the stock game, you could not pause the game without the keyboard. This patch allows you to do so, meaning you can now exit races without having to reach for the keyboard.


# EXTRA PATCHES:
**Don't change mixer volume** - If the game detects that it's volume in the mixer isn't what it expects, it changes it to what it expects. This port seems to rely on that slider for it's volume, so this was understandable back in 2001. But nowadays, those who may want to set a finer volume adjustment than what the game normally can do can't. But with this patch, you can. This doesn't affect the internal volume setting itself, and it'll currently only last until you change that in-game volume setting, or restart the game.

**Allow 1% volume** - Just like it says on the tin. This is a loud game, so I felt this would be useful to some.

**Don't move cursor on startup**

**Disable CD Check** - Changes one byte in the EXE to fool the game into believing the CD is present. Useful if you installed from an original disc, as the CD is only ever needed for this check.

**Keep alive when unfocused** - Mainly for use with DXWnd/dgVoodoo. Bear in mind that keyboard inputs will still register, and sound is muted(for now).

# PRACTICE TOOLS:
These can be installed and uninstalled from your EXE. All that's changed are memory address references. 
What this does is make some internal variables in the game visible to the player, they are:
- Your boat's true speed. This is different from what the speedometer implies.
- Which step in the Hydro Jump process you are on. So if you miss it, you'll see at which step things went wrong.
- The wrong way turnaround timer. This is a visual that can be used to practice the redirect technique.

Having these things on hand is very useful for practicing speedruns, however they are intended for practice only. Which is where the uninstallation comes in to revert what changes were made.
