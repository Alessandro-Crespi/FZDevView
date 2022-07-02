@ECHO OFF
XCOPY C:\Users\ASUS\Desktop\WORK\FINANZ\nova_investor\build . /E /H /C /I /Y
echo ---------------------
echo ADDING CHANGES...
echo ---------------------
git add --all

echo ---------------------
set /p msg="Enter commit message:   "
echo ---------------------
echo COMMITTING...
echo ---------------------
git commit -m "%msg%"
echo ---------------------
echo PUSHING...
echo ---------------------
git push -u origin main
echo ---------------------
echo ALL DONE. Press a key to continue...
echo ---------------------
PAUSE > nul
@ECHO ON