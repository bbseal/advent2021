Function Get-Aoc2021Day02Part1 {
    $Puzzle = Get-Content ".\advent2021\day02\input.txt"
    $XPos = 0
    $ZPos = 0
    ForEach ($Line in $Puzzle) {
        $Dir = $Line.Split(" ")[0]
        $Val = $Line.Split(" ")[1].ToInt32($null)
        If ($Dir -match 'forward') {
            $XPos = $XPos + $Val
        }
        ElseIf ($Dir -match 'down') {
            $ZPos = $ZPos + $Val
        }
        ElseIf ($Dir -match 'up') {
            $ZPos = $ZPos - $Val
        }
        Else {
            Write-Warning "Invalid input string."
        }
    }
    Write-Host "XPos = $XPos"
    Write-Host "ZPos = $ZPos"
    Write-Host "XPos * ZPos:  $($XPos * $ZPos)"
}

Function Get-Aoc2021Day02Part2 {
    $Puzzle = Get-Content ".\advent2021\day02\input.txt"
    $XPos = 0
    $ZPos = 0
    $Aim = 0
    ForEach ($Line in $Puzzle) {
        $Dir = $Line.Split(" ")[0]
        $Val = $Line.Split(" ")[1].ToInt32($null)
        If ($Dir -match 'forward') {
            $XPos = $XPos + $Val
            $ZPos = $ZPos + ($Aim * $Val)
        }
        ElseIf ($Dir -match 'down') {
            $Aim = $Aim + $Val
        }
        ElseIf ($Dir -match 'up') {
            $Aim = $Aim - $Val
        }
        Else {
            Write-Warning "Invalid input string."
        }
    }
    Write-Host "XPos = $XPos"
    Write-Host "ZPos = $ZPos"
    Write-Host "Aim = $Aim"
    Write-Host "XPos * ZPos:  $($XPos * $ZPos)"
}

Get-Aoc2021Day02Part1
Write-Host ""
Get-Aoc2021Day02Part2