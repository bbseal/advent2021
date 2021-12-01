Function Get-Aoc2021Day01Part1 {
    $Puzzle = Get-Content ".\advent2021\day01\input.txt"
    $Counter = 0
    $PrevLine = 0
    ForEach ($Line in $Puzzle) {
        If ($Line.ToInt32($null) -gt $PrevLine) {
            $Counter++
        }
        $PrevLine = $Line
    }
    Return $Counter-1
}

Function Get-Aoc2021Day01Part2 {
    $Puzzle = Get-Content ".\advent2021\day01\input.txt"
    $Counter = 0
    $PrevWindowSum = 0
    $i = 2
    Do {
        $WindowSum = $Puzzle[$i].ToInt32($null) + $Puzzle[$i-1].ToInt32($null) + $Puzzle[$i-2].ToInt32($null)
        If ($WindowSum -gt $PrevWindowSum) {
            $Counter++
        }
        $PrevWindowSum = $WindowSum
        $i++
    } Until ($i -ge $Puzzle.Length)
    Return $Counter-1
}

Get-Aoc2021Day01Part1
Get-Aoc2021Day01Part2