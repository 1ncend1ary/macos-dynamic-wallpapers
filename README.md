# macos-dynamic-wallpapers
Simple scripts to enable dynamic wallpaper functionality on MacOS versions 10.13.6 and earlier.

Tested on:
- 10.13.6

In order to use:
1. Clone this repository or download it as zip to `~/Pictures/Wallpapers`
2. Get 16 wallpapers for different times of day. Rename them as 1.jpeg, 2.jpeg all the way to 16.jpeg. Place them to `~/Pictures/Wallpapers/img`
You can use this image as a reference of what number corresponds to what time of day.
![this image](res/example)
4. Change the latitude and longitude in `getSunrise.sh` to match your geographical location
5. Use launchd to run `getSunrise.sh` every day at 5 AM for example and `dynamic_wallpaper.sh` every 5 minutes. You can use [this website](http://launched.zerowidth.com/) to generate a launchd.plist file.
6. PROFIT
