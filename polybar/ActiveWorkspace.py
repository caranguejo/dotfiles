from i3ipc import Connection, Event

i3 = Connection()

focused = i3.get_tree().find_focused().workspace().num

out = ""

for i in range(1, 6):
    if i == focused:
        out += "%{F#e094dc}"

    if i != 1:
        out += " "

    out += str(i) + "%{F-}"

print(out)
