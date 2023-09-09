function onCreatePost()
--[[    for i=0,7 do
        setPropertyFromGroup('opponentStrums', i, 'texture', 'assets/shared/images/pixelUI/NOTE_assets') --Change texture
    end

    for i = 0, getProperty('unspawnNotes.length')-1 do
        if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'assets/shared/images/pixelUI/NOTE_assets'); --Change texture
        end

        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and math.random(0, 2) == 1 then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'assets/shared/images/pixelUI/NOTE_assets'); --Change texture
        end
    end]]
end