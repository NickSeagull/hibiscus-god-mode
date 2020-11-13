; Remap Caps to Esc
Capslock::
hs.rawPress("{Esc}")
return

; Assign Ctrl-Alt-R as a hotkey to restart the script.
^!r::
Reload
hs.popup("Reloaded")
return

; Enable layers using Ctrl-Alt-E
^!e::
hs.Layers.__init__()
hs.popup("Layers On")
return