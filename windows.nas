#joinblock
    if joined quit
    if cef|=|true msg Map Theme: https://www.youtube.com/watch?v=lKj266OR7aY
    if cef|=|false msg Aww you don't have CEF Installed.
    set joined 1
    goto #loop
quit


#quiz1
    msg &oJeremaster: &xWhat is this server's name?
    delay msgDelay
    set block1 Classicube for diamondfire
    set block2 Not Awesome 2
    set block3 No name
    call #blocks
quit

#blocks
    msg &oNetherite: &x{block1}
    msg &oEmerald: &x{block2}
    msg &oDiamond: &x{block3}
quit

#winblock
    msg &oJeremaster: &xCorrect!
quit

#loseblock
    msg &oJeremaster: &xIncorrect!
    kill
quit


#joinquiz
    msg &aWarping to quiz...
    msg /tp 504 50 522
    msg &aTalk to Jeremaster to start the quiz!
quit

#hubnpc
    msg &aWarping to hub...
    msg /tp 506 50 505
quit

#loop
    cpemsg bot1 &sRealm by WindowsWhistler
    cpemsg bot2 &sWorld Name: WindowsWhistler+
    cpemsg bot3 &a/goto WindowsWhistler+
    delay 100
    goto #loop
quit

#rewardsnpc
    if hasTalkedToRewards quit
    if DoneQuiz|<|1 quit
    freeze
    msg &aRewards: &xHi there! You have completed the quiz! Here are your rewards!
    delay msgDelay
    item get Key
    msg &aRewards: &xYou have received a key!
    delay msgDelay
    msg &aRewards: &xTo what? I don't know. But you have it now!
    delay msgDelay
    msg &aRewards: &xYou maybe able to use it to open something in the future!
quit

#guide
    cmd tempblock air {MBCoords}
    freeze
    msg &aWelcome to the realm of &bWindowsWhistler!
    delay msgDelay
    msg &aThis is a guide to help you get started on the realm.
    delay msgDelay
    msg &aFirst, you need to know some basic things about joining games from the hub.
    delay msgDelay
    msg &aTo join a game, go to the hub and talk to the NPC of that game.
    delay msgDelay
    msg &aFor example, to join the quiz, talk to the NPC named &bQuiz&a.
    delay msgDelay
    msg &aTo join the parkour, talk to the NPC named &bParkour&a.
    delay msgDelay
    msg &aRight i will let you go now, have fun!
    delay msgDelay
    unfreeze
    delay 1000
    cmd tempblock speech {MBCoords}
quit

#spawnnpc
    msg &aWarping to spawn...
    msg /tp 

#parkournpc
    msg &aWarping to parkour...
    msg /tp 602 100 491
    motd -hax
quit
