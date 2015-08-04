set /a stateCount=%1
set /a alphaSize=%2
set /a transCount=%3
set /a minBloat=%4
set /a maxBloat=%5
set /a acceptCount=%random% %% 2 + 1
set /a dfaMinStateCount=4
set /a dfaMaxStateCount=%stateCount% * 2
set /a dfaMaxAcceptCount=acceptCount * 3
set /a dfaMinTransCount=4
set /a dfaMaxTransCount=12

..\..\Automata generate-metrics-enfa input.enfa output.dfa false %stateCount% %alphaSize% %transCount% %acceptCount% %minBloat%-%maxBloat% %dfaMinStateCount%-%dfaMaxStateCount% %dfaMinTransCount%-%dfaMaxTransCount% 1-%dfaMaxAcceptCount%

..\Process.bat
