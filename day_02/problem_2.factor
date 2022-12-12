USING: io io.files io.encodings.utf8 splitting assocs sequences math kernel prettyprint ;
IN: day-2-problem-2

: shape-points ( game -- number )
    " " split second
    { { "X" 1 } { "Y" 2 } { "Z" 3 } } at ;

: game-points ( game -- number )
    {
        { "B X" 0 } { "C Y" 0 } { "A Z" 0 }
        { "A X" 3 } { "B Y" 3 } { "C Z" 3 }
        { "C X" 6 } { "A Y" 6 } { "B Z" 6 }
    } at ;

: total-points ( game -- number )
    dup game-points swap shape-points + ;

: to-actual-shape ( game -- newgame )
    {
        { "A X" "A Z" } { "B X" "B X" } { "C X" "C Y" }
        { "A Y" "A X" } { "B Y" "B Y" } { "C Y" "C Z" }
        { "A Z" "A Y" } { "B Z" "B Z" } { "C Z" "C X" }
    } at ;

"/home/evan/Desktop/advent_of_code_22/day_2/input.txt"  utf8 file-contents but-last
"\n" split

[ to-actual-shape total-points ] map sum .
