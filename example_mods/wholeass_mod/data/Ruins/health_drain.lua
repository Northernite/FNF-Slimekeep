function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then

    if curStep > 1471 then
        setProperty('health', health- 0.01);
    end
    end
end