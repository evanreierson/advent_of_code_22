USING: io io.files io.encodings.utf8 io.encodings.string grouping unicode arrays sets splitting math math.parser math.order sequences prettyprint kernel ;
IN: day-3-problem-2

: to-priority ( char -- num )
dup utf8 decode first swap upper? [ 38 - ] [ 96 - ] if ;

"/home/evan/Desktop/advent_of_code_22/day_3/input.txt"  utf8 file-lines

3 group
[ dup rest swap first [ intersect ] reduce to-priority ] map
sum

