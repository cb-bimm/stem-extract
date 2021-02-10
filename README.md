# stem-extract

Simple BASH script for macOS to extract individual stems from the Session Player files and create a zipped archive.

**Requires FFmpeg::** 
Before running this script make sure that FFmpeg is installed on our system. Download from https://lame.buanzo.org/#lameosx64bitdl
If you are unsure how to install FFmpeg or where to find the session player files, Martin Hibbert explains it very clearly at the beginning of <a href="https://bimmgroup.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=16daffb8-5739-4885-9552-ab9c01155016" target="_blank">this video</a>

## Instructions: 
+ open terminal
+ ```curl -O https://raw.githubusercontent.com/cb-bimm/stem-extract/main/bp-stem-extract.sh```
+ ```chmod +x bp-stem-extract.sh```
+ ```./bp-stem-extract.sh <PATH-TO-FILE>```

PATH-TO-FILE is the location of the session player file that you wish to extract the stems from. The easiest to get this correct is to drag the required file onto the terminal window after you have typed ```./bp-stem-extract.sh``` making sure to leave a space at the end.
The full command will look something like 
```./bp-stem-extract.sh /Users/ciaranbradshaw/Music/SessionPlayerMusic/ever_fallen_in_love_with_someone_s3fm0295_0301.3fm```

## The resulting zip file will be on your desktop with the same name as the input file.
+ The stems are in .aac format 
+ Can be directly imported into Soundtrap

To extract further files just open terminal and run the ```./bp-stem-extract.sh <PATH-TO-FILE>``` command again.


