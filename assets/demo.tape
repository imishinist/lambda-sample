Output assets/demo.gif

Set Theme "Aardvark Blue"
Set Padding 10
Set WindowBar Colorful
Set BorderRadius 10
Set FontSize 22
Set Width 1200
Set Height 720
Set TypingSpeed 80ms

Sleep 2s

Type "docker-compose up -d --build"
Enter
Sleep 5s

Type "docker-compose logs | grep exec"
Enter
Sleep 5s

Type "make build-lambda"
Enter
Sleep 5s

Type "docker-compose logs | grep exec"
Enter
Sleep 15s

