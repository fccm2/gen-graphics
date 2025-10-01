all: spaceships-drawn-01.bmp spaceships-drawn-01.colorkey.png spaceships-drawn-01.transparent.png spaceships-drawn-01.txt
spaceships-drawn-01.bmp: spaceships-drawn-01.colorkey.png
	convert $< $@
spaceships-drawn-01.colorkey.png:
	wget https://raw.githubusercontent.com/fccm2/spaceships-drawn/refs/heads/master/edit/spaceships-drawn-01.colorkey.png
spaceships-drawn-01.transparent.png:
	wget https://raw.githubusercontent.com/fccm2/spaceships-drawn/refs/heads/master/edit/spaceships-drawn-01.transparent.png
spaceships-drawn-01.txt:
	wget -O - https://github.com/fccm2/spaceships-drawn/raw/refs/heads/master/License.txt > $@
clean:
	$(RM) spaceships-drawn-01.bmp
	$(RM) spaceships-drawn-01.colorkey.png
	$(RM) spaceships-drawn-01.transparent.png
	$(RM) spaceships-drawn-01.txt
