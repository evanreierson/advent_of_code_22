USING: io io.files io.encodings.utf8 splitting math math.parser math.order sequences prettyprint kernel ;
IN: day-1-problem-2

: remove-top ( seq -- number newseq )
    dup -1 [ max ] reduce dup [ swap remove ] dip swap ;

"/home/evan/Desktop/advent_of_code_22/day_1/input.txt"  utf8 file-contents
"\n" split
[ string>number ] map
{ f } split
[ sum ] map
remove-top
remove-top
remove-top
drop + + . 

