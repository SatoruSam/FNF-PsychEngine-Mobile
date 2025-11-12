#!/bin/bash
# Setup script for Psych Engine 1.0.4 (Android Build Compatible)

echo "📦 Setting up Haxe libraries..."
mkdir -p ~/haxelib && haxelib setup ~/haxelib

# Core libraries
haxelib install hxcpp 4.3.2 --quiet
haxelib install lime 8.1.2 --quiet
haxelib install openfl 9.3.3 --quiet
haxelib install flixel 5.6.1 --quiet
haxelib install flixel-addons 3.2.2 --quiet
haxelib install flixel-tools 1.5.1 --quiet

# Psych Engine dependencies
haxelib install hxvlc 2.0.1 --quiet --skip-dependencies
haxelib install tjson 1.4.0 --quiet
haxelib install hxdiscord_rpc 1.2.4 --quiet --skip-dependencies
haxelib install hxcpp-debug-server 1.2.4 --quiet --skip-dependencies

# Git-based libraries
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 768740a56b26aa0c072720e0d1236b94afe68e3e --quiet
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git --quiet
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis 22b1ce089dd924f15cdc4632397ef3504d464e90 --quiet
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git cbf91e2180fd2e374924fe74844086aab7891666 --quiet

# Optional: confirm versions
echo "✅ Finished installing all dependencies."
haxelib list
