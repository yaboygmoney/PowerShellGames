# Global values
$script:character = " " # This holds the character ASCII art
$script:dice = 0        # This holds the current dice value (summed)
$script:money = 100     # How much money the player has
$script:bet = 0         # The current bet amount
$script:rollstreak = 0  # How many rolls of the dice this game has lasted
$script:winstreak = 0   # Winning streak of bets
$script:result = ""     # Value to store if player win/lose their bet
$script:target = "n/a"  # Displays the target roll

function Update-Stats($message) {
    $script:stats = @"
Money: `$$script:money
Current Bet: `$$script:bet
Target: $script:target

Dice Rolls: $script:rollstreak
Win Streak: $script:winstreak
"@

    $script:stats += "`n`n$message"
}
function Write-Gui($message) {
    <#
     # This function displays the banner, the player character, and player stats
     # It will first clear the screen, then print out the above data
     #>
    clear

    # This block displays relevant stats
    Update-Stats $message
    Write-Output @"

    _________  __                           __         _________.__                     __        ________   .__                 
    /   _____/_/  |_ _______   ____   ____ _/  |_      /   _____/|  |__  _____  _______ |  | __    \______ \  |__|  ____   ____ 
    \_____  \ \   __\\_  __ \_/ __ \_/ __ \\   __\     \_____  \ |  |  \ \__  \ \_  __ \|  |/ /     |    |  \ |  |_/ ___\_/ __ \
    /        \ |  |   |  | \/\  ___/\  ___/ |  |       /        \|   Y  \ / __ \_|  | \/|    <      |    \`   \|  |\  \___\  ___/
   /_______  / |__|   |__|    \___  >\___  >|__|      /_______  /|___|  /(____  /|__|   |__|_ \    /_______  /|__| \___  >\___  >
           \/                     \/     \/                   \/      \/      \/             \/            \/          \/     \/
"@
    $character_height = $script:character.Split("`n").length-1
    if ($character_height -gt 1) {
        foreach ($index in 0..$character_height) {
            $a = " "
            $a += $character.Split("`n")[$index] -replace "`n|`r"
            if ($index -gt 0) {
                $a += "`t`t"
                $a += $script:stats.Split("`n")[$index-1] -replace "`n|`r"
            }
            Write-Output "$a"
        }
    }
}

function Select-Character() {
    <#
     # The character selection function. Allows the player to select their character
    #>
$characters = @(
    
@"
    .    .         _________ 
    |\  /|  .    _/       ..)
    \ \/ /  |\  /  O       / 
     \  /   | \/    ______/  
     |  \   | /    /vvvv     
     |   \_/   ==  ^^^^/     
     |  ./     ===   _/      
     |      \ /   _/\ \      
      \     |/  _/   \|      
       \_______/             

"@,@"
         o __________  o     
 _       _/  (       \_  O   
| \_   _/  (   (    0  \     
|== \_/  (   (          |    
|=== _ (   (   (        |    
|==_/ \_ (   (          |    
|_/     \_ (   (    \__/     
         \_ (      _/        
           |  |___/          
          /__/               

"@,@"
          _______            
     ,-~~~       ~~~-,       
    (                 )      
     \_-, , , , , ,-_/       
        / / | | \ \          
        | | | | | |          
        | | | | | |          
       / / /   \ \ \         
       | | |   | | |         
       | | |   | | |         

"@)

    Write-Gui
    $character_height = $characters[0].Split("`n").length-1
    foreach ($index in 0..$character_height) {
        $a = " "
        foreach ($character in $characters) {
            $a += $character.Split("`n")[$index] -replace "`n|`r"
            $a += "`t"
        }
        Write-Output "$a"
    }
    $selection = 1
    do {
        $selection = [int](Read-Host "`n`t   [1] `t`t`t`t [2] `t`t`t`t   [3]`nChoose your character")
    } while ($selection -ne 1 -and $selection -ne 2 -and $selection -ne 3)

    $script:character = $characters[$selection-1]
    Write-Gui
}

function Roll-DiceGUI() {
    $script:rollstreak += 1
    $dicelist = @(0,
@"
+-----+
|     |
|  o  |
|     |
+-----+
"@,@"
+-----+
| o   |
|     |
|   o |
+-----+
"@,@"
+-----+
| o   |
|  o  |
|   o |
+-----+
"@, @"
+-----+
| o o |
|     |
| o o |
+-----+
"@, @"
+-----+
| o o |
|  o  |
| o o |
+-----+
"@, @"
+-----+
| o o |
| o o |
| o o |
+-----+
"@)

    $dice_height = $dicelist[1].Split("`n").length-1

    # 14 was chosen because it lines up the dice below the player character
    foreach ($n in (1..14)) {
        $dice1 = Get-Random -Minimum 1 -Maximum 7
        $dice2 = Get-Random -Minimum 1 -Maximum 7
        $script:dice = $dice1 + $dice2
        if ($n -eq 14) {
            Write-Gui "You rolled a $script:dice!"
        }
        else {
            Write-Gui
        }
        foreach ($index in 0..$dice_height) {
            $a = $dicelist[$dice1].Split("`n")[$index].Trim()
            $b = $dicelist[$dice2].Split("`n")[$index].Trim()
            $tabs = " "*($n) # This makes the dice "roll" to the right
            Write-Output "$tabs$a  $b"
        }
        # 140 milliseconds was chosen because it displays quickly, but doesnt linger
        Start-Sleep -Milliseconds 140
    }
    Write-Host "[enter] to continue..."
    $host.ui.ReadLine()
}
function Place-Bet() {
    $oprompt = $prompt = "[Bet Amount]"
    $script:bet = 0
    while (1) {
        Write-Gui "Shooter place your bet!"
        [int]$script:bet = Read-Host $prompt
        # Change this to have two error messages:
        # One for betting more than you have
        # One for betting 0 or less
        if ($script:bet -gt 0 -and $script:bet -le $script:money) {
            Write-Gui "Shooter, roll the dice!"
            break
        }
        else {
            if ($script:bet -le 0) {
                Write-Gui 
                $prompt = "Cannot place bet less than 0, place bet with value greater than 0`n$oprompt"
            }
            else {
                Write-Gui 
                $prompt = "You do not have enough money to place this bet`n$oprompt"
            }
            
        }
    }
    # Have the current shooter place a bet
    # Check the bet amount against the "script:money"
    # The shooter is either the player or the computer   
}

# This is a custom object that creates two "dice" to roll
$dice = @('One','Two')
$diceValue = 1..12
$script:rolls = foreach ($value in $diceValue) {
         [pscustomobject]@{
             'Rolls' = $dice[$value - 1]
             'Value' = $value
         }
}
function Roll-Dice {
    while (1) {
        $playerRoll = Get-Random -InputObject $script:rolls
        $rollTotalValue = ($playerRoll.Value | Measure-Object -Sum).Sum
        $playerRoll.Roll
        Roll-DiceGUI
        $rollTotalValue = $script:dice
        #Write-Host "You Rolled a $rollTotalValue"

        if ($rollTotalValue -eq 7 -or $rollTotalValue -eq 11) {
            $script:result = "win"
            break
        }
        elseif ($rollTotalValue -eq 2 -or $rollTotalValue -eq 3 -or $rollTotalValue -eq 12) {
            $script:result = "lose"
            break
        }
        else {
            # Previous roll becomes target value
            $script:target = $rollTotalValue
            Write-Gui "Your target is now $script:target"
            Start-Sleep -Milliseconds 1500
            while (1) {
                # Roll again, but now we have to remember the target, and 7 is a losing roll
                $playerRoll = Get-Random -InputObject $script:rolls
                $rollTotalValue = ($playerRoll.Value | Measure-Object -Sum).Sum
                $playerRoll.Roll
                Roll-DiceGUI
                $rollTotalValue = $script:dice
                #Write-Host "You Rolled a $rollTotalValue"

                if ($rollTotalValue -eq 2 -or $rollTotalValue -eq 3 -or $rollTotalValue -eq 7 -or $rollTotalValue -eq 12) {
                    $script:result = "lose" 
                    break
                }
                elseif ($rollTotalValue -eq 11) {
                    $script:result = "win"
                    break
                }
                elseif ($rollTotalValue -eq $script:target) { 
                    Write-Gui "Target roll! Keep rolling!"
                    Write-Host "[enter] to continue..."
                    $host.ui.ReadLine()
                    $script:target = "n/a"
                    break
                }
                else {
                    #Write-Gui "Keep rolling!"
                    #Write-Host "[enter] to continue..."
                    #$host.ui.ReadLine()
                }
            }
            # code goes here
            # Target roll, an inside win, or an inside lose
            if ($rollTotalValue -eq 2 -or $rollTotalValue -eq 3 -or $rollTotalValue -eq 7 -or $rollTotalValue -eq 11 -or $rollTotalValue -eq 12) {
                break
            }
        }
    }
    # Dont display the target after rolling is complete
    $script:target = "n/a"
}

function Resolve-Bet() {
    # Add or subtract the results of the bet from player money
    switch ($script:result) {
        win {
            $script:winstreak += 1
            $script:money += $script:bet*2
            Write-Gui "Lucky Winner! You won `$$($script:bet*2)"
            Write-Host "[enter] to continue..."
            $host.ui.ReadLine()    
        }
        lose { 
            $script:winstreak = 0
            $script:money = ($script:money - $script:bet)
            Write-Gui "Loser! You lost `$$script:bet" 
            Write-Host "[enter] to continue..."
            $host.ui.ReadLine()    
        }
        default {
            Write-Output "Uh-oh. Something weird happened: $script:result"
        }
    }
    # After the win or loss, pay out the bet
    # Put a win-condition in here that first to 500 wins the game
    # $script:bet * 2 = $script:money?
    # Put a lose-condition if you run out of money
    # $script:bet * 0 = $script:moeny?
}

# Write a function called "Win-Check"
# This function should:
# Stop the game with "Congratulations Winner!" if money is 500 or greater
# Stop the game with "Get out!" if money is 0 (or less)
function Win-Check() {
    if ($script:money -ge 500) {
        Write-Gui "Congratulations Winner!"
        Write-Output "Game Over! You Win!"
        $script:run = $False
    }
    elseif ($script:money -le 0){
        Write-Gui "Get Out!"
        Write-Output "Game Over! You Lose!"
        $script:run = $False
    }
}

function Game-Loop() {
    Select-Character
    $script:run = $True
    while($script:run) {
        Place-Bet
        Roll-Dice
        Resolve-Bet
        Win-Check
    }
}

Game-Loop

















# function Roll-Dice ($shooter) {
#     while(True) {
#         if $shooter rolls 7 or 11
#             win
#         elseif $shooter rolls 2,3,12
#             lose
#         else {
#             roll becomes target
#             while(true) {
#                 if $shooter rolls 2,3,7,12:
#                     lose
#                 elseif $shooter rolls 11:
#                     win
#                 elseif $shooter rolls $target:
#                     break back to top
#                 else:
#                     keep rolling
#             }
#         }
#     }
# }
# command to show how much 