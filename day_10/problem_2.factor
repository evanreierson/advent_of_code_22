USING: kernel io.files io.encodings.utf8 prettyprint sequences
        grouping splitting math math.parser math.statistics ;
IN: day-5


: get-input ( -- code )
    "input.txt" utf8 file-contents ;

: parse-program ( code -- instruction-list )
   " \n" split ;

: execute-program ( instruction-list -- cycle-values )
    [ string>number dup [ ] [ drop 0 ] if ] map
    1 prefix cum-sum ;

: to-rows ( cycle-values -- rows )
    40 group but-last ;

: to-pixels ( row -- pixels )
    40 <iota> [ - ] 2map
    [ abs 2 < [ "#" ] [ "." ] if ] map
    "" join ;

: to-image ( rows -- image )
    to-rows
    [ to-pixels ] map ;


get-input parse-program execute-program to-image .
