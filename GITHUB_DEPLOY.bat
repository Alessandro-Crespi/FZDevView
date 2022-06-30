@ECHO OFF
XCOPY C:\Users\ASUS\Desktop\WORK\FINANZ\nova_investor\build . /E /H /C /I /Y
git add --all
set /p msg="Enter commit message"
git commit -m "%msg%"
git push -u origin main
echo All done!
PAUSE > nul
@ECHO ON