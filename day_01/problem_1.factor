USING: io io.files io.encodings.utf8 splitting math.parser math.order sequences prettyprint kernel ;

"/home/evan/Desktop/advent_of_code_22/day_1/input.txt"  utf8 file-contents
"\n" split
[ string>number ] map
{ f } split
[ sum ] map
-1 [ max ] reduce . 
