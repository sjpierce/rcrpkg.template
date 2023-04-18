TITLE Delete_nul_file.bat
:: This Windows batch file deletes a file called "nul" that is sometimes left
:: behind by errors rendering Quarto scripts. This should work if the batch
:: file is in the same folder as the "nul" file. You can just double-click 
:: the batch file in Windows Explorer to run it. 

:: https://ss64.com/nt/syntax-args.html shows how to pass command line
:: arguments (parameters) to a Windows batch file. 

:: We need special formatting for the del command because "nul" is a reserved 
:: name in Windows. See https://ss64.com/nt/nul.html and 
:: https://superuser.com/questions/282194/how-do-i-remove-a-file-named-nul-on-windows

ECHO Trying to delete the file %CD%\nul 
del "\\?\%CD%\nul"
ECHO Batch file execution complete.
PAUSE
