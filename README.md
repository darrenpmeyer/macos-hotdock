macOS 'hotdock'
===============

Allows you to undock a Mac in clamshell mode without causing it to sleep

When run, unmounts all disks marked "external", then disables sleep for a 90-second countdown. When the countdown is completed (or if `SIGINT` is recieved [e.g. you press Control-C]), sleep is re-enabled.

This allows you to safely undock while in "clamshell mode" (the lid closed with an external display connected) without interrupting anything.

If you want the "ASCII art" version of the **UNDOCK NOW** banner, ensure that `figlet` is installed and in your path



Example Run
-----------

```
$ ./hotdock.sh
Ejecting all disks...

Temporarily disabling all sleep
Password:
Sleep system (including lid) disabled for 90s
============================================================
 _   _ _   _ ____   ___   ____ _  __  _   _  _____        __
| | | | \ | |  _ \ / _ \ / ___| |/ / | \ | |/ _ \ \      / /
| | | |  \| | | | | | | | |   | ' /  |  \| | | | \ \ /\ / /
| |_| | |\  | |_| | |_| | |___| . \  | |\  | |_| |\ V  V /
 \___/|_| \_|____/ \___/ \____|_|\_\ |_| \_|\___/  \_/\_/

============================================================
                         - 88 -^C
Countdown interrupted
Re-enabling sleep ability
```

Here we interrupted the countdown at 88 seconds remaining




