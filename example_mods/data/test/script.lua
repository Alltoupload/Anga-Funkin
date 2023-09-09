---@funkinScript
local t = 0;
--local i = 0;
local indiv = {0, 0};
local imod = true;

local function getNoteOgX(id)
    local notesXTable = {defaultOpponentStrumX0, defaultOpponentStrumX1, defaultOpponentStrumX2, defaultOpponentStrumX3, defaultPlayerStrumX0, defaultPlayerStrumX1, defaultPlayerStrumX2, defaultPlayerStrumX3};
    return notesXTable[id + 1];
end

function onUpdate()
    for i=0,7 do
    if imod then
    indiv = {(math.sin(t + i) * 50), (math.cos(-t - i) * 50)};
    else
    indiv = {0, 0};
    end
    noteTweenX('teg' .. i, i, math.sin(t + 0)*100 + getNoteOgX(i) + indiv[1], 0.001); -- + (math.sin(t + i) * 50)
    noteTweenY('tigger' .. i, i, math.cos(t + 0)*100 + defaultOpponentStrumY0 + indiv[2], 0.001);
    end
    doTweenY('opponentangent', 'dad', defaultOpponentY + math.tan(t / 10), 0.001);
    doTweenY('bftangent', 'boyfriend',defaultBoyfriendY + math.tan(t / 10), 0.001);
    -- setHealth(0.5 + (math.sin(t) * 0.1))
    t = t + 0.01;
end

function onPause()
    imod = not imod;
end