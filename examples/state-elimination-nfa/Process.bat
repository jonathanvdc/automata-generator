
..\..\Automata fa-to-regex input.enfa output.re

..\..\Automata graphviz input.enfa input.dot

call ..\Render.bat

..\..\Automata regex-to-enfa output.re temp.enfa
..\..\Automata ssc temp.enfa temp.dfa
..\..\Automata ssc input.enfa temp2.dfa
..\..\Automata minimize-dfa temp.dfa temp.dfa
..\..\Automata minimize-dfa temp2.dfa temp2.dfa
..\..\Automata equivalent-dfa temp.dfa temp2.dfa temp_equivalence.txt

del temp.dfa
del temp2.dfa
del temp.enfa

type temp_equivalence.txt
del temp_equivalence.txt
