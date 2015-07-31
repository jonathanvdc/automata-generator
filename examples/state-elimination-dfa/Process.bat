
..\..\Automata metrics-dfa input.dfa input_metrics.dfa
..\..\Automata fa-to-regex input.dfa output.re

..\..\Automata graphviz input.dfa input.dot

call ..\Render.bat

..\..\Automata regex-to-enfa output.re temp.enfa
..\..\Automata ssc temp.enfa temp.dfa
..\..\Automata minimize-dfa temp.dfa temp.dfa
..\..\Automata equivalent-dfa input.dfa temp.dfa temp_equivalence.txt

del temp.dfa
del temp.enfa

type temp_equivalence.txt
del temp_equivalence.txt
