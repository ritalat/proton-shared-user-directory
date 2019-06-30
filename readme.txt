This is a small script that creates a shared user folder for all of your proton
prefixes. This should prevent steam from deleting all of your saves when
uninstalling a game that uses proton. It also makes it easier to find your save
and configuration files.

Installation
------------
Place the script in steamapps/compatdata and run it. It will create a userdata
directory, merge all proton user directories there and create symlinks in their
place.

The symlinks should survive any proton updates but you will have to rerun the
script every time you install a game.

Note! You should probably still back up your important saves anyway.
