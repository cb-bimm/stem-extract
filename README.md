# stem-extract

Simple BASH script for macOS to extract individual stems from the Session Player files and create a zipped archive. There is a little bit of setup required on the first run but after that you will be able to extract the stems from any session player file in less than a minute.

**Requires FFmpeg::** 
Before running this script make sure that FFmpeg is installed on your system. 
+ Download from <a href="https://evermeet.cx/ffmpeg/ffmpeg-4.3.1.zip">here</a>
+ In the finder window press ```⇧ + ⌘ + g``` and go to folder ```/usr/local/bin/```
+ Unzip the downloaded file and drag it over ```/usr/local/bin/``` folder
  + you may need to administrator rights to complete this step
+ Open terminal and copy in the command below
+ ```chmod +x /usr/local/bin/ffmpeg```

**Session Player Files**
Session player files that you have downloaded in the app are typically stored in a folder called ```SessionPlayerMusic``` within your Music folder. ```~/Music/SessionMusicPlayer/``` the files end with the extension ```.3fm``` eg. ```tracks_of_my_tears_s3fm0385_0301.3fm```

## First run instructions: 
+ open terminal
+ ```curl -O https://raw.githubusercontent.com/cb-bimm/stem-extract/main/bp-stem-extract.sh```
+ ```chmod +x bp-stem-extract.sh```
+ ```./bp-stem-extract.sh <PATH-TO-FILE>```\*\*

\*\*PATH-TO-FILE is the location of the session player file that you wish to extract the stems from. The easiest to get this correct is to drag the required file onto the terminal window after you have typed ```./bp-stem-extract.sh``` making sure to leave a space at the end.
The full command will look something like 
```./bp-stem-extract.sh /Users/ciaranbradshaw/Music/SessionPlayerMusic/ever_fallen_in_love_with_someone_s3fm0295_0301.3fm```

## Where's my stems? 
+ The resulting zip file will be on your desktop with the same name as the input file.
+ The stems are in .aac format 
+ These can be directly imported into Soundtrap

## To extract further stems 
Just open terminal and run the ```./bp-stem-extract.sh <PATH-TO-FILE>``` command again.


