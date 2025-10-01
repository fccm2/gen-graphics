all: atlas-2025-06-04_1.bmp atlas-2025-06-04_1.png atlas-2025-06-04_1.txt
atlas-2025-06-04_1.bmp: atlas-2025-06-04_1.png
	convert -size 63x65 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
atlas-2025-06-04_1.png:
	wget https://raw.githubusercontent.com/fccm2/darkblue-scifi-rts-2024-04-07/refs/heads/result/atlas-2025-06-04_1.png
atlas-2025-06-04_1.txt:
	wget -O - https://raw.githubusercontent.com/fccm2/abstract-rts-01/5467fb2a0e85eab1490bf9d74ee960dc6bdd7905/License.txt > $@
clean:
	$(RM) atlas-2025-06-04_1.bmp
	$(RM) atlas-2025-06-04_1.png
	$(RM) atlas-2025-06-04_1.txt
