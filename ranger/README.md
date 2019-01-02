# Ranger Configuration

Taken from https://github.com/ranger/ranger/wiki/Official-user-guide

It's quite common to use `ranger --copy-config=all` to copy the default config files to `~/.config/ranger` and modify them there. Be aware that for `rc.conf` and `commands.py`, ranger reads both the global and the user's config (in that order). It allows the user to maintain only a small config which sets only the things not set in the default one. For `scope.sh` and `rifle.conf`, ranger reads either the users or the global config.

The best practice is to only add the options/keybindings you actually want to change to your `rc.conf`, rather than to have a complete copy of the default `rc.conf`. This eliminates the need to update your config manually and gives you the benefits from new options/keybindings of future ranger versions. If you want to keep the full `rc.conf` though, you may want to set the environment variable `RANGER_LOAD_DEFAULT_RC` to `FALSE` to avoid loading both the default and your own `rc.conf`. In this case you have to update your config manually though.
