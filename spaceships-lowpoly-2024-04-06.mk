all: spaceships-lowpoly-2024-04-06.bmp spaceships-lowpoly-2024-04-06.png spaceships-lowpoly-2024-04-06.txt
spaceships-lowpoly-2024-04-06.bmp: spaceships-lowpoly-2024-04-06.png
	convert -size 495x503 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
spaceships-lowpoly-2024-04-06.png:
	wget -O - https://raw.githubusercontent.com/fccm2/spaceships-lowpoly-2024-04-06/refs/heads/result/atlas-2025-06-04_1.png > $@
spaceships-lowpoly-2024-04-06.txt:
	wget -O - https://github.com/fccm2/spaceships-lowpoly-2024-04-06/raw/refs/heads/master/License.txt > $@
clean:
	$(RM) spaceships-lowpoly-2024-04-06.bmp
	$(RM) spaceships-lowpoly-2024-04-06.png
	$(RM) spaceships-lowpoly-2024-04-06.txt
