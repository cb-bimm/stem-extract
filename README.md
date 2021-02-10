# stem-extract

Simple BASH script for macOS to extract individual stems from the Session Player files and create a zipped archive.

**Requires FFmpeg::** 
Before running this script make sure that FFmpeg has been installed. Download from https://lame.buanzo.org/#lameosx64bitdl

Instructions: 
+ open terminal
+ ```curl https://github.com/cb-bimm/stem-extract/bp-stem-extract.sh```
+ ```chmod +x bp-stem-extract.sh```
+ ```./bp-stem-extract PATH-TO-FILE```

PATH-TO-FILE is the location of the session player file that you wish to extract the stems from. The easiest to get this correct is to drag the required file onto the terminal window after you have typed ```./bp-stem-extract.sh``` making sure to leave a space at the end.
The full command will look something like 
```./bp-stem-extract.sh /Users/ciaranbradshaw/Music/SessionPlayerMusic/ever_fallen_in_love_with_someone_s3fm0295_0301.3fm```
