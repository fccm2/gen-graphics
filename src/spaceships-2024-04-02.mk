all: spaceships-2024-04-02.bmp spaceships-2024-04-02.png spaceships-2024-04-02.txt
spaceships-2024-04-02.bmp: spaceships-2024-04-02.png
	convert -size 505x210 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
spaceships-2024-04-02.png:
	wget -O - https://raw.githubusercontent.com/fccm2/spaceships-2024-04-02/refs/heads/result/atlas-2025-10-01_1.png > $@
spaceships-2024-04-02.txt:
	wget -O - https://github.com/fccm2/spaceships-2024-04-02/raw/refs/heads/master/LICENSE_1.txt > $@
	wget -O - https://github.com/fccm2/spaceships-2024-04-02/raw/refs/heads/master/LICENSE_2.txt >> $@
	wget -O - https://github.com/fccm2/spaceships-2024-04-02/raw/refs/heads/master/LICENSE_3.txt >> $@
clean:
	$(RM) spaceships-2024-04-02.bmp
	$(RM) spaceships-2024-04-02.png
	$(RM) spaceships-2024-04-02.txt
