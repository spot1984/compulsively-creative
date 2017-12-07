:: drag and drop images onto this batch file to create scaled web images using imagemagick

:: @echo off
setlocal EnableDelayedExpansion

:: loop through all arguments
FOR %%a IN (%*) DO (
	rem create 150x150 thumbnail         *_t.jpg
	magick -define jpeg:size=300x300 %%a -auto-orient -strip -thumbnail "150x150^" -gravity center -extent 150x150 %%~da%%~pa%%~na_t.jpg	

	rem create 150 wide small         *_s.jpg
	magick -define jpeg:size=300x300 %%a -auto-orient -strip -thumbnail "150x150" %%~da%%~pa%%~na_s.jpg	

	rem create 300 wide medium           *m.jpg
	magick -define jpeg:size=600x600 %%a -auto-orient -strip -thumbnail "300x300" %%~da%%~pa%%~na_m.jpg	

	rem create 1024 wide large           *l.jpg
	magick -define jpeg:size=2048x2048 %%a -auto-orient -strip -thumbnail "1024x1024" %%~da%%~pa%%~na_l.jpg	
) 

