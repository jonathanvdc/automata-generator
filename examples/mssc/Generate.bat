set /a stateCount=%1
set /a alphaSize=%2
set /a transCount=%3
set /a minBloat=%4
set /a maxBloat=%5
set /a acceptCount=%random% %% 2 + 1
set /a dfaMinStateCount=4
set /a dfaMaxStateCount=%stateCount% * 2
set /a dfaMaxAcceptCount=acceptCount * 3
set /a dfaMinTransCount=6
set /a dfaMaxTransCount=16

..\..\Automata generate-metrics-enfa input.enfa output.dfa false %stateCount% %alphaSize% %transCount% %acceptCount% %minBloat%-%maxBloat% %dfaMinStateCount%-%dfaMaxStateCount% %dfaMinTransCount%-%dfaMaxTransCount% 1-%dfaMaxAcceptCount%
..\..\Automata graphviz input.enfa input.dot
..\..\Automata graphviz output.dfa output.dot
..\..\Automata minimize-dfa output.dfa minimized.dfa
..\..\Automata graphviz minimized.dfa minimized.dot
..\..\Automata metrics-dfa output.dfa output_metrics.txt

..\Render.bat
