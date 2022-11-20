#npc2
    set countdown 3
    goto #countdown|npc3
quit

#npc3
    msg /tp 477 55 460
    freeze
    tempblock 0 {ex} {ey} {ez}
    delay 1000
    // Set Default position
    set ey 52
    set ex 485
    set ez 456
    // Place Player
    tempblock 26 {ex} {ey} {ez}
    // Keybinds
    definehotkey 1|LEFT
    definehotkey 2|RIGHT
    definehotkey 3|UP
    definehotkey 4|DOWN
quit

#countdown
    // Set Default number
    cpemsg announce {countdown}
    delay 1000
    setadd countdown -1
    if {countdown} 0 goto #{runArg1}
quit

#input
    set left 1
    set right 2
    set up 3
    set down 4


    // Movement Calls (Left, Right, Up, Down)
    // if spam :desolate:
    if runArg1|=|left call #left

    if runArg1|=|right call #right

    if runArg1|=|up call #up

    if runArg1|=|down call #down
quit

#left
    tempblock 0 {ex} {ey} {ez}
    setadd ez -1
    tempblock 26 {ex} {ey} {ez}
quit

#right
    tempblock 0 {ex} {ey} {ez}
    setadd ez 1
    tempblock 26 {ex} {ey} {ez}
quit

#up
    tempblock 0 {ex} {ey} {ez}
    setadd ey 1
    tempblock 26 {ex} {ey} {ez}
quit

#down
    tempblock 0 {ex} {ey} {ez}
    setadd ey -1
    tempblock 26 {ex} {ey} {ez}
quit

