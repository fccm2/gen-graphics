all: darkblue-scifi-rts-2024-08-01_1.bmp darkblue-scifi-rts-2024-08-01_1.png darkblue-scifi-rts-2024-08-01_1.txt
darkblue-scifi-rts-2024-08-01_1.bmp: darkblue-scifi-rts-2024-08-01_1.png
	# Convert to .bmp for sdl3, with a color-key "#ff00ff"
	convert -size 512x547 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
darkblue-scifi-rts-2024-08-01_1.png:
	wget -O - https://raw.githubusercontent.com/fccm2/darkblue-scifi-rts-2024-08-01/refs/heads/result/atlas-2025-05-23_1.png > $@
darkblue-scifi-rts-2024-08-01_1.txt:
	# Download the informations about the file.
	wget -O - https://github.com/fccm2/darkblue-scifi-rts-2024-08-01/raw/refs/heads/master/LICENSE.txt > $@
clean:
	$(RM) darkblue-scifi-rts-2024-08-01_1.bmp
	$(RM) darkblue-scifi-rts-2024-08-01_1.png
	$(RM) darkblue-scifi-rts-2024-08-01_1.txt
