

path=%path%;../2cdt/2cdt
2cdt.exe -n -s 1 -r "LOADER.BAS" "LOADER.BAS" temp.cdt
2cdt.exe -b 2000 -r "8bp.lib" "8bp.lib" temp.cdt
2cdt.exe -b 2000 -r "SPRITES.BIN" "SPRITES.BIN" temp.cdt
2cdt.exe -b 2000 -r "INVADERS.BAS" "INVADERS.BAS" temp.cdt
