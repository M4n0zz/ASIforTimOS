# ASIforTimOS
Auto Script Installer (ASI) for TimOS on Pokemon Red, Blue and Yellow

By using Nickname Writer, the imported script runs only once, losing the ability to execute it again when the game restarts or after a battle happens.
On the other hand, RAM writer environment (TimOS) is designed to maintain imported scripts permanently in memory.

ASI comes handy for that specific purpose, since it automatically installs your scripts and makes them accessible over TimOS selector.

How to use
First of all make sure your script is runnable over Nickname Writer. After installation is done, the new script is moved automatically in unused space, so we do not want anything to go wrong!

There are two methods to use ASI:

- HEX ASI (easy): Use it to install simple or more complex scripts in HEX format, having only relative jumps inside their logic.
- ASM ASI (advanced): Use it to install scripts on predefined addresses. The use of (Quick)RGBDS is required.


HEX ASI Instructions
1. Replace XX with the number of bytes of the script to be installed in hex (you can use a DEC to HEX calculator).
2. Paste your script's hex code right after the installer.
3. Import the whole code with Nickname Writer and run it.
4. Run the last script in TimOS selector to confirm everything works fine. The number of scripts should have been increased by 1. 


Red/Blue

21 49 cb 3a fe ff 28 fb 23 23  
7c fe c8 30 03 21 ff c7 ea ed  
d8 7d ea ec d8 e5 21 e9 c6 46  
3e 01 86 77 11 c2 c7 1c 1c 05  
20 fb 0e 02 21 ec d8 cd b5 00  
0e **XX** d1 c3 b5 00 c3 c8 


Yellow

21 49 cb 3a fe ff 28 fb 23 23  
7c fe c8 30 03 21 ff c7 ea ed  
d8 7d ea ec d8 e5 21 e9 c6 46  
3e 01 86 77 11 bb c7 1c 1c 05  
20 fb 0e 02 21 ec d8 cd b1 00  
0e **XX** d1 c3 b1 00 c3 c8 



ASM ASI Instructions

This method requires you to have your script's code in assembly.
- Use QuickRGBDS or RGBDS.
- Download the proper ASI .asm file for Red and Blue or Yellow.
- Open it with a text editor (Notepad++ is recommended) and follow the instructions included.

