:: build website and debug web server
start "Jekyll server" cmd.exe /K jekyll server --host 0.0.0.0

:: in gh-pages directory, start command prompt, code, and explorer window
start /D ..\gh-pages "gh-pages" code .
explorer ..\gh-pages

:: in master directory, start command prompt, code, and explorer window
start "master" code -n .
explorer .

:: launch firefox tabs
start "launch tabs" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" -url https://spot1984.github.io/compulsively-creative/index.html -url http://localhost:4000/compulsively-creative/index.html -url http://localhost:4000/compulsively-creative/index-bs.html
