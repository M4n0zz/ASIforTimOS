# Auto Script Installer (ASI)
for [BlipBlopMenu2](https://github.com/M4n0zz/BlipBlopMenu2) or TimOS environment on English Pokémon Red, Blue, and Yellow


When using Nickname Writer, imported scripts typically are lost after restarting the game or entering a battle. In contrast, TimOS provides an SRAM-based environment that allows scripts to persist in memory.

ASI is designed to take full advantage of this by automatically installing your scripts and making them permanently accessible through the TimOS script selector.


**Getting Started with ASI**

First, make sure your script runs correctly using Nickname Writer. Once ASI installs the script, it moves and saves it in unused memory space — so it's important that everything works properly beforehand to avoid issues.

There are two ways to use ASI, depending on your script’s complexity and its logic:

- **HEX ASI (Easy):**
Use this method for installing simple or moderately complex scripts in raw HEX format, as long as they contain only relative jumps. It’s beginner-friendly and doesn't require a compiler.

- **ASM ASI (Advanced):**
Choose this method for scripts that need to be placed at specific memory addresses. This requires using (Quick)RGBDS to compile your .asm files into installable payloads.

-----

**HEX ASI Instructions**
1. **Replace XX:**
In the installer code, replace XX with the hexadecimal size of your script.
You can use a decimal-to-hex calculator to get the correct value.

2. **Append your script:**
Paste your script's hex code immediately after the installer code.

3. **Import via Nickname Writer:**
Use Nickname Writer to inject the full hex code (installer + script) into your save file.

4. **Verify in TimOS:**
Once in-game, open the TimOS script selector and run the last script in the list.
If everything worked correctly, the total number of available scripts should have increased by 1.



**Red/Blue**

21 49 cb 3a fe ff 28 fb 23 23  
7c fe c8 30 03 21 ff c7 ea ed  
d8 7d ea ec d8 e5 21 e9 c6 46  
3e 01 86 77 11 c2 c7 1c 1c 05  
20 fb 0e 02 21 ec d8 cd b5 00  
0e **XX** d1 c3 b5 00 c3 c8 


**Yellow**

21 49 cb 3a fe ff 28 fb 23 23  
7c fe c8 30 03 21 ff c7 ea ed  
d8 7d ea ec d8 e5 21 e9 c6 46  
3e 01 86 77 11 bb c7 1c 1c 05  
20 fb 0e 02 21 ec d8 cd b1 00  
0e **XX** d1 c3 b1 00 c3 c8 

-----

**ASM ASI Instructions**

This method requires your script to be written in assembly language (.asm).

1. **Prepare your script:**
Write your assembly script in RGBDS format and ensure it's compatible with the correct version of the ROM you are using (English Red, Blue or Yellow).

2. **Download the appropriate ASI template:**
Get the correct ASI .asm file based on your game version:
- Use the Red/Blue ASI template for Pokémon Red or Blue.
- Use the Yellow ASI template for Pokémon Yellow.

3. **Edit the ASI file:**
Open the ASI .asm file with a text editor (e.g., Notepad++ is recommended) and follow the inline instructions to:
- Insert your assembly code
- Set custom memory addresses if needed

4. **Use a compiler:**
Compile your script using [QuickRGBDS](https://github.com/M4n0zz/QuickRGBDS) or RGBDS to generate the final binary payload.

5. **Import via Nickname Writer:**
Use Nickname Writer to inject the full hex code (installer + script) into your save file.

6. **Verify in TimOS:**
Once in-game, open the TimOS script selector and run the last script in the list.
If everything worked correctly, the total number of available scripts should have increased by 1.



