set /a stateCount=%1
set /a alphaSize=%2
set /a acceptCount=%3

..\..\Automata generate-dfa input.dfa %stateCount% %alphaSize% %acceptCount% true 1-1

..\Process.bat
