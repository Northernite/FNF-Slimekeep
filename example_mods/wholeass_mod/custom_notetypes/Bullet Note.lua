function onStartCountdown()
    for i = 0,getProperty("unspawnNotes.length") - 1 do
        if getProperty('unspawnNotes['..i..'].noteType') == 'Bullet Note' then
            setProperty('unspawnNotes['..i..'].texture', 'BulletNotes')
            setProperty('unspawnNotes['..i..'].noAnimation', true)
            setProperty('unspawnNotes['..i..'].noMissAnimation', true)
            setProperty('unspawnNotes['..i..'].missHealth', 0.8)
            setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false)
            setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.disabled', true)
        end
    end
end

function goodNoteHit(_, d, t)
    if t == 'Bullet Note' then
        playAnim("boyfriend", getProperty("singAnimations")[d + 1]:gsub('sing','dodge'), true)
        setProperty('boyfriend.specialAnim',true)
        soundFadeOut('shot', 0.3, 0)
        playAnim('dad', 'hurt', true)
        setProperty('dad.specialAnim', true)
    end
end

function noteMiss(_, d, t)
    if t == 'Bullet Note' then
        soundFadeOut('shotmiss', 0.8, 0.3)
        playAnim('boyfriend', 'hurt', true)
        setProperty('boyfriend.specialAnim', true)
        playAnim('dad', 'shoot', true)
        setProperty('dad.specialAnim', true)
    end
end