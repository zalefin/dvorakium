#!/usr/bin/env bash
python3 ./update_rule.py >> out.xml
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
cp ./out.xml /usr/share/X11/xkb/rules/evdev.xml
cat ./dvorakium >> /usr/share/X11/xkb/symbols/us
rm ./out.xml
