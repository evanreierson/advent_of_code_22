USING: io io.files io.encodings.utf8 io.encodings.string unicode arrays sets splitting math math.parser math.order sequences prettyprint kernel ;
IN: day-3-problem-1

: first-compartment ( rucksack -- compartment )
dup length 2 / 0 swap rot subseq ;

: second-compartment ( rucksack -- compartment )
dup length dup 2 / swap rot subseq ;

: to-compartments ( rucksack -- seq )
dup first-compartment swap second-compartment 2array ;

: to-letter ( unicode -- letter )
1array utf8 decode ; 

: find-match ( rucksack -- number )
dup first swap second [ in? ] curry filter first to-letter ;


: to-priority ( char -- num )
dup utf8 decode first swap upper? [ 38 - ] [ 96 - ] if ;

"/home/evan/Desktop/advent_of_code_22/day_3/input.txt"  utf8 file-lines
[ >array to-compartments find-match to-priority ] map sum .

