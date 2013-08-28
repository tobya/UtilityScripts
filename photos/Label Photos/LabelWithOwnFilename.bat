REM batch file to write filename onto the file.
REM cycles through all jpgs in dir and labels with own filename.  Font size is dependant on img size
REM Gray works quite well
REM Change install directory of ImageMagick
REM sub directory LAbeled must exist.
REM origionally inspired by http://stackoverflow.com/questions/4106200/overlaying-an-images-filename-using-imagemagick-or-similar

for /f %%i IN ('dir /b *.jpg') do call "C:\Program Files (x86)\ImageMagick-6.8.6-Q16\convert" %%i -font Arial -pointsize 200 -draw "gravity south fill grey text 0,12 '%%i'" labeled\%%i.jpg