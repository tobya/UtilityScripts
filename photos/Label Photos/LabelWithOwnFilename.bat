REM /*************************************************************
REM Copyright © 2012 Toby Allen (http://github.com/tobya)
REM
REM Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, 
REM including without limitation the rights to use, copy, modify, merge, publish, distribute, sub-license, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
REM subject to the following conditions:
REM
REM  The above copyright notice, and every other copyright notice found in this software, and all the attributions in every file, and this permission notice shall be included in all copies or substantial portions of the Software.
REM
REM THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. 
REM IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
REM ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
REM ****************************************************************/


REM batch file to write filename onto the file.
REM cycles through all jpgs in dir and labels with own filename.  Font size is dependant on img size
REM Gray works quite well
REM Change install directory of ImageMagick
REM sub directory LAbeled must exist.
REM origionally inspired by http://stackoverflow.com/questions/4106200/overlaying-an-images-filename-using-imagemagick-or-similar

for /f %%i IN ('dir /b *.jpg') do call "C:\Program Files (x86)\ImageMagick-6.8.6-Q16\convert" %%i -font Arial -pointsize 200 -draw "gravity south fill grey text 0,12 '%%i'" labeled\%%i.jpg
