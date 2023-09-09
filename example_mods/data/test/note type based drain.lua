---@funkinScript

---
--- @param membersIndex int
--- @param noteData int
--- @param noteType string
--- @param isSustainNote bool
---
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if getHealth() > 0.03 then
        if noteType == 'Hurt Note' then
            addHealth(-0.23 * getProperty("healthGain"));
        else
            addHealth(-0.023 * getProperty("healthGain"));
        end
    else
        setHealth(0.02);
    end
    --setSoundVolume(getSoundVolume() - 0.01)
end
