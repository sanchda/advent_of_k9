/ Process input, converting to a table of symbol/integer column
T:`a`d`v!{((-1 1 0)@`up`down?d;d:`n$x 0;`i$x 1)}@+" "\'0:"input.txt"

/ Part 01
/ For each symbol, convert to velocity vector, then multiply by durations and sum
+/T.v*((1 0);(0 1);(-1 0))(`down`forward`up)?T.d

/ Part 02
/ Similar idea, except comput the running sum of aim*distance, mask by direction
/ and sum before multiplying with the cumulative forward distance
(+/i*T.v)*+/(T.v*i:`forward=T.d)*+\T.v*T.a
