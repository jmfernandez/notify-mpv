# notify-mpv

This lua script is to be used with mpv, in order to emit notifications
each time a played stream sends metadata about the listened song.

## Install

You need to have [luarocks](https://luarocks.org) installed, and mpv with lua enabled.

Then just clone this repo, and run next command:

```bash
bash install.bash
```

in order to install the needed dependencies. After that, you can use it with mpv just running it like:

```bash
mpv --script=/path/to/notify-mpv/notify-mpv.lua the-stream-to-play
```
