..\..\Automata generate-dfa input1.dfa %2 %1 %3 true 1-4
..\..\Automata generate-dfa input2.dfa %4 %1 %5 true 1-4
..\..\Automata rename input1.dfa input1.dfa %6
..\..\Automata rename input2.dfa input2.dfa %6

..\Process.bat
