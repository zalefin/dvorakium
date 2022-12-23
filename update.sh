#!/usr/bin/env bash
python3 ./update_rule.py >> out.xml
sudo cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
sudo cp ./out.xml /usr/share/X11/xkb/rules/evdev.xml
sudo cat ./dvorakium >> /usr/share/X11/xkb/symbols/us
rm ./out.xml
