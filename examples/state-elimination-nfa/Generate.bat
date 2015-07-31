set /a stateCount=%1
set /a alphaSize=%2
set /a transCount=%3
set /a acceptCount=%4
set /a dfaMinStateCount=4
set /a dfaMaxStateCount=%stateCount% * %stateCount%
set /a dfaMaxAcceptCount=%acceptCount% * 3
set /a dfaMinTransCount=4
set /a dfaMaxTransCount=20

..\..\Automata generate-metrics-enfa input.enfa output.dfa true %stateCount% %alphaSize% %transCount% %acceptCount% 1-5 %dfaMinStateCount%-%dfaMaxStateCount% %dfaMinTransCount%-%dfaMaxTransCount% 1-%dfaMaxAcceptCount%
del output.dfa

..\Process.bat
