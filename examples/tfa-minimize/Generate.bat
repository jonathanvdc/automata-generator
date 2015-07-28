set /a stateCount=%1
set /a alphaSize=%2
set /a acceptCount=%3

..\..\Automata generate-dfa input.dfa %stateCount% %alphaSize% %acceptCount% true %4-%5
..\..\Automata minimize-dfa input.dfa output.dfa
..\..\Automata graphviz input.dfa input.dot
..\..\Automata graphviz output.dfa output.dot
..\..\Automata metrics-dfa input.dfa input_metrics.txt

..\Render.bat
