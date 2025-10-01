all: space-colony-sim.bmp space-colony-sim.png space-colony-sim.txt
space-colony-sim.bmp: space-colony-sim.png
	convert -size 509x401 'xc:#ff00ff' '(' $< ')' -compose Over -composite $@
space-colony-sim.txt:
	wget -O - https://github.com/fccm2/space-colony-sim/raw/refs/heads/master/License.txt > $@
space-colony-sim.png:
	wget -O - https://raw.githubusercontent.com/fccm2/space-colony-sim/refs/heads/result/atlas-2025-07-10_2.png > $@
clean:
	$(RM) space-colony-sim.bmp
	$(RM) space-colony-sim.png
	$(RM) space-colony-sim.txt
