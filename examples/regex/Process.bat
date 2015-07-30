
..\..\Automata regex-to-enfa input.re output.enfa
..\..\Automata ssc output.enfa output_ssc.dfa
..\..\Automata minimize-dfa output_ssc.dfa minimized_ssc.dfa
..\..\Automata graphviz output.enfa output.dot
..\..\Automata graphviz output_ssc.dfa output_ssc.dot
..\..\Automata graphviz minimized_ssc.dfa minimized_ssc.dot
..\..\Automata metrics-dfa output_ssc.dfa output_ssc_metrics.txt

..\Render.bat
