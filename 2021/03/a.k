/ Process input, computing the epsilon/gamma bitmasks
e:~g:(#[B]%2)>+/B:{"1"=x}'0:"input.txt"

/ Convert each to binary and multiply
*/2/'(e;g)

/ Given a boolean matrix and an index, generate the filter indices
I:{&x[;y]=$[~/c:#'^=x[;y]; z; $[(<c)~^c; z; ~z]]}

/ Given a boolean matrix and mode, return filtered number
F:{$[1~#x;x ;F[x@I[x;y;z]; y+1; z]]}

/ Compute answer
*/(2/*)'F[B;0]'!2
