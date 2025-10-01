all:
	$(MAKE) -C src -f darkblue-scifi-rts-2024-08-01.mk all
	$(MAKE) -C src -f darkblue-scifi-rts-2024-04-07.mk all
	$(MAKE) -C src -f spaceships-lowpoly-2024-04-06.mk all
	$(MAKE) -C src -f spaceships-2024-04-02.mk all
	$(MAKE) -C src -f atlas-2025-06-13_1.mk all
clean:
	$(MAKE) -C src -f darkblue-scifi-rts-2024-08-01.mk clean
	$(MAKE) -C src -f darkblue-scifi-rts-2024-04-07.mk clean
	$(MAKE) -C src -f spaceships-lowpoly-2024-04-06.mk clean
	$(MAKE) -C src -f spaceships-2024-04-02.mk clean
	$(MAKE) -C src -f atlas-2025-06-13_1.mk clean
