# Modding.md

RIGHT NOW THE MODS FOLDER DOES NOT WORK ENTIRELY JUST YET

THIS IS WORK IN PROGRESS

## QUICK AND DIRTY MOD GUIDE

```Py
# Polymod
class Polymod:  # PsychModding-type class
    def __init__(self, dalink):
        self.link = dalink

    def printdalink(self):
        print(self.link)

if __name__ == '__main__':
    poly = Polymod("PsychEngine")
    poly.printdalink()
```
With the 0.2.6 update, I added a bit of a slightly nicer mod support backend.

It's POLYMOD, which is made by Lars Doucet: https://github.com/larsiusprime/polymod

You may have noticed that there's a new folder in the assets. MODS. Within it you will see 2 files. modList.txt, and a folder called introMod.
modList.txt will load any folder into the game. Put the folder you want to load into a new line in modList.txt, and reboot the game.

Now you may be wondering, what do I put in the folder? Well later down it'll get a bit more complicated, especially as I'll make the IN-GAME mod loader nicer.

```haxe
// Polymod
class Polymod {  // PsychModding-type class
    public function new(dalink)
        this.link = dalink

    function printdalink()
        trace(this.link)
}
/*
if (__name__ == '__main__') {
    poly = Polymod("PsychEngine");
    poly.printdalink();
}
*/

switch (__name__) {
    case '__main__':
        var poly = new Polymod("PsychEngine");
}
```
