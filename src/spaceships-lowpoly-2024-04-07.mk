all: spaceships-lowpoly-2024-04-07.bmp spaceships-lowpoly-2024-04-07.png spaceships-lowpoly-2024-04-07.txt
spaceships-lowpoly-2024-04-07.bmp: spaceships-lowpoly-2024-04-07.png
	convert -size 1008x410 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
spaceships-lowpoly-2024-04-07.png:
	wget -O - https://raw.githubusercontent.com/fccm2/spaceships-lowpoly-2024-04-07/refs/heads/result/atlas-2025-09-27_1.png > $@
spaceships-lowpoly-2024-04-07.txt:
	wget -O - https://github.com/fccm2/spaceships-lowpoly-2024-04-07/raw/refs/heads/master/LICENSE.txt > $@
clean:
	$(RM) spaceships-lowpoly-2024-04-07.bmp
	$(RM) spaceships-lowpoly-2024-04-07.png
	$(RM) spaceships-lowpoly-2024-04-07.txt
