---@funkinScript
local modchart = true

function onCreatePost()
    makeLuaText("tip", "Pause And Resume to disable and re-enable modcharts", screenWidth, 0.0, 0.0)
    addLuaText("tip")
end

---
--- @param membersIndex integer
--- @param noteData integer
--- @param noteType string
--- @param isSustainNote boolean
---
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    --- @param id integer
    local function getNoteOgX(id)
        local notesXTable = {defaultOpponentStrumX0, defaultOpponentStrumX1, defaultOpponentStrumX2, defaultOpponentStrumX3, defaultPlayerStrumX0, defaultPlayerStrumX1, defaultPlayerStrumX2, defaultPlayerStrumX3}
        return notesXTable[id + 1]
    end

    for i = 0, 7 do
        if not isSustainNote and modchart then
            noteTweenX("for" .. i, i, math.random(0 - (getNoteOgX((i + 4) % 8)), getNoteOgX((i + 4) % 8) * 100) / 100, 0.001, "linear")
            noteTweenX("end" .. i, i, getNoteOgX(i), 2, "expoOut")
            doTweenAngle("lol1", "camHUD", math.random(-18000, 18000) / 100, 0.001, "linear")
            doTweenAngle("lol2", "camHUD", 0, 2, "expoOut")
            doTweenAngle("lol3", "camGame", math.random(-18000, 18000) / 100, 0.001, "linear")
            doTweenAngle("lol4", "camGame", 0, 2, "expoOut")
            noteTweenAngle("lol5" .. i, i, math.random(-18000, 18000) / 100, 0.001, "linear")
            noteTweenAngle("lol520" .. i, i, 0, 2, "expoOut")
            noteTweenDirection("lol6" .. i, i, math.random(-18000, 18000) / 100, 0.001, "linear")
            noteTweenDirection("lol631" .. i, i, 90, 2, "expoOut")
        end
    end
end

function onResume()
    modchart = not modchart
end
