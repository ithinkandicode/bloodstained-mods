# How to make a mod

## Notes

- This guide is long so you know exactly what to do the first time. But after you've done this once, you'll breeze through it the next time.
- I recommend adding a shortcut to your `~mods` folder in the main folder, it's a big help later

## Setup

1. Make a copy of the `Mods/_template` folder, and name it after your mod, eg `Mods/ExampleMod`
1. Look in the Data/ folder to find the JSON + Uasset files you want to edit
1. Copy the files to two places:
  - `_meta/Original Files` ─ This is a backup. It's helpful for quickly restoring the original data, and comparing your changes vs. the original files
  - `Edits` ─ This is where you make your edits

## Edits

1. Edit the JSON in the `Edits` folder

## Build your mod

1. When you're done, open two windows: your mod folder (eg `ExampleMod`) and the Serializer's `Batch Scripts` folder
1. Drag and drop `Edits`, from your mod folder, onto the bat file ""
1. Drop the `Edits` folder onto one of the `2 - json to BIN` bat files. The first one is the one you'll use most. The [Serializer readme](https://github.com/ithinkandicode/bloodstained-tools/tree/master/Serializer) has info on the other two
1. There should now be `.bin` files in your `Edits` folder
1. Copy the entire `BloodstainedRotN` folder from `Edits` and paste it into the `PakContents` folder
1. Go back to your main mod folder (`ExampleMod`).
1. Drop the `PakContents` folder onto the bat file #3
  - This will rename the bin file to uasset, and delete the custom JSON and original uasset
  - This bat is different to the one in the Serializer readme, because if you don't follow this exact workflow your json would get permenantly deleted -- I didn't want to risk that happening to anyone :)
1. In your tools window, go to the UnrealPak folder
1. Drop the `PakContents` folder onto `UnrealPak-Without-Compression`
1. This will create your pak file. 
1. Rename your pak as you want and stick it in your `~mods` folder!

_Note: You can check your output files from steps 4, 7 and 10 by comparing them against the original uasset files with a [binary diff program](https://github.com/ithinkandicode/bloodstained-tools/tree/master/Serializer#winmerge)_

## What happens when the game gets updated?

1. Drop the core game's pak file (the huge one, if your on GOG) onto `UnrealUnpak.bat`. This will extract the up-to-date uasset files
1. Alternatively, use umodel ([UE Viewer](https://www.gildor.org/en/projects/umodel)) to perform the extraction. It lets you view models too. If it asks, the engine version is 4.18
1. Both tools should let you unpak mods from Nexus
   
   
## Resources

Serializer readme + editing tool links

- https://github.com/ithinkandicode/bloodstained-tools/tree/master/Serializer

Quick data search

- https://github.com/ithinkandicode/bloodstained-data/tree/master/1.04/DataTable

Item ID lookup

- https://bloodstained.ithinkandicode.com

Enemy ID lookup

- https://docs.google.com/spreadsheets/d/1UtNXwyUHavwV0WJAwQTvIVDrGXZMpPTc8J6JqMHRTAY/edit#gid=0
- http://rixuel.github.io/app/bloodstained.html

Spreadsheets (1.03)

- https://drive.google.com/drive/folders/1-xr8hYqy-uPNjUc31lvsioEyJcOssD_X
- If you have Excel you can download all of them in bulk, as xlsx files
