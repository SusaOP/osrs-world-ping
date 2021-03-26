#!/bin/bash
for world in {1..9}; do
	echo world 30$world:
	echo $(ping -c 1 oldschool$world.runescape.com | grep "time=") | awk '{print $8}'
done

for world in {10..99}; do
	echo world 3$world:
	echo $(ping -c 1 oldschool$world.runescape.com | grep "time=") | awk '{print $8}'
done

for world in {100..109}; do
	echo world 40$((world - 100)):
	echo $(ping -c 1 oldschool$world.runescape.com | grep "time=") | awk '{print $8}'
done

for world in {110..129}; do
	echo world 4$((world - 100)):
	echo $(ping -c 1 oldschool$world.runescape.com | grep "time=") | awk '{print $8}'
done

exit 0
