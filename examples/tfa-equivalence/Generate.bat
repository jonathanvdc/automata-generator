set /a stateCount=%1
set /a alphaSize=%2
set /a acceptCount=%3
set /a replaceAmount=%4
set /a replaceIters=%5

..\..\Automata generate-dfa input1.dfa %stateCount% %alphaSize% %acceptCount% true 1.1-4
..\..\Automata minimize-dfa input1.dfa minimized.dfa
..\..\Automata complicate-dfa minimized.dfa input2.dfa %replaceAmount% %replaceIters%

del minimized.dfa

..\Process.bat
